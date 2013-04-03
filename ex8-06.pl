#!/usr/bin/perl
use strict;
use warnings;

while(<STDIN>)
{
	#chomp;
	if(/(w*[\t\f\r ]\n)/)
#	if(/s+$/)
	{
		print "$_ have space. $`\[]\\n\n";
	}
}
