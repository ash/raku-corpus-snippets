class Foo { has &.bar where .signature ~~ :(Int, Int --> Int) }.new: bar => sub (Int, Int --> Int) {}
