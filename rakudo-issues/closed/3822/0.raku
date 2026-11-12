class MyPositional does Positional
{
    method AT-POS(\position)
    {
        say "~~ AT-POS({\position})";

        return-rw Proxy.new:

            FETCH => method ()
            {
                say "~~ FETCH({\position})";
            },

            STORE => method ($v)
            {
                ...
            }
    }
}
