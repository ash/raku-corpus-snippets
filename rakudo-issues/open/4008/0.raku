class Worker {
    my atomicint $next-id = 0;
    has Int $.id = ++⚛$next-id;
    has &.cb;
    has $.mgr;
    method run() {
        &!cb("worker", self);
    }
}
class Mgr {
    has $.wp;
    submethod TWEAK {
        my proto cb(|) {*}
        # self and mgr must be the same here because it's only the ways they are passed into the code are different:
        # one comes via a constructor argument, the other comes via a closure. In fact, only one invocation prints
        # same values.
        my multi cb("worker", $worker) { say "worker: ", $worker.mgr.WHICH, " // ", self.WHICH }
        $!wp = start {
            Worker.new(:mgr(self), :&cb).run;
        }
    }
}
my $m1 = Mgr.new;
my $m2 = Mgr.new;
await $m1.wp, $m2.wp;
