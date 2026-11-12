role Golfy {
    has @.values;
    multi method golf(Golfy:U \SELF: **@values) {
        SELF = SELF.new(:@values);
    }
}

class Golf does Golfy {}

my Golf $var;
try $var.golf(42);
say $! ?? $!.message !! $var.raku;

my Golfy $var2;
try $var2.golf(42);
say $! ?? $!.message !! $var2.raku;
