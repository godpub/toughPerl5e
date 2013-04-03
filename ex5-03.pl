#!/usr/bin/perl
use strict;
use warnings;

print 'Enter offset: ';
chomp(my $offset = <STDIN>);

print 'Enter strings (end with ctrl+z) : ';
chomp(my @strings = <STDIN>);

print '1234567890' x (($offset+9)/10), "\n";

foreach (@strings) {
	printf "%${offset}s\n", $_;
}