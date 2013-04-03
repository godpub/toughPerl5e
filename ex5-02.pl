#!/usr/bin/perl
use strict;
use warnings;

chomp(my @lines = <STDIN>);
print (((1..9),0)x6);
print "\n";

foreach (@lines) {
	printf "%20s\n", $_;
}


