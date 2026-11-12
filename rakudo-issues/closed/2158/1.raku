run("curl", :enc<latin1>, :out, "-s", "https://www.google.com").out.slurp.chars.say
