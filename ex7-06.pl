#!/usr/bin/perl
use strict;
use warnings;

while(<>)
{
	if(/wilma.*fred|fred.*wilma/)
	{
		print;
	}
}