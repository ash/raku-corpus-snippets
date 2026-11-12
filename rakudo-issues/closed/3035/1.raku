signal(SIGHUP, SIGTERM); # ok
signal(SIGHUP, [SIGTERM]); # ok

# Cannot resolve caller signal(Array:D);
# none of these signatures match:
#     (Signal $signal, *@signals, :$scheduler = { ... })
signal([SIGHUP, SIGTERM]);
