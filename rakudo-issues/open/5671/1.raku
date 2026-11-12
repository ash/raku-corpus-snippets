unit module B;

my %handlers;

multi trait_mod:<is>(Sub $sub, :@handler [Str $for]) is export {
    %handlers{$for} = $sub;
}

sub print-var is export {
    say %handlers.gist;
}
