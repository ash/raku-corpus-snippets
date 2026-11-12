if "test1 test2 test3 test4" ~~ m:g/ (\w+) {} / {
    say ~$_ for $/.list;
}
