sub foo (::T $, Array[T] $) { }
foo Int, Array[Int] # ... expected Array[T] but got Array[Int]
