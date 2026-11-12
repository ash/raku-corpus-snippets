use NativeCall;
my CArray[byte] $ba .= new( 255, 254, 3, 4);;
$ba[0].WHAT;
$ba[0..*-1]
