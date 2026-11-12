multi trait_mod:<is>(Routine:D $r,  :$foo) {}
sub infix:<🦋>(|) is foo<bar> {}
# OUTPUT: ===SORRY!=== Error while compiling /home/runner/.code.tio
# Can't use unknown trait 'is foo' in a sub declaration.
#   expecting any of:
#       rw raw hidden-from-backtrace hidden-from-USAGE pure default
#       DEPRECATED inlinable nodal prec equiv tighter looser assoc
#       leading_docs trailing_docs
