<div align="center">

# Beyond the Event Horizon: An Operator-First Theory of Persistent Geometry and Black Hole Dynamics — Lean proofs

[![Lean proof check](https://github.com/dicipler-pixel/event-horizon-lean/actions/workflows/build.yml/badge.svg)](https://github.com/dicipler-pixel/event-horizon-lean/actions/workflows/build.yml)
![Lean](https://img.shields.io/badge/Lean-v4.34.1-blue)
![Theorems](https://img.shields.io/badge/theorems-17-2EA043)
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
once: the metric blows up as `1/(6w₃)`, the transport operator becomes a Jordan block, and away
from the wall its spectrum is provably real. What survives the collapse is contour data such as
the trace-log ledger.

## What is proved

| Paper | Result | Theorem |
| :--- | :--- | :--- |
| Theorem 1 | The shape lift `hᵢ = eᵢ/(2√wᵢ)` gives `eᵢ²/(4wᵢ)`; the shear lift solves the lift equation, is horizontal, and has squared norm `1/(2(wᵢ+wⱼ))` (Bures weights) | `shape_lift`, `shear_lift`, `shear_values` |
| Theorem 2.1 | `g(E₂,E₂)·6w₃ = 1 + w₃(1/(4w₁) + 1/(4w₂)) → 1`: the metric blows up exactly as `1/(6w₃)` | `wall_metric`, `wall_metric_limit` |
| Theorem 2.3 | The discriminant of the transport block is a quadratic form whose determinant is exactly `16w₁w₂w₃`, so it is nonnegative and the spectrum is real on the whole regular stratum | `disc_form`, `disc_det`, `psd2`, `spectrum_real` |
| Theorem 2.3 | At `w₃ = 0` the block is triangular; under `t₁+t₂−2t₃ = (t₁−t₂)(w₁−w₂)` it is a genuine size-2 Jordan block | `wall_triangular`, `wall_jordan` |
| Sec. 2.1 | Non-normality needs both anisotropies: isotropic `T` or isotropic `W` gives a normal block | `normal_if_T_isotropic`, `normal_if_W_isotropic` |
| Sec. 4.2 | The ledger at the Jordan point is `2 log λ*`; the rank-one projector obeys `‖P₁‖·gap = √(gap² + c²) → |c|` | `ledger_at_jordan`, `projector_norm_gap`, `snapped_law` |

The file is [`EventHorizon/Basic.lean`](EventHorizon/Basic.lean). What is not proved is in
[`LIMITATIONS.md`](LIMITATIONS.md).

## How it is checked

Every push runs [the proof check](.github/workflows/build.yml): build against Lean v4.34.1 and
Mathlib v4.34.1, independent replay in Lean's kernel checker, an axiom audit (only `propext`,
`Classical.choice`, `Quot.sound`), and three deliberately false statements that must fail.

## The paper

*Beyond the Event Horizon: An Operator-First Theory of Persistent Geometry and Black Hole Dynamics*, Jeromie Beasley. DOI
[10.5281/zenodo.21147366](https://doi.org/10.5281/zenodo.21147366) (always opens the newest version).

## Licence

Copyright (c) 2026 Jeromie Beasley. Code and proofs: [MIT](LICENSE). Written text:
[CC BY 4.0](LICENSE-CC-BY-4.0.md). See [`LICENSING.md`](LICENSING.md). Citation metadata is in
[`CITATION.cff`](CITATION.cff); how AI tools were used is stated in [`AI_USE.md`](AI_USE.md).
