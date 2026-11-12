sub foo {
    loop (my int $i = 0; $i <= 2; $i++) {
        note ‘hello’
    }
}

for 42 {
    foo
}
