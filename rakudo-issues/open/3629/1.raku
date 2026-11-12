use NativeCall;
sub GetCommandLineW() returns CArray[uint8] is rw is native('Kernel32') { * }
sub get-commandline() {
    my @nat-arr := GetCommandLineW();
    my @arr;
    for 0 .. * -> $i, $j {
        @arr.push: @nat-arr[$i], @nat-arr[$j];
        last if @nat-arr[$i] == @nat-arr[$j] == 0;
    }
    return Blob.new(@arr).decode('utf16');
}
say get-commandline();
