print Q:qq:ww{1 :a(1)};   # 1 a 1
print Q:qq:ww{:a(1) 1};   # a 1 1
print Q:qq:ww{:a(1)};     # no output
print Q:qq:ww:v{:a(1)};   # a 1

say Q:qq:ww{1 :a(1)};  # (1 a => 1)
say Q:qq:ww{:a(1) 1};  # (a => 1 1)
say Q:qq:ww{:a(1)};    # no output
say Q:qq:ww:v{:a(1)};  # a => 1

sub x(|c) { dd c }
x Q:qq:ww{1 :a(1)};   # \(("1", :a(1)))
x Q:qq:ww{:a(1) 1};   # \((:a(1), "1"))
x Q:qq:ww{:a(1)};     # \(:a(1))
x Q:qq:ww:v{:a(1)};   # \("a" => 1)

say Q:qq:ww{:a(1)}[0].WHICH;    # Pair|58DC55B1E331A3A1108FC8FAF6318E1B8ACC72A8
say Q:qq:ww:v{:a(1)}[0].WHICH;  # Pair|58DC55B1E331A3A1108FC8FAF6318E1B8ACC72A8
