await Promise.anyof(
    Promise.in(5).then: { note 'timed out' };
    start { atan2(1+2i, 3-1i) }.then: { say .result };
)
