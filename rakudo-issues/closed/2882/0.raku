sub via-role ($obj, $name) {
    $obj but my role :: { method test-name {$name} }
}

sub via-class ($obj, $name) {
    my class Bar {
        method test-name {$name}
    }.new
}

class Foo {
    method test-name { "default" }
}

my @p;
for 1..100 -> $i {
    @p.push: start {
        $*ERR.print: "$i\r";
        my $obj = Foo.new;
        my $name = "name$i";
        my $robj = via-role($obj, $name);
        my $cobj = via-class($obj, $name);
        say $name, " => ", $robj.test-name, " // ", $robj.^name unless $name eq $robj.test-name;
        say $name, " => ", $cobj.test-name, " // ", $cobj.^name unless $name eq $cobj.test-name;
        sleep .01.rand;
    }
}

await @p;
