import EventHorizon.Basic
-- The ledger at the Jordan point sees both eigenvalues: 2 log λ*, not log λ* (λ* = e).
example : 2 * Real.log (Real.exp 1) = Real.log (Real.exp 1) := by simp
