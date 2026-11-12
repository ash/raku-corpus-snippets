my &f = { .rotor( ((1,).Seq.cache,).Seq ) };
{
    say f [1,2,3];
    CATCH {
        default { say .message }
    }
}
say f [1,2,3];
