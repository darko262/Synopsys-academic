#!/usr/bin/perl
use strict;
use warnings;
use File::Spec;

sub print_subtree {
    my $dir = shift;
    my $indent = shift || '';  # Optional parameter for indentation

    opendir(my $dh, $dir) or die "Unable to open directory $dir: $!\n";
    my @files = readdir($dh);
    closedir($dh);

    foreach my $file (@files) {
        next if $file eq '.' or $file eq '..';

        my $path = File::Spec->catfile($dir, $file);
        print "$indent$file\n";

        if (-d $path) {
            # If it's a directory, recursively call print_subtree
            print_subtree($path, "$indent  ");
        }
    }
}

# Check if the directory argument is provided
if (@ARGV < 1) {
    die "Usage: $0 <directory>\n";
}

# Get the directory from the command line arguments
my $directory = $ARGV[0];

# Call the recursive function to print the subtree
print_subtree($directory);
