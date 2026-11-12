my token ltm-issue {
     ['+'] | ['.' '[' '+'*%%',' ']']
}
my token or-works1 {
     ['+'] || ['.' '[' '+'*%%',' ']']
}
my token or-works2 {
     ['.' '[' '+'*%%',' ']'] || ['+']
}

say('LTM:');
say(".[]" ~~ /^ <ltm-issue> $/);
say(".[]" ~~ / <ltm-issue> /);
say(".[+]" ~~ /^ <ltm-issue> $/);
say(".[+]" ~~ / <ltm-issue> /);
say("\nOR, dot first:");
say(".[]" ~~ /^ <or-works1> $/);
say(".[]" ~~ / <or-works1> /);
say(".[+]" ~~ /^ <or-works1> $/);
say(".[+]" ~~ / <or-works1> /);
say("\nOR, plus first:");
say(".[]" ~~ /^ <or-works2> $/);
say(".[]" ~~ / <or-works2> /);
say(".[+]" ~~ /^ <or-works2> $/);
say(".[+]" ~~ / <or-works2> /);
