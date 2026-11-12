sub f (|c) { dd c }

f :foo(  'a'  ne 'd'); # OUTPUT: «\(:foo)»
f foo => 'a'  ne 'd';  # OUTPUT: «\(:foo)»
f :foo(  'a' !eq 'd'); # OUTPUT: «\(Bool::True)»
f foo => 'a' !eq 'd';  # OUTPUT: «\(Bool::True)»
