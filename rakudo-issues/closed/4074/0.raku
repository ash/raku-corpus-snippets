subset IntegerStr where Int | Str; 
multi sub a (IntStr $arg) { say 'IntStr' }; 
multi sub a (Num() $arg) { say 'Num' }; 
a('Hi');  # returns IntStr
a(42);  # returns IntStr
a(pi)    # returns Num
