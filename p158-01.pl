#!/usr/bin/perl
use strict;
use warnings;

print "Would you like to play a game?";
chomp($_ = <STDIN> );
if(/yes/i)
{
	print "In that case, play outside now.";
}