sub foo(%h is copy [:$a = 1, *%]) { say %h.perl }; foo({})
