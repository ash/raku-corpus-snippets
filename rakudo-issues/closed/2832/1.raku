class P {
    has $.x = 0;
    submethod BUILD() { #`[$!x] }
}
say P.new(x=>5).perl # OUTPUT: «P.new(x => 0)␤»
