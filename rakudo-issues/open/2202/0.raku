sub share($p, $s) { 
    my $sup = Supplier.new;
    $p.then({
        $s.tap(
        -> $v { $sup.emit($v); },
        done => { $sup.done; },
        quit => -> \ex { $sup.quit(ex); }
        )
    });
    $sup.Supply;
}

my $s = supply { 
    "called".say;
    emit 1;
    die "I am die";
}; 
my $ss = share(my $p = Promise.new, $s); 
$ss.tap( -> $v { say "tap {$v}"; }); 
react { 
    whenever $ss { say $_; };
    $p.keep(1);
}
