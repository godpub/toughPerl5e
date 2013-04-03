#!/usr/bin/perl
#use strict;
use warnings;

sub list_from_fred_to_barney{
	if($fred < $barney)
	{
		$fred..$barney;
	}
	else
	{
		reverse $barney..$fred;
	}
}

print "fred:";
$fred = <STDIN>;
print "barney:";
$barney = <STDIN>;
my @c = &list_from_fred_to_barney;
print "@c";