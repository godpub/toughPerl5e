#!/usr/bin/perl
use strict;
use warnings;

use 5.010;
use utf8;

$^I = ".bak";

while(<>)
{
	if(/^#!/)
	{
		$_ .= "## Copyright (C) 2013 by theo\n";
	}
	print;
}

say 'DONE';