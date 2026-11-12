role A[::RType] {
    method b(RType $foo --> Str) { "String" }
    method a(--> RType) { RType.new; }
}

class B {};

class C does A[B] {}

say C.b(B.new);
say C.a;
