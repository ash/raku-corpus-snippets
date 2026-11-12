use nqp;
# ...
sub readlink(IO::Path:D \filePath, IO::Path :$CWD --> IO::Path:D) {
  IO::Path.new(nqp::readlink(filePath.relative), :CWD($CWD // filePath.dirname))
}
