#!/usr/bin/perl
use strict;
use warnings;
use 5.010;

sub greet{
	state @names;
	push @names, shift;

	if( 1 == @names )
	{
		print "Hi @names\! You are the first one here!\n";
	}
	else
	{
		print "Hi $names[-1]\! I've seen: ";
		foreach(0..$#names-1)
		{
			print "$names[$_] ";
		}
		print "\n";
	}
}

sub greet{
	state @names;

	my $name = shift;

	print "Hi $name\!! ";
	if(@names)
	{
		print "I've seen: @names\n";
	}
	else
	{
		print "You are the first one here!\n";
	}

	push @names, $name;
}

greet("Fred");
greet("Barney");
greet("Wilma");
greet("Betty");