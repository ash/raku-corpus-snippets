use NativeCall;
module Foo {
    constant acs_map is export = cglobal('pdcurses', 'acs_map', CArray[int32]);
    constant WACS_ULCORNER is export = acs_map['l'.ord];
};
import Foo;
