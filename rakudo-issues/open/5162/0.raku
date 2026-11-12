class {
  class Foo { has $.x; }
  multi method new(Real $r) { ::?CLASS }

  multi infix:<+>(::?CLASS $a, ::?CLASS $b) { ::?CLASS }
  multi infix:<+>(Real $r, ::?CLASS $y) { samewith ::?CLASS.new($r), $y }

  # When removing the constraint below, no circularity is detected.
  multi infix:<+>(Real $r, Foo $y where $y.x == 1) { samewith $r, ::?CLASS }

  say 1 + Foo.new;
}
