#!/usr/bin/perl
use strict;
use warnings;

use 5.010;
use utf8;

my $debug = $ENV{DEBUG} // 1;

my $rand = int(1 + rand 100);

say $debug;
say "[debug] random num is $rand" if $debug;

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
