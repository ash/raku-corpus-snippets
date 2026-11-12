my @a = (Failure.new,); # List contains (at least one) Failure. Shouldn't Explode.
my @b =  Failure.new;   # Lone Failure (indicating failure to create Array?). Should Explode?
