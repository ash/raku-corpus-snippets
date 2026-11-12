class C { };

my \px = C.new;

sub postcircumfix:«< >»(C $c is raw) {
    dd $c;
}

px<ls -l>;
