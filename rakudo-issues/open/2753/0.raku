sub { await start { return } }()
# OUTPUT: «MoarVM panic: Internal error: Unwound entire stack and missed handler␤»
