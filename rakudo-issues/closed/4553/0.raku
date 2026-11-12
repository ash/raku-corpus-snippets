sub f ($a, $b = 2) {
    $a + $b;
}
say &f.assuming(1).signature.params[0].default.defined;
# False
say &f.assuming(1)();
# Use of Nil in numeric context
# ...
# 1
