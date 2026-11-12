role WithGenericArray[::T] {
    has T @.array;
}

say WithGenericArray[Int:D].new: :array[1,2,3];
