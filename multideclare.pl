#!/usr/bin/env perl
#===============================================================================
#
#         FILE: multideclare.pl
#
#        USAGE: ./multideclare.pl  
#
#  DESCRIPTION: declare two variables at once
#
#      OPTIONS: ---
# REQUIREMENTS: Modern::Perl
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Nate (), tulanthoar@gmail.com
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 06/22/2016 02:47:24 AM
#     REVISION: ---
#===============================================================================

use Modern::Perl 2015;
use autodie qw(:all);
use utf8;

my ($first,$last)=qw( John Doe );
print "first is '$first'\n";
print "last is '$last'\n";
my $fullname = 'mud' . 'bath';
my $line = '-' x 80; # $line is eighty hypens;
my $len = length($line); # $len is 80;
my $chunk = substr('the rain in spain', 9, 2);
warn "chunk is '$chunk'";
