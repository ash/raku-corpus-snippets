role WithGenericArray[::T] {
    has Array:D[T] $.array is required;

    submethod BUILD(::?CLASS:D: :@array --> Nil) {
        $!array := $!array.new: @array;
    }
}
