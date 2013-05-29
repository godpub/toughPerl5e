#!/usr/bin/perl
use strict;
use warnings;

use 5.010;
use utf8;

print "input your pocket money : ";
chomp(my $input = <STDIN> );

my $msg = 
($input < 100) ? 'you can go home by walk.' :
($input < 1000) ? 'you can drink a paper cup of coffee.' :
($input < 10000) ? 'you can eat a meal at some store.' :
'wow, you are a rich!';

say $msg;