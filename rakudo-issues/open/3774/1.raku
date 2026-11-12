sub postfix:<!>(Int $n where $n > 0) {
    [*] 1..$n
};

say 6!; # OUTPUT: «720␤» 
