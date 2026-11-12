# raku -Ilib -e '…' as given in the issue
raku -Ilib -e "$(cat <<'RAKU_SNIPPET_END'
use Slang; say <li></li>
RAKU_SNIPPET_END
)"
