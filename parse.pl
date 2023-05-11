#! /usr/bin/perl

die "Usage: parse.pl input_file output_file\n" if ($#ARGV < 1);

$input_file = $ARGV[0];
$output_file = $ARGV[1];

print "$input_file\n";
print "$output_file\n";

open(INPUT, "<", $input_file) or die "Could not open " . $input_file . "\n";
open(OUTPUT, ">", $output_file) or die "Could not open " . $output_file . "\n";