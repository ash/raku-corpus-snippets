#!/usr/bin/env perl6
use Cro::HTTP::Router;
use Cro::HTTP::Server;

my $host-arch = $*KERNEL.hardware; # NEEDED!

my $application = route {
    get {
        say ‘enter’;
        $ = run ‘true’; # NEEDED!
        say ‘after’;
        content 'text/plain', "Hello!";
    }
}

slurp; # slurps whatever we have on stdin, NEEDED!
my Cro::Service $share = Cro::HTTP::Server.new: :$application,
    :host(‘0.0.0.0’), :port(10001);
$share.start; # kinda NEEDED can't do it without it

sleep ∞
