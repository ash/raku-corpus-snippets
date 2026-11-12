# raku -n -e '…' as given in the issue
raku -n -e "$(cat <<'RAKU_SNIPPET_END'
BEGIN my $w = 0; $w += .words.elems; END say $w
RAKU_SNIPPET_END
)"
