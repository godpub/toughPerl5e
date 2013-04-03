#!/usr/bin/perl
use strict;
use warnings;

my %nameCard = ('fred' => 'vmfpem', 'barney' => 'qksl', 'wilma' => 'dnlfak',);

print 'Enter last name:';
chomp(my $name = <STDIN>);

print "first name is $nameCard{$name}.";
