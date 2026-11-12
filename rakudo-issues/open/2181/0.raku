use v6;

my $value = do {
    my $result = might-throw();
    CATCH {
        default {
            say "Caught exception: ", .^name;
            .resume;
        }
    }
    #my $result = might-throw(); # <-- It works if I move the call to might-throw()
                                 #     after the CATCH { ... }
};

say "got value: ", $value;

sub might-throw() {
    my $var = <0 1>.pick;
    if $var == 0 {
        die "Zero is not good!";
        -1;
    }
    else {
        1;
    }
}
