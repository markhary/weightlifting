#! /usr/bin/perl

die "Usage: parse.pl input_file output_file\n" if ($#ARGV < 1);

$input_file = $ARGV[0];
$output_file = $ARGV[1];

open(INPUT, "<", $input_file) or die "Could not open " . $input_file . "\n";
open(OUTPUT, ">", $output_file) or die "Could not open " . $output_file . "\n";

print "parsing file..\n";

$exercise_log = "EXERCISE LOG";

$searching = 1;
while (<INPUT>) {
  chomp;
  next if /^\s*$/; #skip blank lines

  next if ($searching && /^(?:(?!$exercise_log).)*\z/s);
  $searching = 0;
  last if /^#####/;
  print OUTPUT "$_\n";
}

print "done.\n";

close (INPUT);
close (OUTPUT);

exit 0;