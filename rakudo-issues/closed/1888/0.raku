use NativeCall;
sub kill(int32, int32) is native {*};

my $x = signal(SIGUSR1).Channel;
kill $*PID, 10;
sleep 0.5;
say $x.poll
