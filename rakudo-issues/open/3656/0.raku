my @a = <3 4 5>;
@a[1, -2, 0]:delete; # does not immediately complain
.say for @a
