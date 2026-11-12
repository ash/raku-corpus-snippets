class C { method add($x) { $!x += $x }; has int $.x }.new.add(1)
# Cannot assign to an immutable value␤  in method add at <tmp> line 1␤  in block <unit> at <tmp> line 1

class C { has int $.x; method add($x) { $!x += $x } }.new.add(1) # works fine
