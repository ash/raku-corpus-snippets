my @a = 4,8,15,16;
@a[1]:delete;
.say for @a; # the hole will appear as (Any)
say ‘----’;
.say for @a.reverse; # the hole will appear as (Mu)
