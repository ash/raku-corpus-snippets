package Foo { use experimental :pack; sub go() is export { "".encode.unpack("*") }; }; import Foo; go()
