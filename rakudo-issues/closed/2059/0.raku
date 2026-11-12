grammar mdHTMLEntity {
    rule TOP { <mdHTMLEntity>+ }

    token mdHTMLEntity { '&' <mdHTMLCharReference> ';' }

    proto token mdHTMLCharReference {*}
    token mdHTMLCharReference:sym<dec> { [ '#' <[0..9]>+ ] }
    token mdHTMLCharReference:sym<hex> { [ :i '#x' <[0..9a..f]>+ ] }
    token mdHTMLCharReference:sym<named> { [ amp | lt | gt ] }
}

class A {
    multi method FALLBACK ($name where /^md/, $/) {
        say "fallback for $name";
    }
}

my $res = mdHTMLEntity.parse( "&#88;", actions => A.new );
say $res;
