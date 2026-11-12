say (0..10).rotor(3, *); # ((0 1 2) (3 4 5 6 7 8 9 10))
say (0..10).rotor(2, *); # ((0 1) (2 3 4 5 6 7 8 9 10))
say (0..10).rotor(1, *); # ((0) (1 2 3 4 5 6 7 8 9 10))
say (0..10).rotor(0, *); # Rotorizing sublist length is out of range. Is: 0, should be in 1..^Inf; 
