#!/usr/bin/env perl
#===============================================================================
#
#         FILE: splitting.pl
#
#        USAGE: ./splitting.pl  
#
#  DESCRIPTION: split with custom delimetor
#
#      OPTIONS: ---
# REQUIREMENTS: Modern::Perl
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Nate (), tulanthoar@gmail.com
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 06/22/2016 11:32:50 AM
#     REVISION: ---
#===============================================================================
use 5.012
use Modern::Perl 2015;
use autodie qw(:all);
use utf8;

my $tab_sep_data = "John\tDoe\tmale\t42";
my ($first,$last,$gender,$age) = split(/\t/, $tab_sep_data);
