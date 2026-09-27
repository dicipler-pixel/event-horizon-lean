# What is not proved here

Lean proves exactly the statements written, under exactly the hypotheses written.

* Theorem 1 is proved as the lift equations and norms at the principal-frame point. The global
  isometry with the Bures–Wasserstein geometry is cited (Bhatia–Jain–Lim, Thanwerdas–Pennec,
  van Oostrum), not formalized.
* The O'Neill curvature (Sec. 2.2), its interior finiteness, and the wall constants
  `K₄₄w₃ → 0.0713`, `K₅₅w₃ → 0.1033`, `K₂₂w₃ → 0.701` are computations, not Lean proofs.
* The ledger is proved as `log det = 2 log λ*` for the triangular block. The contour-integral
  representation and the Kato bounds of Appendix A are standard and are cited, not formalized.
* Everything on the general-relativity side (Theorem 3's cited half, Conjecture 1, Secs. 5, 7
  and 8) is outside these proofs.
