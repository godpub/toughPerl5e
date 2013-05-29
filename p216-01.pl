#!/usr/bin/perl
use strict;
use warnings;

use 5.010;
use utf8;

my @words = qw{ fred barney dino wala betty };
my $errors = 0;

foreach(@words)
{
	print "Type the word '$_': ";
	chomp(my $try = <STDIN>);
	if( $try ne $_ )
	{
		say "sorry - that's not";
		$errors++;
		redo;
	}
}

say "you've completed the test, with $errors errors.";