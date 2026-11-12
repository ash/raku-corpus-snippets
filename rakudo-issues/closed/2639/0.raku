sub test-run() {
    my $cwd = CALLERS::(‘$_’); # ‘foo’
    dd $cwd;
}

given ‘foo’ {
    test-run
}
