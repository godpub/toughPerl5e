#!/usr/bin/perl
use strict;
use warnings;

use 5.010;
use utf8;

my $inFileName = $ARGV[0];

#$inFileName = 'sadg.txt';

my $copyFileName = $inFileName;
$copyFileName =~ s/(\.\w+)/\.out/;

#say $copyFileName;

open IN, '<', $inFileName or die "$!";
open OUT, '>', $copyFileName or die "$!";

while(<IN>)
{
	s/Fred/Larry/gi;
	print OUT $_;
}

#$^I = ".out";
