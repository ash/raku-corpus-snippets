use Test;

subtest 'default signal handlers reinstalled after signal taps are closed' => {
    # because of Windows issues, shove the program into the file and run that
    # https://rt.perl.org/Ticket/Display.html?id=132258
    my $program := make-temp-file content => ｢
        react {
            whenever signal(SIGINT) {
              say "CAUGHT";
              done
            }
            say 'READY ' ~ $*PID;
        }

        say 'PASS';
        await Promise.in: 10;
        say 'FAIL';
    ｣;
    with Proc::Async.new: :out, :err, $*EXECUTABLE, $program.absolute {
        my $out-path := make-temp-file;
        my $err-path := make-temp-file;
        .bind-stdout: my $out-fh := $out-path.IO.open: :w, :!out-buffer;
        .bind-stderr: my $err-fh := $err-path.IO.open: :w, :!out-buffer;
        # .stdout(:bin).tap: { dd [.elems]; $out ~= .decode };
        # .stderr(:bin).tap: { dd [.elems]; $err ~= .decode };
        my $prom := .start;
        await .ready;

        repeat {
            $out-fh.flush;
            $err-fh.flush;
            dd [
            $out-path.lines,
            $err-path.lines,
        ]; sleep 1 } until $out-path.lines.contains: 'READY'; # started listening
        sleep .5;
        .kill: SIGINT; # should be caught
        sleep 2;
        repeat {
          $out-fh.flush;
          $err-fh.flush;
            dd $out-path.lines;
            dd $err-path.lines;
          sleep 1 } until $out-path.lines.contains: 'CAUGHT'; # await catching
        .kill: SIGINT; # should go through standard handler

        is (await $prom).signal, Signal::SIGINT, 'killed with right signal';
        is $err-path.slurp, '', 'nothing on STDERR';
        cmp-ok $out-path.slurp, '~~', {
            .contains: <CAUGHT PASS>.all & none 'FAIL'
        }, 'STDOUT contains only the stuff we expect';
    }
}






sub make-rand-path (--> IO::Path:D) {
    my $p = $*TMPDIR;
    # XXX TODO .resolve is broken on Windows in Rakudo; .resolve for all OSes
    # when it is fixed
    $p .= resolve unless $*DISTRO.is-win;
    $p.child: (
        'perl6_roast_',
        $*PROGRAM.basename, '_line',
        ((try callframe(3).code.line)||''), '_',
        rand,
        time,
    ).join.subst: :g, /\W/, '_';
}
my @FILES-FOR-make-temp-file;
my @DIRS-FOR-make-temp-dir;
END {
    unlink @FILES-FOR-make-temp-file;
    rmdir  @DIRS-FOR-make-temp-dir;
}
sub make-temp-path(|c) is export { make-temp-file |c }
sub make-temp-file
    (:$content where Any:U|Blob|Cool, Int :$chmod --> IO::Path:D) is export
{
    @FILES-FOR-make-temp-file.push: my \p = make-rand-path;
    with   $chmod   { p.spurt: $content // ''; p.chmod: $_ }
    orwith $content { p.spurt: $_ }
    p
}
sub make-temp-dir (Int $chmod? --> IO::Path:D) is export {
    @DIRS-FOR-make-temp-dir.push: my \p = make-rand-path;
    p.mkdir;
    p.chmod: $_ with $chmod;
    p
}
