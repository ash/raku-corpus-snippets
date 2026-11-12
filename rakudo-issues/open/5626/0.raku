my $code = $*PROGRAM.slurp x 10000;
my atomicint $seen;
for $code.lines.batch(256) -> @lines {
    $*SCHEDULER.cue: {
       ++⚛$seen if / clean / for @lines;
    }
}
sleep 1; # wait for things to unfold
say "seen: $seen";
