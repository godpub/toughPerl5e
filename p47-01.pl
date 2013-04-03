#!/usr/bin/perl
use strict;
use warnings;

my $madonna = <STDIN>;
if( defined($madonna) )
{
	print "Input was :$madonna";
}
else
{
	print "input unvaliable";	#when?
}