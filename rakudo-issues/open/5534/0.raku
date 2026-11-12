use NativeCall;

constant pid_t := int32;

# cw: This works for latest ubuntu. Replace the location of your libgtop, here!
constant gtop is export ='gtop-2.0',v11;

constant GLIBTOP_KERN_PROC_ALL is export = 0;

sub glibtop_init
  returns Pointer
  is      native(gtop)
  is      export
{ * }

sub glibtop_close
  is      native(gtop)
  is      export
{ * }

class glibtop_proclist is repr<CStruct> is export {
	has uint64 $.flags  is rw;
	has uint64 $.number is rw;
	has uint64 $.total  is rw;
	has uint64 $.size   is rw;
}

# cw: 216 determined from constants
class glibtop_proc_wd is repr<CStruct> is export {
	has uint64	$.flags;
	has uint32  $.number;
	HAS uint8   @!root[216] is CArray;
	HAS uint8   @!exe[216]  is CArray;

	submethod BUILD {
	 	# @!root[$_] = 0 for 215;
	 	#  @!exe[$_] = 0 for 215;
	}

	method root ($encoding = 'utf8') {
    my @r = @!root[^216];

		nativecast( Str, CArray[uint8].new(@r) );
	}

	method exe ($encoding = 'utf8') {
    my @e = @!exe[^216];

		nativecast( Str, CArray[uint8].new(@e) );
	}

}

sub glibtop_get_proclist (
  glibtop_proclist $buf,
  int64            $which,
  int64            $arg
)
  returns CArray[pid_t]
  is      native(gtop)
  is      export
{ * }

sub glibtop_get_proc_wd (glibtop_proc_wd $buf, pid_t $pid)
  returns CArray[ CArray[uint8] ]
  is      native(gtop)
  is      export
{ * }

multi sub CStringArrayToArray (CArray[Str] $sa) is export {
  CArrayToArray($sa)
}

multi sub CArrayToArray(CArray $ca) is export {
  return Nil unless $ca;
  my ($i, @a) = (0);
  while $ca[$i] {
    @a.push: $ca[$i].clone;
    $i++;
  }
  @a;
}

sub MAIN {

  glibtop_init();

  my uint64 ($w, $a) = (GLIBTOP_KERN_PROC_ALL, 0);

  my @pids = CArrayToArray(
    glibtop_get_proclist(
      (my $buf = glibtop_proclist.new),
      $w,
      $a
    )
  );

  say("Processes: { $buf.number }");
  for @pids {
    my pid_t $p = $_;

    my $dirs = glibtop_get_proc_wd(
      (my $buf2 = glibtop_proc_wd.new),
      $p
    );

    say qq:to/OUTPUT/
      Process #{ $p }:
        - root: { $buf2.root}
        -  exe: { $buf2.exe }
        - working directories:
          { @dirs.join("\n    - ") }
      OUTPUT

  glibtop_close();
}
