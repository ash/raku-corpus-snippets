sub a(Str $s, Int $i, Int $n = 50) { say $s.chars < $i + $n }; my &b = &a.assuming(*, 4); b("sdf")
