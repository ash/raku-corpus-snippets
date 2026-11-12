<RunCmdModule.pm6>
## unit module RunCmdModule;
## RunCmdModule.pm6


sub RunCmd( Str $CommandStr, Bool $EchoOff = False ) returns Str is export( :RunCmd )  {
   my $PathIAm          = $?FILE;
   my Str $BatFile = $PathIAm ~ ".bat";
   ## print "$BatFile\n";   
   my Str $RtnStr;
   my Str $CmdStr = "";  
   
   if $EchoOff  { $CmdStr = Q[@echo off] ~ "\n"; }
   $CmdStr = $CmdStr ~ $CommandStr ~ "\n";  
   ## print "$CmdStr";

   spurt( $BatFile, $CmdStr );
   ## print "$RtnStr\n";
   $RtnStr = qqx { $BatFile };
}
</RunCmdModule.pm6>
