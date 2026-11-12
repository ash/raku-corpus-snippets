multi p(:$foo) { 0 };
multi p(:$foo, :$bar) { 47 };

p(:foo(42), do :bar if True)
