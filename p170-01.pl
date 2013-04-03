#!/usr/bin/perl
use strict;
use warnings;

use 5.010;

while(<>)
{
#	if( $_ =~ m/(?<userA>\w+) (?:get|drop) (?<itemA>\w+)/)
	if( m/(?<userA>\w+) (?:get|drop) (?<itemA>\w+)/)
	{
		print "$+{userA} - $+{itemA}\n";
	}
}