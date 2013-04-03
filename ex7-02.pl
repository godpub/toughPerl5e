#!/usr/bin/perl
use strict;
use warnings;

my @inputs = <STDIN>;
while(<@inputs>)
{
	if(/.*fred.*/i)
	{
		print "$_\n";
	}
}