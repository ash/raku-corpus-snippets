sub f ($a, $b) { $a + $b };

role R [&f] {
    method CALL-ME (|c) {
        say 'Got a call inside role R';
        self.assume: |c;
    }
    method assume (|c) {
        my &pf = &f.assuming: |c;
        &pf.wrap: sub (|c) {
            callsame;
        }
        &pf does R[&pf.clone];
    }
    method assume2 (|c) {
        my &pf = &f.assuming: |c;
        &pf does R[&pf.clone];
        &pf.wrap: sub (|c) {
            callsame;
        }
        &pf;
    }
}

# If you pass cloned version of &f to R, callsame in new dispatch calls the original function

&f does R[&f.clone];

say &f.assume(1)(2);
# [New Dispatch] 3
# [Old Dispatch] Got a call inside role R
# [Old Dispatch] &__PRIMED_ANON

say &f.assume(1)(2).does: R;
# [New Dispatch] False
# [Old Dispatch] Got a call inside role R
# [Old Dispatch] True

# But if you apply the role before wrapping the function, new dispatch works
# But old dispatch throws the old "Cannot invoke object with invocation handler in this context" error

say &f.assume2(1)(2);
# [New Dispatch] Got a call inside role R
# [New Dispatch] &__PRIMED_ANON
# [Old Dispatch] Cannot invoke object with invocation handler in this context
# [Old Dispatch] ... *    callsame;

say &f.assume2(1)(2).does: R;
# [New Dispatch] Got a call inside role R
# [New Dispatch] True

&f does R[&f];

say &f.assume(1)(2);
# [New and old Dispatch] Got a call inside role R
# [New and old Dispatch] &__PRIMED_ANON
