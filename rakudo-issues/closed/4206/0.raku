use v6.d;

for ^10 {
    say "PRE-START: $_";
    start { say "STARTED: $_"; loop {} }
}
sleep 1;
