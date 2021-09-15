from typing import Sequence
from tbnf import r, t

Stmt = Sequence[r.Prod | r.Import | r.Decl | t.Methods]
