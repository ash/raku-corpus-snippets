
role C {
    method !foo { ... }
    method bar() { self!foo for ^1000000 }
}

class A does C {
    method !foo { 42 }
}

class B {
    method !foo { 42 }
    method bar() { self!foo for ^1000000 }
}

my $then;

$then = now;
A.bar;
my $role = now - $then;

$then = now;
B.bar;
my $class = now - $then;

say "role is { sprintf "%.2fx", $role / $class } slower"
