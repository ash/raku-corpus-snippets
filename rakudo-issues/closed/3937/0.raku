my %a = :a{:1b};

say %a{"a"};         # {b => 1}
say %a{"a"}:v;       # {b => 1}
say %a{"x"};         # (Any)
say %a{"x"}:v;       # ()
say %a{"a"; "b"};    # (1)
