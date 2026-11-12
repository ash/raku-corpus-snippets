.say for 1...5...3
# 1
# 2
# 3
# 4
# 5
~~~~~

The same happens with `print` and `put` but not `gather`  :

~~~~raku
say gather .take for 1...5...3
# (1 2 3 4 5 4 3)
