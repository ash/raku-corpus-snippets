my regex line { \N*\n }
if "abc\ndef" ~~ /<line> def/ {
    say "First line: ", $<line>.chomp;      # OUTPUT: «First line: abc␤»
}

grammar G {
    regex g-line { \N*\n }
    regex line-def-cap { <g-line> def }
    regex line-def-no-cap { <.g-line> def }
}
say G.parse("abc\ndef", :rule('line-def-cap'));
say G.parse("abc\ndef", :rule('line-def-no-cap'));

# works ^ above but not \/ below
if "abc\ndef" ~~ /<.line> def/ {
    say "matched wo capture";
}
