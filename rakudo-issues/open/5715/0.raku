#!/usr/bin/env raku
say DateTime.now;
exit;

sub postcircumfix:<᚜  ᚛>(@container,*@index) {
    my $c = @container;
    for @index -> $index {
        return (Any) if $index < 0 || !$c[$index];
        $c = $c[$index];
    }
    return $c;
}
