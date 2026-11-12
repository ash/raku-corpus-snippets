sub f (+items) { items.^name };

say f 42;        # List
say f 1..*;      # List
say f (1 xx *);  # Seq
