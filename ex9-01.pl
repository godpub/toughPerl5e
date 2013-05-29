#!/usr/bin/perl
use strict;
use warnings;

use 5.010;
use utf8;

my $what = 'abba|mama';

my $_ = 'abba..mama.. abbamamamama..amama..mamaabba';

say $& if (/($what){3}/)