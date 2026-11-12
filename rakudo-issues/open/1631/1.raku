sub throttle ( Supply:D $supply, $elems, $seconds ) {
  my atomicint $current = -1;
  my $finished = Promise.new;

  my $timer = supply {
    whenever Supply.interval($seconds) {
      $current ⚛= 0;
      .emit;
    }
    whenever $finished {
      done;
    }
  }
  start $timer.wait;

  supply {
    whenever $supply {
      LAST $finished.keep;
      CLOSE $finished.keep;

      $current⚛++;
      while ⚛$current >= $elems {
        sleep $seconds / $elems
      }
      .emit
    }
  }
}
