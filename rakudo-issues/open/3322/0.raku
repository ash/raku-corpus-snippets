class gsl_complex is repr('CStruct') {
  has num64 $.re;
  has num64 $.im;
}

sub gsl_poly_complex_eval(CArray[num64] $c, int32 $length, gsl_complex $z --> gsl_complex) is native(LIB) { * }
