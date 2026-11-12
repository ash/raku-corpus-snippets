#use Grammar::Tracer;

grammar g {
    token keywords { 'or' }

    token BASEIDENT {\w+<!after <keywords>>}
    token BASEIDENT_SIMPLER {\w+<!after 'or'>}

    token TOP { <BASEIDENT> }
}

say so g.parse('a');
say so g.parse('ro'); # this should match - looks wrong
say so g.parse('ro', :rule<BASEIDENT>); # same as above as expected
say so g.parse('ro', :rule<BASEIDENT_SIMPLER>); # different from above

my token keywordz {
  'or'
}
say so "a" ~~ /\w+<!after <keywordz>>/;
say so "ro" ~~ /\w+<!after <keywordz>>/;

# Grammar::Tracer shows ro matching or
# TOP
# |  BASEIDENT
# |  |  keywords
# |  |  * MATCH "or"
# |  * FAIL
# * FAIL
