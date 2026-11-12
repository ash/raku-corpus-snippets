 my token alt-alnum {^^ <alnum> |<alnum>.+ $$};
say "þ," ~~ &alt-alnum; # OUTPUT: «｢þ｣␤ alnum => ｢þ｣␤»
