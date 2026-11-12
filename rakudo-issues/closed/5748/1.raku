use NativeCall;

class SomeNativeObj is repr('CStruct') {
	has int32 $!some-field;
	# manually compose it after declaring fields
	BEGIN { SomeNativeObj.^compose }
	# now we can use Pointer[SomeNativeObj] and CArray[SomeNativeObj] wherever we want
	sub takes-array(SomeNativeObj --> CArray[SomeNativeObj]) is native('somelib') {*}
	method some-method() { takes-array self }
}
