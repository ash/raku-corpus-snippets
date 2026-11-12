use v6.c;
use NativeCall;

constant LIBCURSES = 'curses';
constant LIBEDIT = 'edit';

INIT {
    # Force the libcurses symbols to load.
    sub tgetflag(Str --> int32) is native(LIBCURSES) { * }
    tgetflag('am');
}

class History is repr('CPointer') {
    class Event is repr('CPointer') { }

    sub history_init(--> History) is native(LIBEDIT) { * }
    method new() { history_init }

    sub history_end(History) is native(LIBEDIT) { * }
    submethod DESTROY() { history_end(self) }

    sub history_getsize(History, Event, int32 --> int32) is native(LIBEDIT) is symbol('history') { * }
    method get-size(--> Event) {
        my Event $ptr .= new;
        history_getsize(self, $ptr, 2);
        $ptr;
    }

    sub history_setsize(History, Event, int32, int32 --> int32) is native(LIBEDIT) is symbol('history') { * }
    method set-size(Int $size --> Event) {
        my Event $ptr .= new;
        history_setsize(self, $ptr, 1, $size);
        $ptr;
    }
}

sub MAIN() {
    my $h := History.new;
    my $e := $h.get-size;
    say $e;
}
