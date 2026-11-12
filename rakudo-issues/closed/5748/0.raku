use NativeCall;

class SomeNativeObj is repr('CStruct') {
	has int32 $!some-field;
	sub takes-array(SomeNativeObj --> CArray[SomeNativeObj]) is native('somelib') {*}
	method some-method() { takes-array self }
}
