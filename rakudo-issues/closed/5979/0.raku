use Test;
for 'role R { }', 'role { }', 'class { }', 'grammar { }' -> $parse {
    my $deparse = '';
    lives-ok {$deparse = $parse.AST.DEPARSE}, 'reparse of: ' ~ $parse;
}
