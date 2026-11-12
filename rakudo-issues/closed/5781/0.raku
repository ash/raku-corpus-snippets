my @a = <a b c>;
@a.tail = "foo";
dd @a;  # ["a", "b", "foo"]

my str @b = <a b c>;
@a.tail = "foo";  # Cannot modify an immutable Str (c)
