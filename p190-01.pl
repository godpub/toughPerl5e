#!/usr/bin/perl
use strict;
use warnings;

$_ = 'I thought you said Fred and <BOLD>velma</BOLD>, not <BOLD>wilma</BOLD>';

#s#<BOLD>(.*o)</BOLD>#$1#g;
s/Fred/ffredd/;
s#<BOLD>(.*?)</BOLD>#$1#g;

print;