use Test;
my $built;
my $tweaked;
class H is Hash {
    submethod BUILD { $built = True }
    submethod TWEAK { $tweaked = True }
}
my %h := H.new;
plan 2;
ok $built, 'BUILD invocation';
ok $tweaked, 'TWEAK invocation';
