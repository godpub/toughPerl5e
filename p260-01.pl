#!/usr/bin/perl
use strict;
use warnings;

use 5.010;
use utf8;

use Cwd;

print "Hello, World...\n";

my $basePath = getcwd;
say $basePath;

my $dir_to_process = "D:/dropbox";
opendir DH, $dir_to_process or die "Cannot open $dir_to_process: $!";
foreach my $file (readdir DH)
{
	print "one file in $dir_to_process is $file\n";
}
closedir DH;
