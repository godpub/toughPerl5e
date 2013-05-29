#!/usr/bin/perl
use strict;
use warnings;

#chomp(my $date = `date`);
my $date = localtime;

$^I = ".bak";

while(<>)
{
#	s/[^\[192.168.0.1]/\[192.168.0.3]/;
##oops..
	print;
}
