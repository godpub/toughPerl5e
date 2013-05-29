#!/usr/bin/perl
use strict;
use warnings;

my $data = 'rk sk ekfk akqk tkdkwk ckzkxk';

my %pair = ($data =~ m#(\w+)\s+(\w+)#g);

foreach my $key (sort keys %pair) {
	print "$key => $pair{$key}\n";
}