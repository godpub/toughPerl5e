#!/usr/bin/perl
use strict;
use warnings;
use 5.010;
use Data::Dumper;

sub greet{
	state @names;
	push @names, shift;
	print Dumper(@names);

	print "Hi $names[0]\! You are the first one here\n";
	foreach(1..$#names){
		print "Hi $names[$_]\! $names[$_-1] is also here!\n";
	}
}

greet('Fred');
greet('Barney');