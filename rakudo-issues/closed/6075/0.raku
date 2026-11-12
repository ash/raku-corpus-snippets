# Comparing two lists works fine:
say (10, 5)     cmp (7,6)         # Output: More

# Comparison with at least one Seq:
say (10, 5).Seq cmp (7,6).Seq     # Output: Less
say (10, 5)     cmp (7,6).Seq     # Output: Less
say (1, "5 6")  cmp (1, 5, 6).Seq # Output: Same
