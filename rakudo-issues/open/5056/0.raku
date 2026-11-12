class Value {
  method COERCE() { Value }
}

multi foo(Hash:D) { say "yes" };
multi foo(Value(Any:D)) { say "no" };

foo({ :foo })
