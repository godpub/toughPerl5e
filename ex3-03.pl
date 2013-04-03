#!/usr/bin/perl
use strict;
use warnings;

my @input = <STDIN>;

@input = sort @input;
print "@input";