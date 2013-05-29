#!/usr/bin/perl
use strict;
use warnings;

use 5.010;
use utf8;

my @people = qw{ fred barney wilma dino barney pebbles };
my %seen;

foreach (@people) {
	say "I've seen you before. $_!"
	if $seen{$_}++;
}