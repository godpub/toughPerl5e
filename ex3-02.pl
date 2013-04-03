#!/usr/bin/perl
use strict;
use warnings;

my @input = <STDIN>;
my @list = qw(fred betty barney dino wilma pebbles bamm-bamm);

foreach (@input) {
	print $list[$_],"\n";
}