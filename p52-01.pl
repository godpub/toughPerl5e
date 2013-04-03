#!/usr/bin/perl
use strict;
use warnings;

my @lock;
$lock[0] = 'computer';
$lock[1] = 'bag';
$lock[2] = 'room';
$lock[99] = 'bank';

my $numArray = $#lock;

print $lock[0], $lock[2], $numArray;
print $lock[-1];
print $lock[-2];	#use of uninitialized value
print $lock[-3];	#use of uninitialized value

print '#' x @_ while (5..1);