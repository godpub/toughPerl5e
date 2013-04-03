#!/usr/bin/perl
use strict;
use warnings;

my %hash = ("a"=>1, "b"=>2,);
my @k = keys %hash;

$hash{"c"} = "3";

my @v = values %hash;

print "@k","\n";
print "@v","\n";