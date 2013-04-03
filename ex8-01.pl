#!/usr/bin/perl
use strict;
use warnings;

while(<STDIN>)
{
	if(/match/)
	{
		print "$`<$&>$'";
	}
}

