   role R3 { has $.a; }
   role R2 does R3 { }
   role R1 does R3 { }
   class C does R1 does R2 { }
