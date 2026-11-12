sub foo ($x) { 
    ENTER say "entered"; 
    LEAVE say "left"; 
    for ^$x { 
        FIRST say "first"; 
        LAST say "last"; 
        return if $_ == 0; 
    }
}
foo 42
