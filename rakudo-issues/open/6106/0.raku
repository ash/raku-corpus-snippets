
method !run-command-async ($cmd) {

    my $proc;

    my @arr = $cmd.split(/\s+/);

    self!log("effective command", @arr);

    self.console-header("task stdout");

    ($*OUT,$*ERR).map: {.out-buffer = 0};

    $proc = Proc::Async.new(:enc<utf8-c8>,@arr);

    my @stderr;


    react {

        whenever $proc.stdout().lines { # split input on \r\n, \n, and \r 

          my $line = chomp($_);

          my $stdout-lines = 0;

          self.console-wo-prefix($line) unless self.silent-stdout;

          push self.stdout-data, $line;

          #say ‘line: ’, $_#

        }
