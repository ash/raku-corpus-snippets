role A { multi method a ([]) { 0 }; multi method a (@) { 1 } }; say A.a([1]);
