#!/usr/bin/perl
use strict;
use warnings;

$_ = '::abd:ab:bc:ca:a:b:c:::';
my @args = split /:/,;
print "@args";
my $rt = join '+', @args;
print "$rt";