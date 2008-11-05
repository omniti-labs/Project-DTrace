#!/usr/bin/perl
use strict;
use Getopt::Long qw(:config no_ignore_case pass_through);

my $file = 'ap-flow-cost.out';
my $units = "ms"; # (microseconds)
my $w = 9;
my %umap = ( 'us' => 1,
             'ms' => 1000,
             's'  => 1000000
           );

GetOptions("u=s" => \$units,
           "p=i" => \$w,
           "f=s" => \$file);
die "Bad units '$units' specified\n", unless exists($umap{$units});

my %m = ( 'c' => 'count', 'wc' => 'wall_clock', 'vt' => 'cpu_time' );
my $phase = {};

open(F, "<$file") || die "Cannot open $file\n";
while(<F>) {
  chomp;
  my @f = split /:/;
  if($f[0] =~ /^(m|p)(c|wc|vt)$/) {
    if($1 eq 'p') {
      $phase->{$f[1]}->{$m{$2}} = $f[2];
    }
    else {
      $phase->{$f[1]}->{modules}->{$f[2]}->{$m{$2}} = $f[3];
    }
  }
}
close(F);
(my $space = $units) =~ s/./ /g;
my $tformat = "%26s  %5s $space%${w}s (%${w}s$space) $space%${w}s (%${w}s$space)\n";
my $format  = "%26s  %5d %${w}.3f$units (%${w}.3f$units) %${w}.3f$units (%${w}.3f$units)\n";

my $header = sprintf $tformat, "Phase/Module", "Count",
       "Wall Time", "avg",
       "CPU Time", "avg";
print $header;
$header =~ s/./=/g;
print $header;

foreach(sort keys %$phase) {
  printf $format, "$_ phase:",
         $phase->{$_}->{count},
         $phase->{$_}->{wall_clock} / $umap{$units},
         ($phase->{$_}->{wall_clock} /$umap{$units}) / $phase->{$_}->{count},
         $phase->{$_}->{cpu_time} / $umap{$units},
         ($phase->{$_}->{cpu_time} / $umap{$units}) / $phase->{$_}->{count};
  my $m = $phase->{$_}->{modules};
  foreach(sort keys %$m) {
    printf $format, $_,
           $m->{$_}->{count},
           $m->{$_}->{wall_clock} / $umap{$units},
           ($m->{$_}->{wall_clock} / $umap{$units}) / $m->{$_}->{count},
           $m->{$_}->{cpu_time} / $umap{$units},
           ($m->{$_}->{cpu_time} / $umap{$units}) / $m->{$_}->{count};
  }
  print "\n";
}
