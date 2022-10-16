#!/usr/bin/perl
use strict;

my $datetime = "2016-04-11 20:59:03";

$datetime =~ /([^ ]+) ([^ ]+)/;

my $date = $1;
my $time = $2;

print $date."\n".$time."\n";   

 
