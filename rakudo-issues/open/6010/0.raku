[0] > sub t {die "This is my payload"; CATCH { when X::AdHoc { repl }; default { repl }}}                                                                                                                     
&t
[1] > t                                                                                                                                                                                                       
Type 'exit' to leave
[0] > .payload                                                                                                                                                                                                
No such method 'payload' for invocant of type
'Rakudo::Internals::LoweredAwayLexical'
  in block <unit> at <unknown file> line 1
  in block  at <unknown file> line 1
  in any  at <unknown file> line 1
  in sub t at <unknown file> line 1
  in block <unit> at <unknown file> line 1
  in any <main> at /home/demanuel/.rakubrew/versions/moar-main/install/share/perl6/runtime/perl6.moarvm line 1
  in any <entry> at /home/demanuel/.rakubrew/versions/moar-main/install/share/perl6/runtime/perl6.moarvm line 1

[0] >         
