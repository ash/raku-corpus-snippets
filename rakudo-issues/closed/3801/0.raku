class Privateed {
    method !private() { return "⌣"  }
    method public() { return "✓" };
    method methods() { return self.^methods };
}

my $obj = Privateed.new;
say $obj.methods;
