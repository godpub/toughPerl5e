#!/usr/bin/perl
use strict;
use warnings;

my $a = 0;
my $b = '';
my $c = '0';

print <<END_TXT;
my $a = 0
my $b = ''
my $c = '0'
END_TXT

print '$a == $b:', $a == $b, "\n";
print '$a eq $b:', $a eq $b, "\n";
print '$b == $c:', $b == $c, "\n";
print '$b == $c:', $b eq $c, "\n";

sleep(10);