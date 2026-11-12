class C {
    has $.ok;

    multi method new(Int $i) {
         # validate int ...
         self.bless: :ok($i);
     }

    multi method new(Str $s) {
        # validate string or extract value, etc..
        self.bless: :ok($s);
    }
}
