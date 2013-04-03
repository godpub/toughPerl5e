#!/usr/bin/perl
use strict;
use warnings;

$_ = 'I saw fred and barney.';

s/(fred|barney)/\u\L$1/ig; #== \L\u

print;
