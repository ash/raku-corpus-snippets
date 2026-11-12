my int $c = 0; sub s($s) { $c++; $s.chars }; say (^100).Array.max(&s); say $c
