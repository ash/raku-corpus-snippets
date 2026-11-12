subset IntegerStr where Int | Str; 
multi sub a (IntStr $arg) { say 'IntStr' }; 
multi sub a (Num() $arg) { say 'Num' }; 
a('Hi');  # returns Num
a(42);  # returns Num
a(pi)    # returns Num
