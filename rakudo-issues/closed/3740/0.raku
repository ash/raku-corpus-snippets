# About 1/5th of the times I run this it will stop outputting to stdout (often times sputtering a bit)

my $proc = Proc::Async.new: 'perl','-E','while(1) { say "y" x 1000; }';
 
react {
    whenever $proc.stdout.lines {
        say "stdout: $_";
    }
    whenever $proc.stderr.lines {
        say "stderr: $_";
    }
    whenever $proc.start {
        say "Exit code: {.exitcode}";
        done;
    }
}
