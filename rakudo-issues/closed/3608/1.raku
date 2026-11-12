sub MAIN () {

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
