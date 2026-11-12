my token jump($offset) {  <{ ". ** $offset" }> };  say "a1bc" ~~ /^  "a" (\d) {}  <.&jump($/[*-1])>  "c" $/
