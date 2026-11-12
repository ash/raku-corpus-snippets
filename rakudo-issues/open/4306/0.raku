role R { has $.attr = 42; }
class C does R {
    method attr {
        "attr:" ~ $!attr
    } 
}
