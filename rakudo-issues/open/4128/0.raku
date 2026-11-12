say reduce &[>], 6, 5, 4;       # True
say reduce &infix:«>», 6, 5, 4; # True
say [>] 6, 5, 4;                # True
say [[&infix:«>»]] 6, 5, 4;     # False
