use nqp; role Bar { method z { dd nqp::eqaddr(::?ROLE, Bar) } }; Bar.z
