use v6.d.PREVIEW;
say $*PERL.compiler.version;

my $supply = supply {
  for ^5 {
    say "$_ emit     <$_";
    .emit;
    sleep ⅛; # pretend there is some processing involved
  }
}

react {
  whenever Supply.interval(¼) {
    say "$_ interval"
  }
  whenever $supply.throttle(1,½) {
    say "$_ whenever  $_>";
    LAST done;
  }
}
