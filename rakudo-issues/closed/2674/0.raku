use Test;
is-deeply { a => (1,2,3) }.map({ .key <<=>>> .value }).list, ((:1a, :2a, :3a),)
