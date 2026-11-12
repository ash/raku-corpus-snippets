class A { has Hash $.b is rw; method set-b { self.b = %( foo => 1 ); self.b } }; say A.new.set-b
