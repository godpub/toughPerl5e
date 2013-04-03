#!/usr/bin/perl
use strict;
use warnings;

$_ = 'if you say so, my answer is No!';

s/No/Yes/;

print "$_\n";

s/my (\w+)/your $1 and wish/;

print "$_\n";
