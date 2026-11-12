use v6.d;

for ^10 {
    say "PRE-START: $_";
    start { sleep 1; say "STARTED: $_"; loop {} }
}
sleep 10;
