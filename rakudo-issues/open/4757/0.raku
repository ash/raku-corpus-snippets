say 2 R- 3 R-4; # should be (4-3)-2 == -1 by definition
say [R-] (2,3,4) # should be exactly the same
say (2,3,4).reduce(&infix:<R->) # should be exactly the same
