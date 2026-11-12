for
    comb => (/\w+/),
    split => ('/'),
    words => (),
    lines => (),
    slurp => ()
{
    $++ and print "\n";
    say .key;

    my $close = True;  # Set to False and the bug disappears
    my $proc = run(</bin/false>, :out);
    my $output = $proc.out."{.key}"(|@(.value), :$close);
    my $rc = $proc.exitcode;

    note "RC $rc  OUT '$output'";

    CATCH {
        when X::Proc::Unsuccessful {
            note .message;
            next;
        }
    }
}
