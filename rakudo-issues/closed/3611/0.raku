proto sub foo(Int:D, uint32) {*}
multi sub foo(0;; uint32)    { say 'ok' }
foo 0, my uint32 $ = 1;
