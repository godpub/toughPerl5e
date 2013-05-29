#!/usr/bin/perl
use strict;
use warnings;

use 5.010;
use utf8;

my $fileName = $ARGV[0];
unless ($fileName =~ /^[A-Z_]\w*$/i) {
	say "the fileName [$fileName] doesn't look like a Perl identifier name.";
}
else
{
	say "the fileName [$fileName] looks like a Perl identifier name.";
}