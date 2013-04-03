#!/usr/bin/perl
use strict;
use warnings;

while(<>)
{
	if(/(\b\w*a\b)/)
	{
		print "$`<$&>$'\n";
		print "\$1 in '$1'\n";
	}
	else
	{
		print "No match: $_\n";
	}
}