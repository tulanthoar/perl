#!/usr/bin/env perl
#===============================================================================
#
#         FILE: rmsignal.pl
#
#        USAGE: ./rmsignal.pl
#
#  DESCRIPTION: an async listener for "TERM" signal
#
#      OPTIONS:
# REQUIREMENTS:
#         BUGS:
#        NOTES:
#       AUTHOR: Nathan Yonkee (), tulanthoar@gmail.com
# ORGANIZATION:
#      VERSION: 1.0
#      CREATED: 12/11/2016 07:04:28 AM
#     REVISION:
#===============================================================================

use Modern::Perl;

use IO::Async::Signal;
 
use IO::Async::Loop;
my $loop = IO::Async::Loop->new;
 
my $signal = IO::Async::Signal->new(
   name => "TERM",
 
   on_receipt => sub {
       print "I caught SIGTERM\n";
   },
);
 
$loop->add( $signal );
 
$loop->run;

