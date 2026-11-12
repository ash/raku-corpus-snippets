my @subs =
  sub for-sub   { for 1      { say 'routine | ' ~ &?ROUTINE.perl; say 'block   | ' ~ &?BLOCK.perl;} },
  sub do-sub    { do         { say 'routine | ' ~ &?ROUTINE.perl; say 'block   | ' ~ &?BLOCK.perl;} },
  sub given-sub { given Nil  { say 'routine | ' ~ &?ROUTINE.perl; say 'block   | ' ~ &?BLOCK.perl;} },
  sub if-sub    { if True    { say 'routine | ' ~ &?ROUTINE.perl; say 'block   | ' ~ &?BLOCK.perl;} },
  sub when-sub  { when ?True { say 'routine | ' ~ &?ROUTINE.perl; say 'block   | ' ~ &?BLOCK.perl;} },
  sub loop-sub  { loop       { say 'routine | ' ~ &?ROUTINE.perl; say 'block   | ' ~ &?BLOCK.perl; last;} },
  sub while-sub { while True { say 'routine | ' ~ &?ROUTINE.perl; say 'block   | ' ~ &?BLOCK.perl; last;} },
;

for @subs { say "\nactual  | $_.perl()"; .(); }
