my Regex $regex = /ab/;
subset Foo where * === $regex;
sub foo is export {
    say $regex ~~ Foo;
}
