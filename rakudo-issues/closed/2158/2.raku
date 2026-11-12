run("curl", :out, "-s", "https://www.google.com").out.slurp(:bin).decode("utf8-c8").chars.say
