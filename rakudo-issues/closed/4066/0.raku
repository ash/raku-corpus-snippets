{
    CATCH { default { put .^name, ': ', .Str } }
    my Mu $var;
    my \seen = cas $var, Mu, Mu.new;
    put seen.raku;
}

{
    CATCH { default { put .^name, ': ', .Str } }
    my Mu $var;
    my \updated = cas $var, { Mu.new };
    put updated.raku;
}
