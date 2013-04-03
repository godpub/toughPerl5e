#!/usr/bin/perl
use strict;
use warnings;

my $meal = 'milk and bread';
my $behave = "He ate $meal";
print $behave, "\n";
$behave = 'He ate '. $meal;
print $behave;

