given 'a' {
    succeed;
    CONTROL { when CX::Succeed { say 'seen succeed' } }
};
# OUTPUT: seen succeed
