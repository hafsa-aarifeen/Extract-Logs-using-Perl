#!/usr/bin/perl
use strict;
use warnings;
use Config::IniFiles;

print "Enter the INI file name: ";
my $ini_file = <STDIN>;
chomp $ini_file;

my $cfg = Config::IniFiles->new(-file => $ini_file) or die "Failed to load INI file: $!";

my $log_file = $cfg->val('Settings', 'log_file');
my $message_pattern = $cfg->val('Settings', 'message_pattern');
my $lines_to_capture = $cfg->val('Settings', 'lines_to_capture');
my $pattern_to_check = $cfg->val('Settings', 'pattern_to_check');
my $output_file = $cfg->val('Settings', 'output_file');

my $inside_section = 0;
my @section = ();

open my $log_fh, '<', $log_file or die "Could not open $log_file: $!";
open my $output_fh, '>', $output_file or die "Could not open $output_file: $!";

while (my $line = <$log_fh>) {
    if ($line =~ /$message_pattern/) {
        $inside_section = 1;
        @section = ();
    } 

    if ($inside_section) {
        push @section, $line;

        if (@section == $lines_to_capture && grep {/$pattern_to_check/} @section && grep {/\b${pattern_to_check}\b/} @section) {
            foreach my $output_line (@section) {
                print $output_fh $output_line;
            }

            @section = ();
            $inside_section = 0;
        }
    }
}

close $log_fh;
close $output_fh;

if (-z $output_file) {
    print "$message_pattern not found in the log file. No lines captured.\n";
} else {
    print "Captured lines have been saved to $output_file\n";
}
