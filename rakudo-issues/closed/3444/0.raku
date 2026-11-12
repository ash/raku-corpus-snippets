my &f = { .rotor( 1 Xxx 1 ) };
{
    say f [1,2,3];
    CATCH {
        default { say .message }
    }
}
say f [1,2,3];
