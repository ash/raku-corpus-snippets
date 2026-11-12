my regex ab { ab }
say .pos given 'ab ba' ~~ / <?after    ab   > /; # 2
say .pos given 'ab ba' ~~ / <?after   <ab>  > /; # 5 <- WRONG!
say .pos given 'ab ba' ~~ / <?after <{'ab'}>> /; # 5 <- WRONG!
say .pos given 'ab ba' ~~ / <?after <{'ba'}>> /; # 2 <- WRONG!
