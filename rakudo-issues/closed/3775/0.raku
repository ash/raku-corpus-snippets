'A{B{C{DD}C}B}A' ~~ /
    (\w) # match a letter
    {}
    :my $L = ~$0; # hold onto it for later

     # recurse the regex
    [｢{｣ <&?BLOCK>? ｢}｣]?

    # print the current value of $L (DEBUG statement)
    { say "expected($0), got($L)" }

    # match the letter we started with
    # "$L" # <-- I want to write this
    "$0"
/;
