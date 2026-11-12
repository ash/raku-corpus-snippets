multi sub ackermann(0, Int $n) {
    $n + 1;
}

multi sub ackermann(Int $m, 0) {
    ackermann $m - 1, 1;
}

multi sub ackermann(Int $m, Int $n) {
    ackermann $m - 1, ackermann $m, $n - 1;
}

say ackermann 3, 4;
