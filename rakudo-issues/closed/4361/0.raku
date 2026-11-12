role A[::T] does Blob[T] { }; role B[::T] { has Blob[T] $.b; }; say "Alive"
