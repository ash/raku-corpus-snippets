say (1..100).map(*+2).iterator.^name;
# Any::IterateOneWithoutPhasers
say (1..100).map(*+2).iterator.can('is-deterministic').head.package.^name;
# Rakudo::SlippyIterator
