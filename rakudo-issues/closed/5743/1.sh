# raku -n -e '…' as given in the issue
raku -n -e "$(cat <<'RAKU_SNIPPET_END'
state $a ;  $a.=raku andthen print($_); END put "";
RAKU_SNIPPET_END
)"
