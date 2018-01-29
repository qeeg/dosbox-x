#!/usr/bin/perl

my @t = localtime();
my $sec =  $t[0];
my $min =  $t[1];
my $hour = $t[2];
my $mday = $t[3];
my $mon  = $t[4] + 1;
my $year = $t[5] + 1900;

my @months = qw( Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec );

my $tmp = sprintf("%s %u, %u %u:%02u:%02u%s",$months[$mon-1],$mday,$year,(($hour + 11) % 12) + 1,$min,$sec,$hour >= 12 ? "pm" : "am");

print "/*auto-generated*/\n";
print "#define UPDATED_STR \"$tmp\"\n";
