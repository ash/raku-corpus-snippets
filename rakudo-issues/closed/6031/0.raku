my %x is Set[Int()] = "42" => 666; dd %x.keys.head;  # "42", should be 42
my %x is Bag[Int()] = "42" => 666; dd %x.keys.head;  # "42", should be 42
my %x is Mix[Int()] = "42" => 666; dd %x.keys.head;  # "42", should be 42
