class A {
    has $.b = 42;
    method bb() { $.b = 666; }
}
my $A = A.new;
$A.bb;
dd $A.b;  # 42
