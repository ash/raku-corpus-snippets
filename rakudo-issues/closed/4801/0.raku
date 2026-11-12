role MyRole {
    method mix-from-meth(::?ROLE $role: $obj is raw) {
        return $obj.^mixin: $role;
    }
}

class C {}

# this works in Rakudo
my $obj1 = C.new;
$obj1.^mixin: MyRole;

note "alive";

# this doesn't
my $obj2 = C.new;
MyRole.mix-from-meth: $obj2;
