/-
Beyond the Event Horizon: What Survives at a Rigidity Wall, research edition 10
(Jeromie Beasley, DOI 10.5281/zenodo.21147366): the exact results added in edition 10.

* Sec. 8.3 (reflection and refraction on the pullback metric `g = a dx² + b dy²`,
  `a = g∥`, `b = g⊥`, Clairaut constant `C = a sin²θ`):
  - the admittance `√(a/b) · k = ω√(a − C)`: the transverse metric `b` cancels;
  - matching `u` and the flux at a sharp step gives `Γ = (Y₁ − Y₂)/(Y₁ + Y₂)` and
    `t = 2Y₁/(Y₁ + Y₂)`, with flux balance, reciprocity, a matched load (`Γ = 0`) and a
    polar mirror (`Γ = 1`);
  - beyond the turning point (`Y₂` imaginary) `|Γ| = 1` exactly, and the turning point is the
    critical angle `sin²θ = a₂/a₁`;
  - at normal incidence `Γ = tanh(½ ln(√a₁/√a₂))`, and with `√g∥ ∝ 1/Δ` this is
    `Γ = tanh(½ ln(Δ₂/Δ₁))`;
  - the sine guard: the Gram determinant of a unit path and the symmetry direction is
    `g∥ − C = g∥ cos²θ`, and positivity of the quantum geometric tensor caps the Berry
    curvature at `2√(g∥ − C)`.
* Sec. 7.1, Eq. (fermionsmith): the fermion record's Smith coordinate
  `Γ = (z − 1)/(z + 1) = 1 − 2C = tanh(ω/2T_H)`, which is `0` only at `ω = 0`.
* Sec. 8.1 (the photon ring): a nudge grows by `e` per radian at `r = 3M`, so each half orbit
  dims an image by `e^{−π}` and delays it by `3√3πM`; for a charged hole the squared rate per
  radian at the photon sphere is `1 − 2Q²u₀²`, equal to `1` only when `Q = 0`.
-/
import Mathlib

namespace EventHorizon.Edition10

open Real

/-! ## Sec. 8.3: the admittance, and why `g⊥` drops out -/

/-- **The admittance (Eq. admittance).** Where `a = g∥` and `b = g⊥` are constant, the wave has
`k² = b ω²(a − C)/a`, and the flux carries the factor `√(a/b)`. Their product is
`Y = ω√(a − C)`: the transverse metric `b` cancels. -/
theorem admittance (a b C ω : ℝ) (ha : 0 < a) (hb : 0 < b) (hC : C ≤ a) (hω : 0 ≤ ω) :
    √(a / b) * √(b * (ω ^ 2 * (a - C) / a)) = ω * √(a - C) := by
  have h1 : a / b * (b * (ω ^ 2 * (a - C) / a)) = ω ^ 2 * (a - C) := by
    first
    | (field_simp; done)
    | (field_simp; ring)
  rw [← Real.sqrt_mul (div_nonneg ha.le hb.le), h1, Real.sqrt_mul (sq_nonneg ω),
    Real.sqrt_sq hω]

/-- **Matching at a sharp step (Eq. gammastep).** Continuity of `u` (`1 + r = t`) and of the
flux (`Y₁(1 − r) = Y₂ t`) fix the reflection and transmission amplitudes. The admittances are
complex so that an evanescent far side (`Y₂ = i√(C − a₂)`) is included. -/
theorem step_matching (Y1 Y2 r t : ℂ) (hs : Y1 + Y2 ≠ 0) (hu : 1 + r = t)
    (hF : Y1 * (1 - r) = Y2 * t) :
    r = (Y1 - Y2) / (Y1 + Y2) ∧ t = 2 * Y1 / (Y1 + Y2) := by
  subst hu
  constructor
  · rw [eq_div_iff hs]
    linear_combination (-1 : ℂ) * hF
  · rw [eq_div_iff hs]
    linear_combination (-1 : ℂ) * hF

/-- **Flux balance.** When both sides propagate (`Y₁, Y₂ > 0`),
`|Γ|² + (Y₂/Y₁)|t|² = 1`. -/
theorem flux_balance (Y1 Y2 : ℝ) (h1 : 0 < Y1) (h2 : 0 < Y2) :
    ((Y1 - Y2) / (Y1 + Y2)) ^ 2 + Y2 / Y1 * (2 * Y1 / (Y1 + Y2)) ^ 2 = 1 := by
  have hs : Y1 + Y2 ≠ 0 := by positivity
  have h1' : Y1 ≠ 0 := h1.ne'
  first
  | (field_simp; done)
  | (field_simp; ring)

/-- **Reciprocity at the step.** Sending the wave from the other side reverses the sign:
`Γ₂₁ = −Γ₁₂`. -/
theorem reciprocity (Y1 Y2 : ℂ) :
    (Y2 - Y1) / (Y2 + Y1) = -((Y1 - Y2) / (Y1 + Y2)) := by
  first
  | ring
  | (rw [add_comm Y2 Y1, ← neg_div, neg_sub])

/-- **A matched load reflects nothing.** Equal admittances give `Γ = 0`; this is the class
of the horizon in the paper's one-chart reading. -/
theorem matched_load (Y : ℂ) : (Y - Y) / (Y + Y) = 0 := by
  simp

/-- **A polar stratum is a mirror.** Where the far admittance vanishes, `Γ = 1`. -/
theorem polar_mirror (Y : ℂ) (h : Y ≠ 0) : (Y - 0) / (Y + 0) = 1 := by
  simp [h]

/-- **Total reflection beyond the turning point.** With `Y₁ = y > 0` real and the far side
evanescent, `Y₂ = iκ`, the reflection coefficient has `|Γ|² = 1` exactly. -/
theorem total_reflection (y κ : ℝ) (hy : 0 < y) :
    Complex.normSq (((y : ℂ) - κ * Complex.I) / ((y : ℂ) + κ * Complex.I)) = 1 := by
  have hne : (y : ℂ) + κ * Complex.I ≠ 0 := by
    intro h
    have := congrArg Complex.re h
    simp at this
    linarith
  have hsq : Complex.normSq ((y : ℂ) - κ * Complex.I) = Complex.normSq ((y : ℂ) + κ * Complex.I) := by
    first
    | (simp [Complex.normSq_apply]; done)
    | (simp [Complex.normSq_apply]; ring)
  rw [map_div₀, hsq, div_self]
  exact (Complex.normSq_pos.mpr hne).ne'

/-- **The turning point is the critical angle.** With `C = a₁ sin²θ`, the far side turns
the wave back (`C > a₂`) exactly when `sin²θ > a₂/a₁`. -/
theorem turning_point (a1 a2 s : ℝ) (ha1 : 0 < a1) : a2 < a1 * s ↔ a2 / a1 < s := by
  rw [div_lt_iff₀ ha1, mul_comm]

/-! ## Sec. 8.3: the gap form -/

/-- `tanh(½ ln q) = (q − 1)/(q + 1)` for `q > 0`. -/
theorem tanh_half_log (q : ℝ) (hq : 0 < q) : Real.tanh (Real.log q / 2) = (q - 1) / (q + 1) := by
  rw [Real.tanh_eq_sinh_div_cosh, Real.sinh_eq, Real.cosh_eq, Real.exp_neg]
  set e := Real.exp (Real.log q / 2) with he
  have hs : e * e = q := by rw [he, ← Real.exp_add, add_halves, Real.exp_log hq]
  have hp : 0 < e := Real.exp_pos _
  rw [← hs]
  have hp' : e ≠ 0 := hp.ne'
  have hq1 : e * e + 1 ≠ 0 := by positivity
  first
  | (field_simp; done)
  | (field_simp; ring)

/-- **Normal incidence.** With `C = 0` the admittance is `ω√a`, and the step reflects with
`Γ = (√a₁ − √a₂)/(√a₁ + √a₂) = tanh(½ ln(√a₁/√a₂))`. -/
theorem normal_incidence (a1 a2 : ℝ) (h1 : 0 < a1) (h2 : 0 < a2) :
    (√a1 - √a2) / (√a1 + √a2) = Real.tanh (Real.log (√a1 / √a2) / 2) := by
  have s1 : 0 < √a1 := Real.sqrt_pos.mpr h1
  have s2 : 0 < √a2 := Real.sqrt_pos.mpr h2
  rw [tanh_half_log _ (div_pos s1 s2)]
  have s2' : √a2 ≠ 0 := s2.ne'
  have hs : √a1 + √a2 ≠ 0 := by positivity
  first
  | (field_simp; done)
  | (field_simp; ring)

/-- **The gap form (Eq. gammagap).** Where the index is set by a spectral gap,
`√g∥ ∝ 1/Δ`, normal incidence reflects with `Γ = tanh(½ ln(Δ₂/Δ₁))`. -/
theorem gap_form (D1 D2 : ℝ) (h1 : 0 < D1) (h2 : 0 < D2) :
    (1 / D1 - 1 / D2) / (1 / D1 + 1 / D2) = Real.tanh (Real.log (D2 / D1) / 2) := by
  rw [tanh_half_log _ (div_pos h2 h1)]
  have h1' : D1 ≠ 0 := h1.ne'
  have h2' : D2 ≠ 0 := h2.ne'
  have hs : D1 + D2 ≠ 0 := by positivity
  first
  | (field_simp; done)
  | (field_simp; ring)

/-! ## Sec. 8.3: the sine guard -/

/-- **The Gram determinant (Eq. sineguard, left).** For a unit path direction `V` at angle
`θ` and the symmetry direction `∂ₓ`, `g(V,∂ₓ) = √g∥ sin θ` and `g(∂ₓ,∂ₓ) = g∥`, so the Gram
determinant is `g∥ − C = g∥ cos²θ`. -/
theorem gram_det (a θ : ℝ) (ha : 0 ≤ a) :
    (!![1, √a * Real.sin θ; √a * Real.sin θ, a] : Matrix (Fin 2) (Fin 2) ℝ).det
      = a * Real.cos θ ^ 2 := by
  rw [Matrix.det_fin_two_of]
  have h := Real.sq_sqrt ha
  have hsc := Real.sin_sq_add_cos_sq θ
  linear_combination (-(Real.sin θ) ^ 2) * h + (-a) * hsc

/-- **The curvature ceiling (Eq. sineguard, right).** If the quantum geometric tensor is
positive on a pair of directions, its determinant gives `Ω²/4 ≤ g₁₁g₂₂ − g₁₂²`, and then
`|Ω| ≤ 2√(g₁₁g₂₂ − g₁₂²)`; with the Gram determinant above this is `|Ω| ≤ 2√(g∥ − C)`. -/
theorem sine_guard (g11 g12 g22 Ω : ℝ) (hdet : Ω ^ 2 / 4 ≤ g11 * g22 - g12 ^ 2) :
    |Ω| ≤ 2 * √(g11 * g22 - g12 ^ 2) := by
  have hq : (Ω / 2) ^ 2 ≤ g11 * g22 - g12 ^ 2 := by
    have : (Ω / 2) ^ 2 = Ω ^ 2 / 4 := by ring
    linarith
  have h1 : |Ω / 2| ≤ √(g11 * g22 - g12 ^ 2) := Real.abs_le_sqrt hq
  rw [abs_div, abs_two] at h1
  linarith

/-! ## Sec. 7.1: the fermion record as a Smith coordinate -/

/-- **The impedance of the fermion record.** With Fermi–Dirac occupation
`C = 1/(e^x + 1)`, `x = ħω/k_BT_H`, the impedance `z = (1 − C)/C` is `e^x`. -/
theorem fermion_impedance (x : ℝ) :
    (1 - 1 / (Real.exp x + 1)) / (1 / (Real.exp x + 1)) = Real.exp x := by
  have hp : 0 < Real.exp x := Real.exp_pos x
  have hne : Real.exp x + 1 ≠ 0 := by positivity
  first
  | (field_simp; done)
  | (field_simp; ring)

/-- **The fermion Smith coordinate (Eq. fermionsmith).** `Γ = 1 − 2C = tanh(x/2)`. -/
theorem fermion_smith (x : ℝ) : 1 - 2 * (1 / (Real.exp x + 1)) = Real.tanh (x / 2) := by
  have h := tanh_half_log (Real.exp x) (Real.exp_pos x)
  rw [Real.log_exp] at h
  rw [h]
  have hp : 0 < Real.exp x := Real.exp_pos x
  have hne : Real.exp x + 1 ≠ 0 := by positivity
  first
  | (field_simp; done)
  | (field_simp; ring)

/-- **The centre of the chart.** The fermion record's `Γ` vanishes only at zero frequency. -/
theorem fermion_center (x : ℝ) : 1 - 2 * (1 / (Real.exp x + 1)) = 0 ↔ x = 0 := by
  have hp : 0 < Real.exp x := Real.exp_pos x
  have hne : Real.exp x + 1 ≠ 0 := by positivity
  constructor
  · intro h
    have h' : Real.exp x = 1 := by
      have e : 1 - 2 * (1 / (Real.exp x + 1)) = (Real.exp x - 1) / (Real.exp x + 1) := by
        first
        | (field_simp; done)
        | (field_simp; ring)
      rw [e, div_eq_zero_iff] at h
      rcases h with h | h
      · linarith
      · exact absurd h hne
    simpa using h'
  · rintro rfl
    norm_num

/-- **Particle–hole exchange.** `C ↦ 1 − C` sends `Γ = 1 − 2C` to `−Γ`. -/
theorem particle_hole (C : ℝ) : 1 - 2 * (1 - C) = -(1 - 2 * C) := by
  ring

/-! ## Sec. 8.1: the photon ring -/

/-- **Growth by `e` per radian.** In the orbit equation `u'' + u = 3Mu²` the photon ring sits
at `u₀ = 1/(3M)`; a nudge obeys `δ'' = (6Mu₀ − 1)δ = δ`, so it grows by `e` per radian. -/
theorem ring_rate_one (M : ℝ) (hM : M ≠ 0) : 6 * M * (1 / (3 * M)) - 1 = 1 := by
  first
  | (field_simp; done)
  | (field_simp; ring)
  | (field_simp; norm_num)

/-- **The photon sphere.** `u₀ = 1/(3M)` solves `1 − 3Mu + 2Q²u² = 0` when `Q = 0`. -/
theorem schwarzschild_photon_sphere (M : ℝ) (hM : M ≠ 0) :
    1 - 3 * M * (1 / (3 * M)) + 2 * 0 ^ 2 * (1 / (3 * M)) ^ 2 = 0 := by
  first
  | (field_simp; done)
  | (field_simp; ring)
  | (field_simp; norm_num)

/-- **Dimming and delay per half orbit.** With growth rate `λ` equal to the orbital rate
`Ω = 1/(3√3M)`, a half orbit takes `π/Ω = 3√3πM`, and the image dims by
`exp(−λ · π/Ω) = e^{−π}`. -/
theorem half_orbit (M : ℝ) (hM : M ≠ 0) :
    Real.pi / (1 / (3 * √3 * M)) = 3 * √3 * Real.pi * M ∧
      Real.exp (-((1 / (3 * √3 * M)) * (Real.pi / (1 / (3 * √3 * M))))) = Real.exp (-Real.pi) := by
  have h3 : √3 ≠ 0 := by positivity
  have hΩ : (1 / (3 * √3 * M)) ≠ 0 := by
    have : 3 * √3 * M ≠ 0 := by
      apply mul_ne_zero (mul_ne_zero (by norm_num) h3) hM
    exact one_div_ne_zero this
  constructor
  · first
    | (field_simp; done)
    | (field_simp; ring)
  · congr 1
    first
    | (field_simp; done)
    | (field_simp; ring)
    | (rw [mul_div_cancel₀ _ hΩ])

/-- **The charged hole.** At the Reissner–Nordström photon sphere, `1 − 3Mu₀ + 2Q²u₀² = 0`,
the squared growth rate per radian `6Mu₀ − 6Q²u₀² − 1` equals `1 − 2Q²u₀²`. -/
theorem rn_rate_sq (M Q u : ℝ) (h : 1 - 3 * M * u + 2 * Q ^ 2 * u ^ 2 = 0) :
    6 * M * u - 6 * Q ^ 2 * u ^ 2 - 1 = 1 - 2 * Q ^ 2 * u ^ 2 := by
  linear_combination (-2 : ℝ) * h

/-- **`e^{−π}` belongs to the uncharged hole.** At the photon sphere (`u₀ ≠ 0`) the growth per
radian is `1` exactly when `Q = 0`. -/
theorem rn_rate_one_iff (M Q u : ℝ) (hu : u ≠ 0) (h : 1 - 3 * M * u + 2 * Q ^ 2 * u ^ 2 = 0) :
    6 * M * u - 6 * Q ^ 2 * u ^ 2 - 1 = 1 ↔ Q = 0 := by
  rw [rn_rate_sq M Q u h]
  constructor
  · intro h'
    have h2 : Q ^ 2 * u ^ 2 = 0 := by linarith
    have hu2 : u ^ 2 ≠ 0 := pow_ne_zero 2 hu
    have hQ2 : Q ^ 2 = 0 := (mul_eq_zero.mp h2).resolve_right hu2
    first
    | exact (pow_eq_zero_iff two_ne_zero).mp hQ2
    | simpa using hQ2
  · rintro rfl
    ring

/-- **Charge slows the ring.** For `Q ≠ 0` the squared growth per radian is below `1`, so each
half orbit dims an image by less than `e^{−π}`. -/
theorem rn_rate_below (M Q u : ℝ) (hQ : Q ≠ 0) (hu : u ≠ 0)
    (h : 1 - 3 * M * u + 2 * Q ^ 2 * u ^ 2 = 0) :
    6 * M * u - 6 * Q ^ 2 * u ^ 2 - 1 < 1 := by
  rw [rn_rate_sq M Q u h]
  have hQ2 : 0 < Q ^ 2 := lt_of_le_of_ne (sq_nonneg Q) (Ne.symm (pow_ne_zero 2 hQ))
  have hu2 : 0 < u ^ 2 := lt_of_le_of_ne (sq_nonneg u) (Ne.symm (pow_ne_zero 2 hu))
  have := mul_pos hQ2 hu2
  linarith

end EventHorizon.Edition10
