#!/usr/bin/env perl
#===============================================================================
#
#         FILE: timer.pl
#
#        USAGE: ./timer.pl
#
#  DESCRIPTION: time an system
#
#      OPTIONS: none
# REQUIREMENTS: perl5i::2 IO::All Smart::Comments Time::HiRes Text::ParseWord
#               Data::Printer Child
#         BUGS: none
#        NOTES: none
#       AUTHOR: Nathan Yonkee (Nate), tulanthoar@gmail.com
# ORGANIZATION: N/A
#      VERSION: 1.0
#      CREATED: 12/28/2016 02:28:50 PM
#     REVISION: alpha
#===============================================================================

use perl5i::2;
use IO::All;
use Smart::Comments q`###`;
use DateTime::Tiny;
use Time::HiRes qw`gettimeofday tv_interval`;

my $dt = DateTime::Tiny->now;
my $d = io->curdir->absolute;
### --------------------------------
### Running timer.pl
### From directory: "$d"
### Date: $dt->as_string
### ________________________________

my $t0=[gettimeofday];
for my $rep (1..2000){
    `$ARGV[0]`
}
say tv_interval($t0);
### Elapsed Time: tv_interval ($t0)



