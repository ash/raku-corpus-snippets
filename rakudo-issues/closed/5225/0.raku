say 1.0000000000000000000;  # 1                     OK
say 1.000000000000001;      # 1.000000000000001     OK
say 1.0000000000000001;     # 2                     should be 1.0000000000000001
say 2.0000000000000000001;  # 2.0000000000000000001 OK
say 2.00000000000000000001; # ERROR:                should be 2.00000000000000000001
                            # Type check failed in binding to parameter '$fract'; expected Rational but got Num (1e-20)
