role ValueType {
    has $!WHICH;

    multi method WHICH(::?CLASS:D: --> ValueObjAt:D) {
        $!WHICH.defined
          ?? $!WHICH
          !! self!WHICH
    }

    method !WHICH() {
        … # removed for brevity
    }


    # Here is the fix, which happens on the cloned value
    submethod CLONE {
        $!WHICH := $!WHICH.VAR.default
    }
}
