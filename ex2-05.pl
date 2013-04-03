#!/usr/bin/perl
use strict;
use warnings;

print "first string:";
my $input1= <STDIN>;
print "second n times:";
chomp(my $input2= <STDIN>);

print $input1 x $input2;