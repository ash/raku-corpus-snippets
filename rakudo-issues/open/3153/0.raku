method Str() {
    return "{$.meta<name>}"
    ~ ":ver<{$.meta<ver>   // ''}>"
    ~ ":auth<{$.meta<auth> // ''}>"
    ~ ":api<{$.meta<api>   // ''}>";
}

method id() {
    return nqp::sha1(self.Str);
}
