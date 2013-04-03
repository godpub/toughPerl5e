#!/usr/bin/perl
use strict;
use warnings;

my %Origin_hash = ('rk', 1, 'sk', 2, 'ek', 3, 'ak', 4, 'qk', 5, 'qk', 6, 'tk', 7,);

print %Origin_hash, "\n";

print $Origin_hash{"ek"};

my %Reverse_hash = reverse %Origin_hash;

print $Reverse_hash{"3"};
