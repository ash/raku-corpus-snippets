use v6.d.PREVIEW;
{
  my $pass = Promise.new;

  my $supply = supply {
    for ^1000 {
      .emit;
    }
    # should never get here
    try $pass.keep(False);
  }

  react {
    whenever $supply.throttle(1,1/8) {
      LAST done;

      # make sure it's run a few iterations
      # but is not near the end
      if $_ == 5 {
        try $pass.keep(True);
        done;
      }
    }
  }

  ok $pass.result, '.throttle(Int,Real) provides backpressure'
}
