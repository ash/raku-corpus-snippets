sub s(:$arg) {};
say %(:arg(3)) ~~ &s.signature; # True
say &s.^find_method('CALL-ME'); # (Mu)

&s does role r { submethod CALL-ME(|) {} };
say %(:arg(3)) ~~ &s.signature; # False
say &s.^find_method('CALL-ME'); # CALL-ME

# even .cando does't work
&s.cando(%(:arg(3)).Capture); # `Cannot invoke object with invocation handler in this context`
