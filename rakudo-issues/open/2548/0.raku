class C {}; multi infix:<~>($a, C) is default {42}; say "test" ~ C.new
