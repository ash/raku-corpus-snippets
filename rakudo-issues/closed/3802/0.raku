class Privateed  {
    method !private() { return "⌣"  }
    method call-private( $method-name )  {
	self."!$method-name"();
    }
}

my $obj = Privateed.new;
say $obj.call-private( "private" );
