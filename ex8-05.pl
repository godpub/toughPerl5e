#!/usr/bin/perl
use strict;
use warnings;

while(<>)
{
	if(/(?<name>\b\w+a\b)(?<after>.{0,5})/)
	{
		print "name : $+{name}\t and : $+{after}\n";
	}
}
