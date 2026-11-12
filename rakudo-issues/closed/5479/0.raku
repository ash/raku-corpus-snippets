#!/usr/bin/env raku 

my $grammar = q｢        
grammar G {
  token TOP {<foo>?} # error disappear when remove `?` 
  token foo { 'foo' }
}  
｣.AST.EVAL;         
     
my $actions = q｢
class A {
  method TOP ($/) { $<foo>.made }
}
｣.AST.EVAL;
   
$grammar.parse( 'foo', :$actions );
