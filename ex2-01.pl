#!/usr/bin/perl
use strict;
use warnings;

print "radius:";
my $input = <STDIN>;
my $rst	= 2 * 3.14 * $input;

if( $rst < 0 )
{
	print $rst. "to 0";
}
else
{
	print $rst;
}