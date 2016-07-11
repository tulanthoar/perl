#!/usr/bin/env perl
#===============================================================================
#
#         FILE: reverse_lines.pl
#
#        USAGE: ./reverse_lines.pl
#
#  DESCRIPTION: reverse lines example
#
#      OPTIONS: ---
# REQUIREMENTS: Modern::Perl
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Nate (), tulanthoar@gmail.com
# ORGANIZATION:
#      VERSION: 1.0
#      CREATED: 06/30/2016 03:07:55 PM
#     REVISION: ---
#===============================================================================
use Modern::Perl;

use Modern::Perl 2015;
use autodie qw(:all);
use utf8;
while (<<>>) {
        chomp;
        say scalar reverse;
    }
