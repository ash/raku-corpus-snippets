use v6;

# capturedClosureReturnsWSubset.pl6  Topher Cooper
# Demonstration of use of subset to workaround type capture returns
# check bug/infelicity.

sub closureFactory(::T)
{
    say "closureFactory(::{T.^name}) called.";
    my subset RT of Any where { $_ ~~ T };
       # NOTE "my subset RT of T" does not work.
    return
       sub binder(::T2 $x --> RT)
       {
           say "Binder({T2.^name} {$x}) called.";
           return $x;
       };
}

my $binder = closureFactory(Int);

say 'Calling $binder(18).';
say $binder(18).perl;

say 'calling $binder(1.8).';
{
    say $binder(1.8).perl;

    CATCH
    {
        default
        {
            put $_.^name, ': ', $_.Str;
        }
    }
}
