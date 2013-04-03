#!/usr/bin/perl
use strict;
use warnings;

my $envNum = %ENV;

print $envNum;

my $longest;

foreach my $key (keys %ENV) {
	my $length = length($key);
	$longest = $length if( $longest < $length );
}

foreach my $key (keys %ENV) {
	printf "%${longest}s : $ENV{$key}\n", $key;
}