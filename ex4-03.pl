#!/usr/bin/perl
use strict;
use warnings;

sub getAvrg{
	my $argNum = @_;
	my $sum;
	foreach(@_){
		$sum += $_;
	}

	$sum / $argNum;
}

sub above_average{
	my $avrg = getAvrg(@_);
	my @aboves = ();
	foreach(@_)
	{
		if( $_ > $avrg )
		{
			push @aboves, $_;
		}
	}

	@aboves;
}

my @fred = above_average(1..10);
print "\@fred is @fred\n";

my @barney = above_average(100, 1..10);
print "\@barney is @barney\n";