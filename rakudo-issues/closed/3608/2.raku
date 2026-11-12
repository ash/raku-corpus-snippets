sub MAIN () {
    loop {
        state $n = 0;
        put $n++;
        last if $n > 2;
        FIRST { put "Starting loop. \$n is n" }
        LAST { put "Finishing loop. \$n is n" }
    }

    my Int $i = 1;
    while ($i < 10) {
        if ($i % 5 == 0) {
            last;
        }
 
        LAST {
            say "The last number was $i.";
        }
        NEXT {
            $i++;
        }
    }
}
