sub infix:<t>($a, $b) { $a * $b }
say '6 t 7'.EVAL;          # works
say '6 t 7'.EVAL if 42;    # works
if 42 {
    say '6 t 7'.EVAL;      # fails, not seeing the "t" op
}
