# What is not proved here

Lean proves exactly the statements written, under exactly the hypotheses written.

* Theorem 1 is proved as the lift equations and norms at the principal-frame point. The global
  isometry with the Bures–Wasserstein geometry is cited (Bhatia–Jain–Lim, Thanwerdas–Pennec,
  van Oostrum), not formalized.
* The O'Neill curvature (Sec. 2.2), its interior finiteness, and the wall constants
  `K₄₄w₃ → 0.0713`, `K₅₅w₃ → 0.1033`, `K₂₂w₃ → 0.701` are computations, not Lean proofs.
* Theorem 2.1's limit is proved for the closed form `1 + w₃(1/(4w₁) + 1/(4w₂))` with `w₁, w₂`
  fixed. Together with `wall_metric` this gives `g(E₂,E₂)·6w₃ → 1`, but that combined limit is
  not stated as a theorem.
* Theorem 2.3's reality is proved as `disc ≥ 0` on the simplex, where
  `disc = (A₁₁ − A₂₂)² + 4A₁₂A₂₁`. That a nonnegative discriminant makes the eigenvalues of the
  real 2×2 block real is the quadratic formula and is not formalized. Nor is the statement that
  exceptional points occur only on the boundary strata.
* `wall_jordan` gives a genuine Jordan block only when `A₁₂ ≠ 0`. Under the joint condition
  alone, `t₁ = t₂` forces `t₁ = t₂ = t₃` and the block is scalar.
* The ledger is proved as `log det = 2 log λ*` for the triangular block. The contour-integral
  representation and the Kato bounds of Appendix A are standard and are cited, not formalized.
* The rank-one projector of Sec. 4.2 is not constructed in Lean. `projector_norm_gap` is the
  scalar identity `√(1 + (c/g)²)·g = √(g² + c²)` for its hand-computed Frobenius norm, and
  `snapped_law` is the limit `√(g² + c²) → |c|`.
* Edition 10, Sec. 8.3: the wave equation on the pullback metric and its plane-wave solutions
  are derived in the paper, not in Lean. Lean proves the algebra that follows from them: the
  admittance cancels `b`, matching gives `Γ` and `t`, and the consequences listed in the README.
  The near-threshold expansion `Γ = 1 − 2√(a₂ − C)/√(a₁ − C) + O(a₂ − C)` and the smooth-layer
  convergence (RS-03) are computations, not Lean proofs.
* `sine_guard` takes the positivity of the quantum geometric tensor on the pair of directions
  as its hypothesis, in the form `Ω²/4 ≤ g₁₁g₂₂ − g₁₂²`; that positivity is cited from the IQGT
  paper. That two-level families sit on the ceiling is measured (V10-PUSH), not proved here.
* `fermion_smith` starts from the Fermi–Dirac occupation `C = 1/(e^x + 1)`; the partial trace
  that produces it is a computation (V10-PUSH, BH-OFFSET-15).
* The photon-ring theorems are the algebra of the linearised orbit equation at the photon
  sphere. The orbit equation, the Reissner–Nordström photon-sphere condition, and the nonlinear
  orbits (`0.968` at `Q = 0.5M`, `0.832` at `Q = 0.9M`) are not formalized.
* Everything on the general-relativity side (Theorem 3's cited half, Conjecture 1, Secs. 5, 7
  and 8) is outside these proofs.
