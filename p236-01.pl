#!/usr/bin/perl
use strict;
use warnings;

use 5.010;
use utf8;

use CGI qw(:all);

print header("text/plain");

foreach my $param ( param() )
{
	print "$param: ". param($param). "\n";
}