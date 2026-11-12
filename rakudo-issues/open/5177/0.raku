subset FileStr of Str where { .IO.e && !.IO.f };
multi sub open-xml(IO::Path(FileStr) $src) { say 'Opening from file string' }
open-xml('yarn.lock');
# ===SORRY!===
# Invocant of method 'e' must be an object instance of type 'IO::Path'
