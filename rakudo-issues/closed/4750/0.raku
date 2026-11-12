    #! /usr/bin/env raku
    use v6;

    class Vimwiki::File is IO::Path {
        has $.blah;

        multi method new($path) {
            self.bless;
            nextwith($path);
        }

        submethod BUILD() {
            say 'hi';
            $!blah = 'test';
            say $!blah;
        }
    }

    my $vwf = Vimwiki::File.new('t/test_file.md');
    say $vwf.^mro;
    say $vwf.s;
    say $vwf.blah;
