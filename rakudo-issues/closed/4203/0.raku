use v6.e.PREVIEW;

my @a = <a b>;
my %b;
%b{||@a} = 42;
@a = <a b c>;
%b{||@a} = 42; # line 7

# OUTPUT: Type Int does not support associative indexing.
#           in block <unit> at /home/dex/projects/raku/rakudobug/tmp2.raku line 7
