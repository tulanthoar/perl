#!/usr/bin/env perl
#===============================================================================
#
#         FILE: template.pl
#
#        USAGE: ./template.pl
#
#  DESCRIPTION: template with use pragmas
#
#      OPTIONS: ---
# REQUIREMENTS: Modern::Perl
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Nate (), tulanthoar@gmail.com
# ORGANIZATION:
#      VERSION: 1.0
#      CREATED: 06/22/2016 02:38:47 AM
#     REVISION: ---
#===============================================================================

use 5.024;
use Modern::Perl 2015;
use autodie qw(:all);
use utf8;

use Data::Dumper;
my $var1 = abs(-3.4);
say $var1;
my $price = 9.95;
say $price;
my $dollars = int ($price);
say $dollars;
$dollars = sprintf("%.0f", $price);
say $dollars
