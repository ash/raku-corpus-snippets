
method console-wo-prefix ($message) {

    my $ts = DateTime.now(formatter => $timeformat).Str;

    if %*ENV<SP6_FORMAT_INLINE> {
      if $message ~~ /^^ "inline:"/ {
        my $m = $message.subst(/^^ "inline:"/,"");
        say $m;
      }
      return
    }
    if %*ENV<SP6_LOG_NO_TIMESTAMPS> {
      say $message;
    } else {
      say %*ENV<SP6_FORMAT_COLOR>
        ?? "{$ts.&colored('magenta')} :: $message"
        !! "{$ts} :: $message";
    }

  };
