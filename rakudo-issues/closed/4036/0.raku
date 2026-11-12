unit class Foo;

#| leading
has $.basic = 1;
#= trailing

#| leading
has $.ternary1 = 1 ?? 1 !! 0
#= trailing
;

#| leading
has $.ternary2 = 1 ?? 1 !! 0;
#= trailing

for Foo.^attributes(:local) {
  say "\n" ~ .name;
  given .WHY {
    .leading.say;
    .trailing.say;
  }
}
