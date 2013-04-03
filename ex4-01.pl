#!/usr/bin/perl
use strict;
use warnings;

sub total{
	my $sum;
	foreach (@_) {
		$sum += $_;
	}

	$sum;
}

my @fred = qw( 1 3 5 7 9 );
my $fred_total = total(@fred);
print "The total of \@fred is $fred_total.\n";

my $from1to1000 = total(1..1000);
print "sum of 1..1000: $from1to1000";