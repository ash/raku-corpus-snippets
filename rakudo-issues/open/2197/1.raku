with $*TMPDIR.add("meows") { .open(:w).close; my $ = run «perl6 -e "say 42"», :out(.open) }
