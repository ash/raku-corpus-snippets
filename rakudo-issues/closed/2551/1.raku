role R { method f { "hi" } }
role S does R { }
say S ~~ R;  # OUTPUT: True
say S.f;     # OUTPUT: hi
