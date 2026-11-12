$ RAKUDO_EXCEPTIONS_HANDLER=JSON ./perl6 -e 'proto z($, $) {*}; z ""'
Unhandled exception: No exception handler located for warn
   at SETTING::src/core/control.pm6:192  (./CORE.setting.moarvm:warn)
....
