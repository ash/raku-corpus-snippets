my @a = (^10).list; @a = @a.hyper(:batch(5)).map({ LAST say "last"; „∅“ });
# rakudo-moar d10d69774: ( no output )

# expexted output at the end of a batch:
# last

# FIRST and NEXT are ignored too
# It may be sensible to fail on LAST in a HyperIterable and provide a
# LAST-BATCH phaser to avoid confusion when non-parallel code is
# changed.
