#!/usr/bin/env perl
#===============================================================================
#
#         FILE: evtest.pl
#
#        USAGE: ./evtest.pl
#
#  DESCRIPTION: just a test of AnyEvent::Subprocess
#
#      OPTIONS: none
# REQUIREMENTS: perl5i::2 IO::All Smart::Comments Time::HiRes Text::ParseWord
#               Data::Printer Child
#         BUGS: none
#        NOTES: none
#       AUTHOR: Nathan Yonkee (Nate), tulanthoar@gmail.com
# ORGANIZATION: N/A
#      VERSION: 1.0
#      CREATED: 12/26/2016 09:33:18 AM
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
### Running evtest.pl 
### From directory: "$d"
### Date: $dt->as_string
### ________________________________

        use AnyEvent::Subprocess;

        # prepare the job
        my $job = AnyEvent::Subprocess->new(
            delegates     => ['StandardHandles'],
            on_completion => sub { die 'bad exit status' unless $_[0]->is_success },
            code          => sub {
                my %args = %{$_[0]};
                while(<>){
                    print "Got line: $_";
                }
                exit 0;
            },
        );

        my $ojob = AnyEvent::Subprocess->new(
            delegates     => ['StandardHandles'],
            on_completion => sub { die 'bad exit status' unless $_[0]->is_success },
            code          => sub {
                my %args = %{$_[0]};
                while(<>){
                    print "Intercepted line: $_";
                }
                exit 0;
            },
        );

        # start the child
my $run = $job->run;
        my $orun = $ojob->run;

        # add watcher to print the next line we see on the child's stdout
        $run->delegate('stdout')->handle->push_read( line => sub {
            my ($h, $line) = @_;
$orun->delegate('stdin')->handle->push_write("${line}\n");
        });

        $orun->delegate('stdout')->handle->push_read( line => sub {
            my ($h, $line) = @_;
            say "The child said: $line";
        });
        # write to the child's stdin
        $run->delegate('stdin')->handle->push_write("Hello, world!\n");

        # close stdin after it has been written to the child
        $run->delegate('stdin')->handle->on_drain(sub { $_[0]->close_fh });

        # kill the child if it takes too long to produce a result
        my $killer = AnyEvent->timer( after => 4, interval => 0, cb => sub {
           $run->kill(2); # SIGINT.
        });

        # ensure the event loop runs until the on_completion handler dies
        EV::loop(); # you can use any AnyEvent-compatible event loop, including POE

        # eventually prints "The child said: Got line: Hello, world!", or
        # perhaps dies if your system is really really overloaded.

### Elapsed Time: tv_interval ($t0)



