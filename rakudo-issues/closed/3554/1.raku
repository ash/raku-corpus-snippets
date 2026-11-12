if "test1 test2 test3 test4" ~~ m:x(4)/ (\w+) {} / {
    say ~$_ for $/.list;
}
