sub { start { return } }(); sleep 1;
# OUTPUT: «Unhandled exception in code scheduled on thread 4␤Attempt to return outside of immediately-enclosing Routine (i.e. `return` execution is outside the dynamic scope of the Routine where `return` was used)␤ in block at <tmp> line 1␤␤»
