use v6.d;
use NativeCall;

class InstanceBase { has Pointer $.hwnd is required }

role WindowBase[::InstanceType = InstanceBase] {
    has %!instances{Int} of InstanceType;
}

class X does WindowBase[InstanceBase] { }
say "ok";
