sub foo ( ::T $val ) {
    my T $a is default($val);
}
foo(42);
