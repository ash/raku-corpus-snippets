# also check that it isn't just a case / spelling problem
for <utf8 utf16 utf32 UTF32 utf-32 UTF-32> {
    say '🇺🇸'.encode($_);
    CATCH { default { .say } }
}
