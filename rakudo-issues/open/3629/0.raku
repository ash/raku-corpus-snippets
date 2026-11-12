use NativeCall;
sub GetCommandLineW() returns Str is encoded('utf16') is rw is native('Kernel32') { * }
say GetCommandLineW();
