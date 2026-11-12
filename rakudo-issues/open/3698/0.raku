use v6;
use NativeCall;
unit module A;
sub addch(int32 $ --> int) is native('pdcurses') is export { * };
