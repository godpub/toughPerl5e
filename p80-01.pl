#!/usr/bin/perl
use strict;
use warnings;

sub max{
	if( @_ < 2 )
	{
		print "WARNING! need 2 arg at least!";
		return -1;
	}

	my ($highest) = shift @_;
	foreach (@_) {
		if( $_ > $highest )
		{
			$highest = $_;
		}
	}
	return $highest;
}

print 'input nums:';
my @input = <STDIN>;

my $high = &max(@input);
print $high;
