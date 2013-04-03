#!/usr/bin/perl
use strict;
use warnings;

while(<>)
{
	if(/(\w)\1/)
	{
		print;
	}
}