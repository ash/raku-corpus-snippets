sub RunNoShellAll( Str $RunString, Int $StdOut, Int $StdErr, Int $Code ) {
   # returns  
   #    StdOut as Str $ReturnStr
   #    StdErr as Str $ReturnErr
   #    Return Code ($?) as Int $RtnCode

   # $RunString   Comnad line to run without a shell
   # $StdOur      read and return the STDOUT       1=yes, 0=no
   # $StdErr      read and return the STDERR       1=yes, 0=no    
   # $Code        read and return the return code  1=yes, 0=no 
  
   # Note: If reading the STDERR, it is PRESUMED you also will be reading the STDIN.
   #       If only reading the return code, it is presumed that you want the STDERR
   #          and STDIN to be silent.
  
   # place each value into a cell in an array.  Keep quoted 
   # values together
   # print "Run String = <$RunString>\n";
   
    
   my Buf $BufStdErr; 
   my Str $ReturnStr = ""; 
   my Str $ReturnErr = "";
   my Int $RtnCode = 0;
   my $proc;
   
   my @RunArray  = $RunString ~~ m:global/ [ '"' <-[ " ]> * '"' | \S+ ] /;
   
   # shells remove the quote, so you have to here as well
   for @RunArray.kv -> $index, $value { @RunArray[$index] ~~ s:g/\"//; };
   # for @RunArray.kv -> $index, $value { say "\$RunArray[$index] = <$value>"; }; print "\n";
   
   if    $StdErr  { $proc      = run( @RunArray, :err, :out, :enc<utf8-c8> ); }  
   elsif $StdOut  { $proc      = run( @RunArray,       :out, :enc<utf8-c8> ); }  # STDERR goes to the terminal
   else           { $proc      = run( @RunArray, :err, :out, :enc<utf8-c8> ); }  # STDIN and STDERR are silent
   
   if  $Code    { $RtnCode   = $proc.status; } 
   if  $StdErr  { $ReturnErr = $proc.err.slurp; }
   if  $StdOut  { $ReturnStr = $proc.out.slurp; } 
   
   return( $ReturnStr, $ReturnErr, $RtnCode );
}
