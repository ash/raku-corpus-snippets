sub with-db(&operation) {
    with Nil {
    }
    else {
        return operation();
        LEAVE say "in leave";
    }
}
sub op() {
    with-db -> {
        42
    }
}
say op();
