sub foo(::T $a, Positional[T] $b) {
    dd :$a:$b
}
foo 42, my Int @ = 666;
# :a(42)
# :b(Array[Int].new(666))
