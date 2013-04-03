#!/usr/bin/perl
use strict;
use warnings;

print "Enter your Age: ";
chomp(my $age = <STDIN>);

print $_ ."\n" for($age..77);
