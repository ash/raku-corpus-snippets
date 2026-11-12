role  X        { method f {} }
role  Y does X { method g {} }
class C does Y {}

C.new.Y::g;  # works
C.new.X::f;  # ERROR: No concretization found for X
