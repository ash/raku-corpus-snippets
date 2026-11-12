my $promise1 = start {
    react {
        whenever Supply.interval(5) {
            die;
        }
    }
}


my $promise2 = start {
    react {
        whenever Supply.interval(5) {
            say 'foo';
        }
    }
}

await $promise2, $promise1;
