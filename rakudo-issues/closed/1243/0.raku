grammar Number { rule TOP { <[A..Z]>+ } }
say Number.subparse("ABCDE", :pos(4));
# OUTPUT: ｢E｣
