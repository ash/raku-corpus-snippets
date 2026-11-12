say +((5..2).reverse); # -1 but should be 0
say +(5..-∞);          # 1 but should be 0
say +(-∞..-∞);         # NaN but should be Inf
