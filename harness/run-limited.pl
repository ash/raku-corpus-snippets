#!/usr/bin/perl
# run-limited.pl SECONDS COMMAND [ARGS…]
#
# Runs COMMAND in a process group of its own. After SECONDS the whole group is
# killed and the exit status is 142 (128 + SIGALRM), which is what the
# raku-corpus harness has always reported for a timeout. When COMMAND ends on
# its own, anything it left running in its group is killed as well.
#
# The second half is why this exists. raku-corpus ran a program as
# `perl -e 'alarm N; exec …'`, so the alarm reached only the program itself.
# The snippets from rakudo/rakudo#5732 and #5733 write a `runme.raku` and start
# it as a child. When the alarm took the parent, the children were reparented
# to launchd and kept two cores busy for an hour.
#
# Exit status: COMMAND's own, or 128 + the signal that ended it, the same
# numbers a shell reports. 127 means COMMAND could not be started.
use strict;
use warnings;
use POSIX ();

my $secs = shift @ARGV;
die "usage: run-limited.pl SECONDS COMMAND [ARGS…]\n" unless defined $secs && @ARGV;

my $pid = fork // die "fork: $!\n";
if (!$pid) {
    setpgrp(0, 0);
    exec { $ARGV[0] } @ARGV or POSIX::_exit(127);
}
setpgrp($pid, $pid);    # also from this side, so the kill below cannot race the child's own call

my $timed_out = 0;
local $SIG{ALRM} = sub { $timed_out = 1; kill 'KILL', -$pid };
alarm $secs;
my $r;
do { $r = waitpid($pid, 0) } while $r == -1 && $!{EINTR};
my $status = $?;
alarm 0;
kill 'KILL', -$pid;     # whatever the program left behind in its group

exit 142 if $timed_out;
exit(($status & 127) ? 128 + ($status & 127) : $status >> 8);
