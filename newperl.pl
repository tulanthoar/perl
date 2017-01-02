#!/usr/bin/env perl
#===============================================================================
#
#         FILE: newperl.pl
#
#        USAGE: ./newperl.pl
#
#  DESCRIPTION: test template lib
#
#      OPTIONS: none
# REQUIREMENTS: perl5i::2 IO::All Smart::Comments Time::HiRes Text::ParseWord
#               Data::Printer Child
#         BUGS: none
#        NOTES: none
#       AUTHOR: Nathan Yonkee (Nate), tulanthoar@gmail.com
# ORGANIZATION: N/A
#      VERSION: 1.0
#      CREATED: 12/19/2016 12:58:28 AM
#     REVISION: alpha
#===============================================================================

use perl5i::2;
use IO::All;
use Smart::Comments q`###`;
use DateTime::Tiny;
use Time::HiRes qw`gettimeofday tv_interval`;
use Text::ParseWords;
use Data::Printer;
use Child;

my $dt = DateTime::Tiny->now;
my $t0=[gettimeofday];
my $d = io->curdir->absolute;
### --------------------------------
### Running newperl.pl
### From directory: "$d"
### Executed: $dt->as_string
### ________________________________

say q`hello`;

### Elapsed Time: tv_interval ($t0)



