class HistoryVar {
    has @.history;
    has $!var handles <Str gist FETCH Numeric>;
    method STORE($val) is rw {
        push @.history, [now, $!var];
        $!var = $val;
    }
}

# OK
my \foo = HistoryVar.new;
say foo.^name;
foo = 1;
say foo.^name;
foo += 3;
say foo.^name;
foo = 42;
say foo.^name;

.say for foo.history;
say "Current value: {foo}";

# WAT
my $foo = HistoryVar.new;
say $foo.^name;
$foo = 1;
say $foo.^name;
$foo += 3;
say $foo.^name;
$foo = 42;
say $foo.^name;

.say for $foo.history;
say "Current value: {$foo}";
