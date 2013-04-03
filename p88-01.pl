#!/usr/bin/perl
use strict;
use warnings;

sub chomp{
	print "@_ -\\n";
}

my $temp = "dkfflqkqkdhk 40dlsdmle henr\n";
my $rt = &chomp($temp);
print $rt."\n";
print $temp;
chomp($temp);
print $temp;
print $temp;