my %h1      = :foo, :bar; say %(%h1,);  # OUTPUT: «{bar => True, foo => True}␤»
my %h2{Any} = :foo, :bar; say %(%h2,);  # OUTPUT: «{Str|bar => bar => True, Str|foo => foo => True}␤»
