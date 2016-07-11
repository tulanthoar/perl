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
sub mysub {
my( $left, $right )=@_;
$left ||= 1.0;
#$left = $left || 1.0;
$right ||= 2.0;
# deal with $left and $right here.
}
