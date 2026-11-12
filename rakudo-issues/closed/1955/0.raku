# 1m46.017s
dd (1 + (.2801 / $_)) ** $_ with 100_000;

# 0.3s, where 0.1s is startup
dd (1 + (.2801e0 / $_)) ** $_ with 100_000;
