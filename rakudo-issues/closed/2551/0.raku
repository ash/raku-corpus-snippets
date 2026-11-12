role R { method f { "hi" } }
role S[$n] does R { }
say S[25] ~~ R;  # OUTPUT: False
say S[25].f;     # OUTPUT: hi
