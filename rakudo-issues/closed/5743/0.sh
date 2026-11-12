# raku -n -e '…' as given in the issue
raku -n -e "$(cat <<'RAKU_SNIPPET_END'
state $a ;  print $a.raku; END put "";
RAKU_SNIPPET_END
)"
