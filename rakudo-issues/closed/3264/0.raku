use NativeCall; 
class A is repr<CStruct> { 
  has uint32 $.a; 
  has CArray[Pointer[A]] $.aa; 
};
