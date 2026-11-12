class A {
    has uint8 $.i = 0xFF;
    method ii { my uint8 $ = $!i }
}

say "{.i} {.ii}" given A.new; # expected: 255 255
                              # got: -1 255
