for ^1000 {
    say $_;
    my $proc = Proc::Async.new: :w, ‘sleep’, 0.1;
    react {
        whenever $proc.start { done }
        whenever signal(SIGTERM) {}
        whenever Promise.in(5) {}
    }
}
