# raku -MTest -e '…' as given in the issue
raku -MTest -e "$(cat <<'RAKU_SNIPPET_END'
subtest "foo", { ok 1 }; done-testing
RAKU_SNIPPET_END
)"
