#!/usr/bin/perl
use strict;
use warnings;

my (@inputs, %count);

chomp(@inputs = <STDIN>);

foreach (@inputs) {
	$count{$_} += 1;
}

foreach (sort keys %count) {
	print "$_ count is $count{$_}.\n";
}