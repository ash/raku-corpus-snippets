# raku -n -e '…' as given in the issue
raku -n -e "$(cat <<'RAKU_SNIPPET_END'
state $a ;  $a.=raku; print $a; END put "";
RAKU_SNIPPET_END
)"
