run("curl", :enc<utf8-c8>, :out, "-s", "https://www.google.com").out.slurp.chars.say
