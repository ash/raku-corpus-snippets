start react whenever (my Channel $c .= new) { say "Got URL: $_" }
sub get-urls($url) {
    gather { take $url; $url.chars > 1 and (.take for get-urls $url.chop) }
}
await get-urls("meows").Supply.throttle: 3, {$c.send: $_};
$c.close
