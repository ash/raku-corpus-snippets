class { has $.foo is rw  := Proxy.new: :STORE{;}, :FETCH{;} }

# ===SORRY!=== Error while compiling /home/zoffix/CPANPRC/Proxee/test.p6
# Cannot use := to initialize an attribute
# at /home/zoffix/CPANPRC/Proxee/test.p6:10
# ------>  rw  := Proxy.new: :STORE{;}, :FETCH{;} ⏏}
