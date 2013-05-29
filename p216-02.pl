#!/usr/bin/perl
use strict;
use warnings;

use 5.010;
use utf8;

foreach (1..10) {
	say "Iteration number $_.";
	print "please choose, last, next, redo, or non of the above? ";
	chomp(my $choice = <STDIN>);
	print "\n";
	last if $choice =~ /last/i;
	next if $choice =~ /next/i;
	redo if $choice =~ /redo/i;
	say "That wasn't any of the choices... onward!";
}

say "That's all, folks!";