$ RAKUDO_RAKUAST=1 raku -e 'class A { has %.a is Set }; say A.new(:a(1,2,3)).a; dd set().keys'
Set(1 2 3)
(3, 2, 1).Seq
