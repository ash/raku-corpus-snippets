use v6.e.PREVIEW;
unit module testmod;

our role ContainedThing is export {
    has Str $.something;
    has Str $.name;

}

our role ContainerThing is export {
    has str $.cname;
    has ContainedThing @.things;
    submethod TWEAK(Str :$name, *%rest) {
        @!things.append(ContainedThing.new(:$name, |%rest));
    }
}

our class TestThing is export {
    also does ContainerThing;
}
