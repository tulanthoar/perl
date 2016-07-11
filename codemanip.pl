#!/usr/bin/env perl
#===============================================================================
#
#         FILE: codemanip.pl
#
#        USAGE: ./codemanip.pl  
#
#  DESCRIPTION: writing appending and reading a file
#
#      OPTIONS: ---
# REQUIREMENTS: Modern::Perl
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Nate (), tulanthoar@gmail.com
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 06/22/2016 10:06:37 PM
#     REVISION: ---
#===============================================================================

use Modern::Perl 2015;
use autodie qw(:all);
use utf8;

use Path::Class;
 # die if problem reading or writing a file

my $dir = dir("/tmp"); # /tmp

my $file = $dir->file("file.txt"); # /tmp/file.txt
my $append = $dir->file("append");
# Get a file_handle (IO::File object) you can write to
my $file_handle = $file->openw();
my $append_handle = $append->open('>>');
my @list = ('a', 'list', 'of', 'lines');
my @appList = ('a', 'list', 'of', 'lines','appneded');

foreach my $line ( @list ) {
    # Add the line to the file
    $file_handle->print($line . "\n");
}
foreach my $line ( @appList ) {
    # Add the line to the file
    $append_handle->print($line . "\n");
}
my $readf = $dir->file("file.txt");

# Read in the entire contents of a file
my $content = $readf->slurp();

# openr() returns an IO::File object to read from
$file_handle = $readf->openr();

# Read in line at a time
while( my $line = $file_handle->getline() ) {
        print $line;
}
