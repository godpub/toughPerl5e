#!/usr/bin/perl
use strict;
use warnings;

print "first:";
chomp(my $input1 = <STDIN>);
print "second:";
chomp(my $input2 = <STDIN>);

print "$input1 * $input2 = ", $input1 * $input2;
