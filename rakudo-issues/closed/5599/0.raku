enum E <one>;
role R {
    has $.e = one;
    method m() {
        say $!e === one; # False
    }
}
R.new.m;
