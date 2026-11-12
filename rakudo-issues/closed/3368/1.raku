unit class Pod::To::Tree;

method render($pod) {
    pod2text $pod;
}

sub pod2text($pod) is export {
    given $pod {
        when Positional {
            .flat».&pod2text;
        }
        when Pod::Block::Declarator {
            say "WHEREFORE: " ~ (.?WHEREFORE ?? .WHEREFORE.gist !! '');
            say "leading: " ~ (.?leading ?? .leading !! '');
            say "trailing: " ~ (.?trailing ?? .trailing !! '');
            say "contents: " ~ .contents;
            if .contents !~~ Empty {
                pod2text .contents;
            }
        }
        default {
            dd $_;
        }
    }
    return False
}
