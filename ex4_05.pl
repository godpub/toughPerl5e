#!/usr/bin/perl
use strict;
use warnings;

sub greet{
	state @names;
	push @names, shift;

	if( 1 == @names )
	{
		print "Hi @names\! You are the first one here!\n";
	}
	else
	{
		print "Hi $_\! ";
		foreach(0..$#names-1)
		{
			print "$names[$_] ";
		}
	}
}