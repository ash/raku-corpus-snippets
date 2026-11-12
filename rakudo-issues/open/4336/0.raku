use v6;
print "Input line: ";
my $line = get;
if ($*IN.eof) {
    say "got EOF..";
    say "Reopening STDIN..";
    $*IN.close;
    $*IN = open "/dev/tty", :r, :chomp($*IN.chomp), :nl-in($*IN.nl-in),
        :encoding($*IN.encoding);
    my $line2 = get;
    say "Got line: {$line2}";
}
else {
    say "Not EOF, got line: {$line}";
}
