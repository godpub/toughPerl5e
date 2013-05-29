#!/usr/bin/perl
use strict;
use warnings;

use 5.010;
use utf8;

for ($_='time limit'; s/(.)//;) {
	say "[$1]";
}

#for (say '1'; say '2';say '3') {
#	say '4';
#	sleep 1;
#}