grammar G
{
  token e    { \d+ }
  token call { 'f(' <e>* % ',' ')' }
  token asg  { 'x=' \d+ }

  token alt  { <call> | <asg> }     # longest-token alternation
  token alt2 { <call> || <asg> }    # sequential alternation
}

say G.parse('f(1,2)', rule => 'call') ?? 'match' !! 'no match';
say G.parse('f(1,2)', rule => 'alt')  ?? 'match' !! 'no match'; # Printed: No match
say G.parse('f(1,2)', rule => 'alt2') ?? 'match' !! 'no match';


say G.parse('f()', rule => 'alt')  ?? 'match' !! 'no match'; # Match
say G.parse('f(1)', rule => 'alt')  ?? 'match' !! 'no match'; # Printed: No match

say G.parse('x=42', rule => 'alt')  ?? 'match' !! 'no match';
say G.parse('x=42', rule => 'alt2') ?? 'match' !! 'no match';
