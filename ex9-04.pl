#!/usr/bin/perl
use strict;
use warnings;

use 5.010;
use utf8;

my $inFileName = $ARGV[0];

my $copyFileName = $inFileName;
$copyFileName =~ s/(\.\w+)/\.out/;

open IN, '<', $inFileName or die $!;
open OUT, '>', $copyFileName or die $!;

my $str = "## Copyright (C) 2013 by theo\n";
print OUT $str;

#while (<IN>) {
#	s/Fred/Wilma/gi;
#	s/Wilma/Fred/gi;
#	print OUT $_;
#}
while(<IN>)
{
	chomp;
	s/Fred/\n/gi;
	s/Wilma/Fred/gi;
	s/\n/Wilma/gi;
	print OUT "$_\n";
}

say 'DONE';