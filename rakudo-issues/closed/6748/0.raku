multi trait_mod:<is>(Routine $r, :$peek!) { say "trait: ", ($r.WHY // 'NIL').Str }
#| leading doc
sub a() is peek { }
BEGIN say "BEGIN: ", (&a.WHY // 'NIL').Str;
CHECK say "CHECK: ", (&a.WHY // 'NIL').Str;
