# attack-04 — H3: Nat/U32 literal+pattern desugaring (Substrate run 1fb9b40a)
# #852: "a nat literal in a pattern ... was a closed proof of Empty".
# Nat > 2^48-1 desugars to U32.to_nat(Lit U32); two desugar paths meet at
# patterns over U32{data: Word(32n)}. Straddle the 256n boundary.
import Base

law lit_gap:
  for ~n: U32
  Empty

def lit_gap(n: U32):
  match n:
    case 255:
      Empty/mk
    case 256:
      Empty/mk
    case _:
      Empty/mk
