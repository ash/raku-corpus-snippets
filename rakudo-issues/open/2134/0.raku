react {
    whenever Supply.interval(1) { say 'interval' }
    whenever $*IN.lines.Supply -> $line { say "line: $line" }
}
