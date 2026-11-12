with $*TMPDIR.add("meows") { .open(:w).close; my $ = run «perl6 -e "note 42"», :err(.open) }
