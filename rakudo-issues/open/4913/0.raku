sub MAIN (
    Str $arg = "default",
    Str :I(:$include) = "/etc",
)
{
    $include.say;
    $arg.say;
}
