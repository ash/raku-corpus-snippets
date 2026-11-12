class A {
    method Str { self }
}
multi infix:<~>(Str() $a, A $b) { "B" }
say "A: " ~ A;  #  B
