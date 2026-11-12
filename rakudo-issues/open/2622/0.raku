class A { has Hash $.b is rw; method set-b { $.b = %( foo => 1 ); self.b } }; say A.new.set-b
