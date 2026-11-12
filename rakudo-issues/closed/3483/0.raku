role JSONy {
    multi method from-json (::?CLASS:U: $json) returns ::?CLASS {
        self.new.from-json($json);
    }

    multi method from-json (::?CLASS:D: $json) returns ::?CLASS { ... }
}
