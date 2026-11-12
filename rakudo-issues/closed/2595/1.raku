use v6;

# capturedClosureReturns.pl6  Topher Cooper
# Demonstration of type capture in closure returns check
# bug/infelicity.

sub closureFactory(::T)
{
    say "closureFactory(::{T.^name}) called.";
    sub binder(T $x --> T)
    {
        say "Binder({T.^name} {$x}) called.";
        return $x;
    }
}

my $binder = closureFactory(Int);

say $binder(18).perl;
CATCH
{
    default
    {
        put $_.^name, ': ', $_.Str;
        put "    value = {$_.got().gist},";
        put "    expected an object of type = {$_.expected().^name}.";
    }
};
