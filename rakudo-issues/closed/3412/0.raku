use Test;
my UInt %composed;

role MooishAttrHOW {
    method compose( Mu $pkg ) {
        %composed{self.name}++;
        callsame;
    }
}

multi trait_mod:<is> (Attribute:D $attr, :$mooish!) {
    $attr does MooishAttrHOW;
}

class Foo {
    has $.bar is mooish is rw;
}

is-deeply %composed<$!bar>, 1, "attribute composed once";
