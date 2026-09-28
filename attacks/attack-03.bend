# attack-03 — H2: Data-domain smuggling -> Girard (SPECULATIVE, Substrate run 1fb9b40a)
# Kernel safety rests on live-affinity with Type:Type live in *1 : *1; the
# family/boxing boundary already overflowed once (#959). Try a Data type
# holding an arrow into Type, then self-apply at q=2.
import Base

type D is Data:
  Wrap{f: D -> Type}

def paradox(x: D):
  match x:
    case D/Wrap{f}:
      f x
