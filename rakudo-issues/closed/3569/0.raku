sub foo { state $++ }
&foo.wrap: -> { bar nextcallee };

proto sub bar(&)   { say $*THREAD.id ~ ' ' ~ {*} }
multi sub bar(&cb) { cb }

(race for ^1024 { start foo })».result;
