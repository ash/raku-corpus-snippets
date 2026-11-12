class Null does Iterable does Iterator {
    method iterator { self }
    method pull-one { IterationEnd }
}

say Null.new eqv Null.new;
