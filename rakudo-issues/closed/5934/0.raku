use v6.d;

class BugDemo {
    has $.value;
    method new($v) { self.bless(value => $v) }
    method Str() { $.value.defined ?? $.value.Str !! '(Undefined)' }

    # This method exposes the bug using the native XOR operator.
    method xor_buggy(BugDemo $other) {
        my $result = $.value ^^ $other.value;
        return BugDemo.new($result);
    }

    # This method uses a logically equivalent workaround.
    method xor_workaround(BugDemo $other) {
        my $result = so $.value != so $other.value;
        return BugDemo.new($result);
    }
}

my $t = BugDemo.new(True);
my $expected-xor = 'Nil';
my $expected-ne = 'False';

# --- Test 1: Demonstrating the Bug ---
my $result_buggy = $t.xor_buggy($t);
say "Buggy method (\$t.xor_buggy(\$t)):";
if $result_buggy.Str eq $expected-xor {
    say "  ✅ UNEXPECTED PASS: Got {$result_buggy.Str()}";
} else {
    say "  ❌ FAIL: Got '{$result_buggy.Str()}' but expected '$expected-xor'";
}

# --- Test 2: Demonstrating the Workaround ---
my $result_workaround = $t.xor_workaround($t);
say "Workaround method (\$t.xor_workaround(\$t)):";
if $result_workaround.Str eq $expected-ne {
    say "  ✅ PASS: Got '{$result_workaround.Str()}' as expected";
} else {
    say "  ❌ FAIL: Got '{$result_workaround.Str()}' but expected '$expected-ne'";
}
