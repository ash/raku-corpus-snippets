sub hh { EVAL “fail 123” }; sub gg { try hh }; gg; say “All OK”
