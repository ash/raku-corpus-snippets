  # use nqp;
  # use QAST:from<NQP>;
  BEGIN $*LANG.refine_slang: 'MAIN', role {},
   role {
      method methodop($/) {
  #         say($/);
  #        callsame;
       }
   };

  5.say;
 # QAST::IVal.new(:value(666));
