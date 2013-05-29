#!/usr/bin/perl
use strict;
use warnings;

use 5.010;
use utf8;

my $input = $ARGV[0];
my $curNum = 1;
until ($input < $curNum) {
	say $curNum;
	$curNum++;
}