class Scalarish is Proxy {
    has $!value;

    method new is raw {
        callwith :&FETCH, :&STORE
    }

    my method FETCH() {
        $!value
    }

    my method STORE(Mu $value is raw --> Nil) {
        $!value = $value
    }

    method multiply($times) {
        self.new xx $times
    }

    method sequence($a, $b) {
        (self.new = $a)...(self.new = $b)
    }

    method loop-once {
        do loop (my int $i; $i < 1; $i++) { self.new }
    }

    method reduce(&f, +scalarish) is raw {
        scalarish.reduce: &f
    }
}

proto itemized($ --> Bool:D) {*}
multi itemized(Mu $value is raw) {
    use nqp;
    ?nqp::istype_nd($value.VAR, Scalarish:D)
}
multi itemized(@values is raw) {
    cache @values.map: &itemized
}

put itemized Scalarish.new;
put itemized Scalarish.multiply(2);
put itemized Scalarish.sequence(1, 2);
put itemized Scalarish.loop-once;
put itemized Scalarish.reduce(-> \a, \b { b }, (Scalarish.new = 1), (Scalarish.new = 2));
put itemized (Scalarish.new = 1) Z= (Scalarish.new = 2);
