class A { has $.name; has &.block; submethod BUILD(:$!name, :&!block) {} };
my %as = alpha => A.new :name<alpha> :block(->{}), beta => A.new :name<beta> :block(->{});
my Map $m := Map.new(%as.values>>.name Z %as.values>>.block);
$m.WHAT.say;
$m<alpha>.say;
$m<alpha> = 'foo';
$m<alpha>.say;
