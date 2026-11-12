multi p(:$foo, *% where $foo == 0) { 0 };
multi p(:$foo, :$bar) { 47 };

say p(foo => 42, do :bar if True);
