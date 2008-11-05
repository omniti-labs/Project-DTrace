self request_rec *r;

ap*::ap_read_request:read-request-entry
/!self->rptr && execname=="httpd"/
{
  self->rptr = arg0;
}
perlxs*:::sub-entry
/self->rptr/
{
  self->func = copyinstr(arg0);
  self->file = copyinstr(arg1);
  self->line = arg2;
}
ap*:::process-request-return
/self->rptr && arg0 == self->rptr/
{
  self->r = 0;
  self->rptr = 0;
}
off-cpu
/self->rptr && self->line > 0/
{
  self->r = self->rptr ? (request_rec *)copyin(self->rptr, sizeof(request_rec)) : NULL;
  self->uri = self->r ? copyinstr((uintptr_t)self->r->uri) : "???";
  self->offtime = timestamp;
}
on-cpu
/self->uri != 0 && self->line > 0 && self->offtime != 0/
{
  printf("%d %s was off CPU for %dus serving %s in %s at %s:%d\n",
         pid, execname,
         (timestamp - self->offtime)/1000,
         self->r ? copyinstr((uintptr_t)self->r->uri) : "???",
         self->func, self->file, self->line);
  self->func = 0;
  self->file = 0;
  self->line = 0;
  self->r = 0;
  self->uri = 0;
  self->offtime = 0;
}
