#!/usr/bin/perl
use strict;
use warnings;

while(<>)
{
	if(/a\b/)
	{
		print "$& at $_\n";
	}
}
