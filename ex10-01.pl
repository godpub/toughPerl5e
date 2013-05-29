#!/usr/bin/perl
use strict;
use warnings;

use 5.010;
use utf8;

my $rand = int(1 + rand 100);

while(my $input = <STDIN>)
{
	chomp($input);

	my $msg =
		($input < $rand) ? 'small' :
		($input == $rand) ? 'collect' :
		'big';

	say $msg;

	last if $msg eq 'collect';
		
}
