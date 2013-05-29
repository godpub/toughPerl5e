#!/usr/bin/perl
use strict;
use warnings;

my $fileName = 'text.txt';
open FH, $fileName  or die "y? : $!";
#my $lines = join '',<FH>;
my $lines = join '',<FH>;

$lines =~ s/^/$fileName: /gm;
print $lines;

close FH;