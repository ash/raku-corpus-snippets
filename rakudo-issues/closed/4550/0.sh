# raku -n -e '…' as given in the issue
raku -n -e "$(cat <<'RAKU_SNIPPET_END'
.say
RAKU_SNIPPET_END
)"
