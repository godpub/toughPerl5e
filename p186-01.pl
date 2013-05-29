#!/usr/bin/perl
use strict;
use warnings;

my $str = 'data\secret\203952020395.dat';

my ($r1, $r2, $r3) = $str =~ /.*\\(\S+)\\(\S+)\.(\S+)/;

print "cata: $r1\tfileName: $r2\text: $r3\n";