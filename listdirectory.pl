#!/usr/bin/env perl
#===============================================================================
#
#         FILE: listdirectory.pl
#
#        USAGE: ./listdirectory.pl
#
#  DESCRIPTION: simple ls for only showing files
#
#      OPTIONS: ---
# REQUIREMENTS: Modern::Perl
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Nate (), tulanthoar@gmail.com
# ORGANIZATION:
#      VERSION: 1.0
#      CREATED: 06/22/2016 09:57:43 PM
#     REVISION: ---
#===============================================================================

use Modern::Perl;
use utf8;
use Path::Class;

my $dir = dir('/','home','ant'); # foo/bar

# Iterate over the content of foo/bar
while (my $file = $dir->next) {
    # See if it is a directory and skip
    next if $file->is_dir();
    # Print out the file name and path
    say $file->stringify;
}
