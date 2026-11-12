my $paragraph="line\nline2\nline3";
$paragraph ~~ rx| :my $counter = 0; ( \V* { ++$counter } ) *%% \n |;
say "Matched $counter lines"; # OUTPUT: «Matched 3 lines␤»
