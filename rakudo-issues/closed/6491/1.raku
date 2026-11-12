use v6;
if 'Something' ~~ / ^ $<disp> = (.+?) / {
    if $<disp>:exists {
        say 'ok'
    }
}
