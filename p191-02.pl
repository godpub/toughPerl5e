#!/usr/bin/perl
use strict;
use warnings;

use 5.010;
use utf8;

$_ = "I'm much better\nthan Barney is\nat bowling,\nWilma.\n";

say;

print "Found 'wilma' at start of line\n" if /^wilma\b/im;