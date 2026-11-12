sub x4 {
  CATCH {
    default {
      42;
      43
    }
  }
  die 'Boom';
}

say x4;

# output:
# Useless use of constant integer 42 in sink context (line 4)
# Nil
