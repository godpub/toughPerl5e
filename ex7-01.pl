#!/usr/bin/perl
use strict;
use warnings;

my @inputs = <STDIN>;

foreach (@inputs) {
#	if( /[fF][rR][eE][eD]/ )
	if(/fred/i)
	{
		print "$_\n";
	}
}

=pod
while(<@inputs>)
{
	if(/fred/)
	{
		print;
	}
}
=cut