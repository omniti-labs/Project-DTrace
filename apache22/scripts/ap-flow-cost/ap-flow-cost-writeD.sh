#!/bin/sh

set -- `getopt P:w $*`
for i in $*
do
  case $i in
    -P)     predicate="/progenyof($2)/"; shift 2; ;;
    -d)     shift; break;;
    --)     shift; break;;
    esac
done

cat <<START
#pragma D option quiet

START

for func in `dtrace -Pap* -l | \
		grep dispatch-invoke | \
		awk '{print $4;}' | sort | uniq`
do
  name=`echo $func | sed -e 's/^.*_run_//;'`
  vname=`echo $name | sed -e 's/-/_/g;'`
  cat <<EOS
ap*::$func:$name-entry
$predicate{
  @phase["$name"] = count();
  self->${vname}_starttime = timestamp;
  self->${vname}_vstarttime = vtimestamp;
}
ap*::$func:$name-dispatch-invoke
$predicate{
  self->module = copyinstr(arg0);
  self->m_starttime = timestamp;
  self->m_vstarttime = vtimestamp;
  @module["$name", self->module] = count();
}
ap*::$func:$name-dispatch-complete
/self->module != 0/
{
  @module_wc["$name", self->module] = sum(((timestamp < self->m_starttime) ? 0 : (timestamp - self->m_starttime))/1000);
  @module_vt["$name", self->module] = sum(((vtimestamp < self->m_vstarttime) ? 0 : (vtimestamp - self->m_vstarttime))/1000);
  self->module = 0;
  self->m_starttime = 0;
  self->m_vstarttime = 0;
}
ap*::$func:$name-return
/self->${vname}_starttime/
{
  @phase_wc["$name"] = sum(((timestamp < self->${vname}_starttime) ? 0 : (timestamp - self->${vname}_starttime))/1000);
  @phase_vt["$name"] = sum(((vtimestamp < self->${vname}_vstarttime) ? 0 : (vtimestamp - self->${vname}_vstarttime))/1000);
  self->${vname}_starttime = 0;
  self->${vname}_vstarttime = 0;
}
EOS
done

cat <<REST
END{
  printa("pc:%s:%@d\n", @phase);
  printa("pwc:%s:%@d\n", @phase_wc);
  printa("pvt:%s:%@d\n", @phase_vt);
  printa("mc:%s:%s:%@d\n", @module);
  printa("mwc:%s:%s:%@d\n", @module_wc);
  printa("mvt:%s:%s:%@d\n", @module_vt);
}
REST

