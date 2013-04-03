#!/usr/bin/perl
use strict;
use warnings;

while(<>)
{
	if(/(?<word>\b\w+a\b)/)
	{
		print "$+{word} in $_\n";
	}
}
