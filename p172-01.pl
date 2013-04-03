#!/usr/bin/perl
use strict;
use warnings;

if( "hello there, neighbor" =~ m/\s(\w+),/)
{
	print "that was ($`)($&)($')\n";
	print "Matched : |$`<$&>$'|\n";
}
