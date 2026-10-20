<div align="center">

# Beyond the Event Horizon: What Survives at a Rigidity Wall — Lean proofs

[![Lean proof check](https://github.com/dicipler-pixel/event-horizon-lean/actions/workflows/build.yml/badge.svg)](https://github.com/dicipler-pixel/event-horizon-lean/actions/workflows/build.yml)
![Lean](https://img.shields.io/badge/Lean-v4.34.1-blue)
![Theorems](https://img.shields.io/badge/theorems-40-2EA043)
![sorry](https://img.shields.io/badge/sorry-0-2EA043)
![Code: MIT](https://img.shields.io/badge/code-MIT-lightgrey)
![Text: CC BY 4.0](https://img.shields.io/badge/text-CC%20BY%204.0-lightgrey)
[![Paper DOI](https://img.shields.io/badge/paper-10.5281%2Fzenodo.21147366-blue)](https://doi.org/10.5281/zenodo.21147366)

Jeromie Beasley

</div>

---

## The idea in one line

Four-body shape space, with its own kinetic metric, is the Bures geometry of a qutrit's
states. Its only genuine wall is the coplanar stratum `w₃ = 0`, and three things happen there at
once: the metric blows up as `1/(6w₃)`, the transport block becomes triangular (a genuine Jordan
block under a further joint condition with `A₁₂ ≠ 0`), and away from the wall its discriminant is provably
nonnegative, so its spectrum is real. What survives the collapse is contour data such as
the trace-log ledger.

## What is proved

| Paper | Result | Theorem |
| :--- | :--- | :--- |
| Theorem 1 | The shape lift `hᵢ = eᵢ/(2√wᵢ)` gives `eᵢ²/(4wᵢ)`; the shear lift solves the lift equation, is horizontal, and has squared norm `1/(2(wᵢ+wⱼ))` (Bures weights), with numerical values at `w = (0.5, 0.3, 0.2)` | `shape_lift`, `shear_lift`, `shear_values` |
| Theorem 2.1 | `g(E₂,E₂)·6w₃ = 1 + w₃(1/(4w₁) + 1/(4w₂))`, and this closed form tends to `1` as `w₃ → 0` with `w₁, w₂` fixed: the metric blows up as `1/(6w₃)` | `wall_metric`, `wall_metric_limit` |
| Theorem 2.3 | The discriminant of the transport block is a quadratic form whose determinant is exactly `16w₁w₂w₃`, so it is nonnegative and the spectrum is real on the whole regular stratum | `disc_form`, `disc_det`, `psd2`, `spectrum_real` |
| Theorem 2.3 | At `w₃ = 0` the block is triangular; under `t₁+t₂−2t₃ = (t₁−t₂)(w₁−w₂)` its diagonal entries coincide at `λ* = 2t₃` and `(A − λ*)² = 0`, and if moreover `A₁₂ ≠ 0` it is a genuine size-2 Jordan block | `wall_triangular`, `wall_jordan` |
| Sec. 2.1 | Non-normality needs both anisotropies: isotropic `T` or isotropic `W` gives a normal block | `normal_if_T_isotropic`, `normal_if_W_isotropic` |
| Sec. 4.2 | The ledger at the Jordan point is `2 log λ*`; with the rank-one projector's Frobenius norm `√(1 + (c/g)²)` computed by hand, `‖P₁‖·g = √(g² + c²) → \|c\|` as `g → 0` | `ledger_at_jordan`, `projector_norm_gap`, `snapped_law` |

### Added in research edition 10

| Paper | Result | Theorem |
| :--- | :--- | :--- |
| Sec. 8.3, admittance | `√(a/b) · k = ω√(a − C)`: the transverse metric `g⊥ = b` cancels | `admittance` |
| Sec. 8.3, the step | Matching `u` and the flux gives `Γ = (Y₁ − Y₂)/(Y₁ + Y₂)`, `t = 2Y₁/(Y₁ + Y₂)` (complex admittances, so evanescent sides are included); flux balance; `Γ₂₁ = −Γ₁₂`; a matched load gives `Γ = 0`, a polar stratum `Γ = 1` | `step_matching`, `flux_balance`, `reciprocity`, `matched_load`, `polar_mirror` |
| Sec. 8.3, total reflection | Beyond the turning point (`Y₂ = iκ`) `\|Γ\|² = 1` exactly; the turning point `C > a₂` is the critical angle `sin²θ > a₂/a₁` | `total_reflection`, `turning_point` |
| Sec. 8.3, the gap form | `tanh(½ ln q) = (q − 1)/(q + 1)`; normal incidence `Γ = tanh(½ ln(√a₁/√a₂))`; with `√g∥ ∝ 1/Δ`, `Γ = tanh(½ ln(Δ₂/Δ₁))` | `tanh_half_log`, `normal_incidence`, `gap_form` |
| Sec. 8.3, the sine guard | The Gram determinant of a unit path and `∂ₓ` is `g∥ cos²θ = g∥ − C`; a positive quantum geometric tensor caps the Berry curvature at `2√(g∥ − C)` | `gram_det`, `sine_guard` |
| Sec. 7.1, the fermion record | `z = (1 − C)/C = e^x`; `Γ = 1 − 2C = tanh(x/2)`; `Γ = 0` only at `x = ħω/k_BT_H = 0`; particle–hole exchange sends `Γ` to `−Γ` | `fermion_impedance`, `fermion_smith`, `fermion_center`, `particle_hole` |
| Sec. 8.1, the photon ring | At `u₀ = 1/(3M)` a nudge grows by `e` per radian; a half orbit takes `3√3πM` and dims by `e^{−π}`; at a charged photon sphere the squared rate is `1 − 2Q²u₀²`, equal to `1` only when `Q = 0` and below `1` otherwise | `ring_rate_one`, `schwarzschild_photon_sphere`, `half_orbit`, `rn_rate_sq`, `rn_rate_one_iff`, `rn_rate_below` |

The files are [`EventHorizon/Basic.lean`](EventHorizon/Basic.lean) and
[`EventHorizon/Edition10.lean`](EventHorizon/Edition10.lean). What is not proved is in
[`LIMITATIONS.md`](LIMITATIONS.md).

## How it is checked

Every push runs [the proof check](.github/workflows/build.yml): build against Lean v4.34.1 and
Mathlib v4.34.1, independent replay in Lean's kernel checker, an axiom audit (only `propext`,
`Classical.choice`, `Quot.sound`), and five deliberately false statements that must fail.

## The paper

*Beyond the Event Horizon: What Survives at a Rigidity Wall* (research edition 10), Jeromie Beasley. DOI
[10.5281/zenodo.21147366](https://doi.org/10.5281/zenodo.21147366) (always opens the newest version).

## Licence

Copyright (c) 2026 Jeromie Beasley. Code and proofs: [MIT](LICENSE). Written text:
[CC BY 4.0](LICENSE-CC-BY-4.0.md). See [`LICENSING.md`](LICENSING.md). Citation metadata is in
[`CITATION.cff`](CITATION.cff); how AI tools were used is stated in [`AI_USE.md`](AI_USE.md).
