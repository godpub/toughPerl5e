#!/usr/bin/perl
use strict;
use warnings;

sub getElementNum{
	my($what, @array) = @_;
	foreach (0..$#array) {
		if( $what eq $array[$_] )
		{
			return $_;
		}
	}
	-1;
}

my @list = qw(he want to go home but company dosen\'t);
my $num = &getElementNum('home', @list);
print $num;
