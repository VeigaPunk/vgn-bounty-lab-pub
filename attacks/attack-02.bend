# attack-02 — H1: law-statement divergence via ~ templates (Substrate run 1fb9b40a)
# Templates minted closed Empty twice pre-kernel (#902, #905). A ~ in the LAW
# STATEMENT is where frontend and kernel can be shown different claims.
import Base

law boom:
  for ~T: Type
  Empty

def boom(~T):
  Empty.absurd(Type, T, %boom_inst(T) : {_ == _ : Type})
