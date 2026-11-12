role Foo { has $.a };
role Bar { has $.b };
say ((%(:66x, :67y) but Foo(5)) but Bar(7)).a
