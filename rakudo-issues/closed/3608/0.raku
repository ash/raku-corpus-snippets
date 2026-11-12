sub MAIN () {
    loop {
        state $n = 0;
        put $n++;
        last if $n > 2;
        FIRST { put "Starting loop. \$n is n" }
        LAST { put "Finishing loop. \$n is n" }
    }
}
