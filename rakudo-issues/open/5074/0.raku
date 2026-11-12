say $*RAKU.compiler.version, $*KERNEL;

srand 1; say (1..100).pick;
srand 1; say (1..100).pick;
srand 1; say (1..100).pick;
# ... more of the same

srand 1; say (1..100).pick: 2;
srand 1; say (1..100).pick: 2;
srand 1; say (1..100).pick: 2;
# ... more of the same
