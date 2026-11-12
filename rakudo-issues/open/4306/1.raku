role R1 {
    has $.attr = 42;
}
role R2 does R1 {
    method attr {
        "attr:" ~ $!attr
    }
}
class C does R2 { 
}
