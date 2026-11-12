use experimental :macros;
macro insert-succeed-handler {
    quasi {
        CONTROL { when CX::Succeed { say 'seen succeed' } }
    }
};

given 'a' {
    succeed;
    insert-succeed-handler;
};

# OUTPUT: succeed without when clause
            in block <unit> at inject-control-handler.raku line 9
