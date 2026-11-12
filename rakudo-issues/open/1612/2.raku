todo '｢whenever｣ on a Seq blocks other ｢whenever｣s';
{
  my $timeout = 1/32;

  # Use a Promise so that it can't be changed once set.
  # Protects against other possible 'react'/'whenever' bugs
  # from causing a false pass result.
  my $pass = Promise.new;

  my Seq $seq = gather {
    # must use a blocking construct here
    sleep $timeout;
    take Nil;
  }

  react {
    whenever $seq.Supply {
      # Should never get here if $timeout is large enough
      $pass.keep( False );
      done;
    }
    whenever Nil {
      $pass.keep( True );
      done;
    }
  }

  ok $pass.result, "whenever with a delayed Seq doesn't block other whenevers"
}
