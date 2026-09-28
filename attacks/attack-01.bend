# attack-01: native-number totality probe (SPECULATIVE — see fleet log attack research)
# If --verdict accepts a recursive definition over native F32/Nat that reduces
# to an inhabitant of Empty via non-terminating rewrite, the kernel leaks.
type Empty { }
def run () -> Empty:
  bend x = 0:
    case x < 1:
      return Empty/mk
    else:
     recurse
