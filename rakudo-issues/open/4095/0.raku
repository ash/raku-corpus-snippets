sub get-capture {
    my &func = sub {};
    return trait_mod:<returns>(&func, Str);
}
get-capture; get-capture;
