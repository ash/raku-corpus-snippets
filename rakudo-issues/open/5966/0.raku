#!/usr/bin/env raku

role Defaults { ... }

class Site does Defaults {
   method gist() { "ARGH" }
}
