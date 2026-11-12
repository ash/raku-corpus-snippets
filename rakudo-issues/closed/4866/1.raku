unit class C;

#| leading decl
has $.a;
#= trailing decl

has $.b;
#= trailing decl

for C.^attributes(:local) {
  .WHY;
}

dd $=pod;
