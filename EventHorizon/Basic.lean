/-
Beyond the Event Horizon: Persistent Operator Structure at Rigidity Walls — from Four-Body Shape
Space to Black-Hole Ringdown (Jeromie Beasley, DOI 10.5281/zenodo.21147366): the exact results
on the shape-space side.

Shape space `Σ₄ = {G ⪰ 0, Tr G = 1}` in the principal frame `W = diag(w₁, w₂, w₃)`, `Σ wᵢ = 1`;
Jacobi matrix `X = diag(√wᵢ)`.

* Theorem 1 (the quotient metric): the horizontal lifts solve `XᵀH + HᵀX = E` with `XHᵀ`
  symmetric, and give `g_shape = Σ (E)ᵢᵢ²/(4wᵢ)`, `g_shear = 1/(2(wᵢ + wⱼ))` — the Bures weights.
* Theorem 2.1: `g(E₂, E₂) · 6w₃ = 1 + w₃(1/(4w₁) + 1/(4w₂)) → 1`: the metric blows up as
  `1/(6w₃)` at the coplanar wall.
* Eq. (2) and Theorem 2.3: the audited transport shape block; its discriminant is a quadratic
  form in `(t₁+t₂−2t₃, t₁−t₂)` with determinant exactly `16w₁w₂w₃ ≥ 0`, so the spectrum is real
  on the whole regular stratum; at `w₃ = 0` the block is triangular, and under the joint
  condition `t₁+t₂−2t₃ = (t₁−t₂)(w₁−w₂)` it is a genuine size-2 Jordan block.
* Sec. 2.1: non-normality needs both anisotropies (isotropic `T` or isotropic `W` gives a normal
  block).
* Sec. 4.2: the contour ledger at the Jordan point is `2 log λ*` (determinant `λ*²`), and the
  rank-one projector obeys `‖P₁‖ · gap = √(gap² + c²) → |c|` — the snapped law.
-/
import Mathlib

namespace EventHorizon

open Real Filter Topology Matrix

/-! ## Theorem 1: the quotient metric -/

/-- **Theorem 1, shape directions.** The diagonal lift `hᵢ = eᵢ/(2√wᵢ)` satisfies
`2√wᵢ hᵢ = eᵢ` (the equation `XᵀH + HᵀX = E` on the diagonal) and contributes `eᵢ²/(4wᵢ)`. -/
theorem shape_lift (w e : ℝ) (hw : 0 < w) :
    2 * √w * (e / (2 * √w)) = e ∧ (e / (2 * √w)) ^ 2 = e ^ 2 / (4 * w) := by
  have hs : 0 < √w := Real.sqrt_pos.mpr hw
  have hs2 : √w ^ 2 = w := Real.sq_sqrt hw.le
  constructor
  · field_simp
  · rw [div_pow, mul_pow, hs2]; norm_num

/-- **Theorem 1, shear directions.** For the `(ij)` shear direction, the lift
`Hᵢⱼ = √wᵢ/(√2(wᵢ+wⱼ))`, `Hⱼᵢ = √wⱼ/(√2(wᵢ+wⱼ))` solves `√wᵢHᵢⱼ + √wⱼHⱼᵢ = 1/√2`, is
horizontal (`√wᵢHⱼᵢ = √wⱼHᵢⱼ`), and has squared norm `1/(2(wᵢ+wⱼ))`. -/
theorem shear_lift (wi wj : ℝ) (hi : 0 < wi) (hj : 0 < wj) :
    let s := wi + wj
    let Hij := √wi / (√2 * s)
    let Hji := √wj / (√2 * s)
    √wi * Hij + √wj * Hji = 1 / √2 ∧ √wi * Hji = √wj * Hij ∧ Hij ^ 2 + Hji ^ 2 = 1 / (2 * s) := by
  intro s Hij Hji
  have hs : 0 < s := by positivity
  have h2 : (0 : ℝ) < √2 := by positivity
  have hwi : √wi ^ 2 = wi := Real.sq_sqrt hi.le
  have hwj : √wj ^ 2 = wj := Real.sq_sqrt hj.le
  have h22 : √2 ^ 2 = 2 := Real.sq_sqrt (by norm_num)
  refine ⟨?_, ?_, ?_⟩
  · simp only [Hij, Hji]
    field_simp
    rw [hwi, hwj]
  · simp only [Hij, Hji]; ring
  · simp only [Hij, Hji, div_pow, mul_pow, hwi, hwj, h22]
    field_simp
    ring

/-- The shape metric `Σ eᵢ²/(4wᵢ)` in the direction `E₂ = diag(1, 1, −2)/√6`. -/
noncomputable def g22 (w1 w2 w3 : ℝ) : ℝ :=
  (1 / 6) * (1 / (4 * w1)) + (1 / 6) * (1 / (4 * w2)) + (4 / 6) * (1 / (4 * w3))

/-- **Theorem 2.1 (metric blow-up, exact).** `g(E₂,E₂) · 6w₃ = 1 + w₃(1/(4w₁) + 1/(4w₂))`. -/
theorem wall_metric (w1 w2 w3 : ℝ) (h1 : w1 ≠ 0) (h2 : w2 ≠ 0) (h3 : w3 ≠ 0) :
    g22 w1 w2 w3 * (6 * w3) = 1 + w3 * (1 / (4 * w1) + 1 / (4 * w2)) := by
  unfold g22
  field_simp
  ring

/-- **Theorem 2.1, the limit.** `g(E₂,E₂) · 6w₃ → 1` as `w₃ → 0`. -/
theorem wall_metric_limit (w1 w2 : ℝ) :
    Tendsto (fun w3 => 1 + w3 * (1 / (4 * w1) + 1 / (4 * w2))) (𝓝 0) (𝓝 1) := by
  have h : Continuous fun w3 : ℝ => 1 + w3 * (1 / (4 * w1) + 1 / (4 * w2)) := by fun_prop
  simpa using h.tendsto 0

/-- **Sec. 1, numerical checks.** At `w = (0.5, 0.3, 0.2)`: `g₃₃ = 0.625`, `g₄₄ = 5/7`,
`g₅₅ = 1`. -/
theorem shear_values :
    (1 : ℝ) / (2 * (0.5 + 0.3)) = 0.625 ∧ (1 : ℝ) / (2 * (0.5 + 0.2)) = 5 / 7 ∧
      (1 : ℝ) / (2 * (0.3 + 0.2)) = 1 := by
  norm_num

/-! ## Eq. (2): the transport shape block and the reality theorem -/

/-- The audited transport shape block (Eq. 2). -/
noncomputable def block (t1 t2 t3 w1 w2 w3 : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  !![(t1 + t2) - (t1 - t2) * (w1 - w2), ((t1 - t2) - (t1 + t2 - 2 * t3) * (w1 - w2)) / √3;
     √3 * (t1 - t2) * w3, 2 * t3 + w3 * (t1 + t2 - 2 * t3)]

/-- The discriminant `(A₁₁ − A₂₂)² + 4A₁₂A₂₁` of a 2×2 block. -/
def disc (M : Matrix (Fin 2) (Fin 2) ℝ) : ℝ := (M 0 0 - M 1 1) ^ 2 + 4 * (M 0 1 * M 1 0)

theorem sqrt3_ne : (√3 : ℝ) ≠ 0 := by positivity

/-- **The discriminant as a quadratic form.** With `S = t₁+t₂−2t₃`, `a = t₁−t₂`,
`δ = w₁−w₂`: `disc = (1−w₃)²S² − 2δ(1+w₃)Sa + (δ²+4w₃)a²`. -/
theorem disc_form (t1 t2 t3 w1 w2 w3 : ℝ) :
    disc (block t1 t2 t3 w1 w2 w3) =
      (1 - w3) ^ 2 * (t1 + t2 - 2 * t3) ^ 2
        - 2 * (w1 - w2) * (1 + w3) * ((t1 + t2 - 2 * t3) * (t1 - t2))
        + ((w1 - w2) ^ 2 + 4 * w3) * (t1 - t2) ^ 2 := by
  unfold disc block
  simp only [of_apply, cons_val', cons_val_zero, cons_val_one, empty_val', cons_val_fin_one,
    head_cons, head_fin_const]
  have h3 : √3 ≠ 0 := sqrt3_ne
  field_simp
  ring

/-- **The determinant is `16 w₁w₂w₃`.** On the simplex `w₁ + w₂ + w₃ = 1`, the determinant of
the discriminant's quadratic form is exactly `16w₁w₂w₃`. -/
theorem disc_det (w1 w2 w3 : ℝ) (hsum : w1 + w2 + w3 = 1) :
    (1 - w3) ^ 2 * ((w1 - w2) ^ 2 + 4 * w3) - ((w1 - w2) * (1 + w3)) ^ 2 = 16 * w1 * w2 * w3 := by
  have : w3 = 1 - w1 - w2 := by linarith
  subst this
  ring

/-- A 2×2 quadratic form with nonnegative diagonal and nonnegative determinant is nonnegative. -/
theorem psd2 (p q r x y : ℝ) (hp : 0 ≤ p) (hr : 0 ≤ r) (hd : q ^ 2 ≤ p * r) :
    0 ≤ p * x ^ 2 - 2 * q * (x * y) + r * y ^ 2 := by
  rcases hp.lt_or_eq with hp' | hp'
  · have h : 0 ≤ p * (p * x ^ 2 - 2 * q * (x * y) + r * y ^ 2) := by
      nlinarith [sq_nonneg (p * x - q * y), mul_nonneg (sub_nonneg.mpr hd) (sq_nonneg y)]
    exact (mul_nonneg_iff_of_pos_left hp').mp h
  · subst hp'
    have hq : q = 0 := by nlinarith [sq_nonneg q]
    subst hq
    nlinarith [mul_nonneg hr (sq_nonneg y)]

/-- **Theorem 2.3, reality.** On the shape simplex (`wᵢ ≥ 0`, `Σwᵢ = 1`) the discriminant of the
transport block is nonnegative, so its spectrum is real on the entire regular stratum and
exceptional points can only occur on the boundary strata. -/
theorem spectrum_real (t1 t2 t3 w1 w2 w3 : ℝ) (h1 : 0 ≤ w1) (h2 : 0 ≤ w2) (h3 : 0 ≤ w3)
    (hsum : w1 + w2 + w3 = 1) : 0 ≤ disc (block t1 t2 t3 w1 w2 w3) := by
  rw [disc_form]
  have hdet := disc_det w1 w2 w3 hsum
  have h16 : 0 ≤ 16 * w1 * w2 * w3 := by positivity
  have := psd2 ((1 - w3) ^ 2) ((w1 - w2) * (1 + w3)) ((w1 - w2) ^ 2 + 4 * w3)
    (t1 + t2 - 2 * t3) (t1 - t2) (sq_nonneg _) (by positivity) (by nlinarith)
  nlinarith [this]

/-- **Theorem 2.3, the wall is triangular.** At `w₃ = 0` the back-coupling `A₂₁` vanishes. -/
theorem wall_triangular (t1 t2 t3 w1 w2 : ℝ) : block t1 t2 t3 w1 w2 0 1 0 = 0 := by
  simp [block]

/-- **Theorem 2.3, Jordan blocks.** At `w₃ = 0`, under the joint condition
`t₁+t₂−2t₃ = (t₁−t₂)(w₁−w₂)`, the two diagonal entries coincide at `λ* = 2t₃`, so
`(A − λ*)² = 0`; if moreover `A₁₂ ≠ 0` then `A − λ* ≠ 0`: a genuine size-2 Jordan block. -/
theorem wall_jordan (t1 t2 t3 w1 w2 : ℝ)
    (hJ : t1 + t2 - 2 * t3 = (t1 - t2) * (w1 - w2)) :
    let N := block t1 t2 t3 w1 w2 0 - (2 * t3) • (1 : Matrix (Fin 2) (Fin 2) ℝ)
    N * N = 0 ∧ (block t1 t2 t3 w1 w2 0 0 1 ≠ 0 → N ≠ 0) := by
  intro N
  have hdiag : (t1 + t2) - (t1 - t2) * (w1 - w2) = 2 * t3 := by linarith
  have hN : N = !![0, ((t1 - t2) - (t1 + t2 - 2 * t3) * (w1 - w2)) / √3; 0, 0] := by
    ext i j
    fin_cases i <;> fin_cases j <;> simp [N, block, hdiag]
  refine ⟨?_, ?_⟩
  · rw [hN]; ext i j; fin_cases i <;> fin_cases j <;> simp [Matrix.mul_apply, Fin.sum_univ_two]
  · intro h hN0
    apply h
    have := congrFun (congrFun hN0 0) 1
    rw [hN] at this
    simpa [block] using this

/-- **Non-normality needs both anisotropies: isotropic `T`.** With `t₁ = t₂ = t₃` the block is
diagonal, hence normal. -/
theorem normal_if_T_isotropic (t w1 w2 w3 : ℝ) :
    block t t t w1 w2 w3 0 1 = 0 ∧ block t t t w1 w2 w3 1 0 = 0 := by
  constructor <;>
    simp only [block, of_apply, cons_val', cons_val_zero, cons_val_one, empty_val',
      cons_val_fin_one, head_cons, head_fin_const] <;> ring

/-- **Non-normality needs both anisotropies: isotropic `W`.** With `w₁ = w₂ = w₃ = 1/3` the
block is symmetric (`A₁₂ = A₂₁`), hence normal. -/
theorem normal_if_W_isotropic (t1 t2 t3 : ℝ) :
    block t1 t2 t3 (1 / 3) (1 / 3) (1 / 3) 0 1 = block t1 t2 t3 (1 / 3) (1 / 3) (1 / 3) 1 0 := by
  simp only [block, of_apply, cons_val', cons_val_zero, cons_val_one, empty_val',
    cons_val_fin_one, head_cons, head_fin_const]
  have h3 : √3 ^ 2 = 3 := Real.sq_sqrt (by norm_num)
  have h3' : √3 ≠ 0 := sqrt3_ne
  field_simp
  first
  | linear_combination (-(t1 - t2)) * h3
  | linear_combination (t1 - t2) * h3
  | (rw [h3]; ring)

/-! ## Sec. 4.2: the ledger at the Jordan point, and the snapped law -/

/-- **The ledger at the defective point.** A 2×2 block with both diagonal entries `λ*` and a
zero back-coupling has determinant `λ*²`, so its trace-log ledger `log det` is `2 log λ*`, with no
reference to eigenvectors. -/
theorem ledger_at_jordan (lam c : ℝ) (hlam : 0 < lam) :
    Real.log (!![lam, c; 0, lam] : Matrix (Fin 2) (Fin 2) ℝ).det = 2 * Real.log lam := by
  rw [det_fin_two_of, show lam * lam - c * 0 = lam ^ 2 by ring, Real.log_pow]
  try norm_num

/-- **The snapped law.** For the triangular block `[[λ, c], [0, λ+g]]` the rank-one projector
onto the `λ` eigenline is `[[1, −c/g], [0, 0]]`; its Frobenius norm times the gap is
`√(g² + c²)`, which tends to `|c|` as `g → 0`: the blow-up constant is the Jordan coupling. -/
theorem snapped_law (c : ℝ) :
    Tendsto (fun g : ℝ => √(g ^ 2 + c ^ 2)) (𝓝 0) (𝓝 |c|) := by
  have h : Continuous fun g : ℝ => √(g ^ 2 + c ^ 2) := by fun_prop
  have := h.tendsto 0
  simpa [Real.sqrt_sq_eq_abs] using this

theorem projector_norm_gap (c g : ℝ) (hg : 0 < g) :
    √(1 ^ 2 + (c / g) ^ 2) * g = √(g ^ 2 + c ^ 2) := by
  rw [← Real.sqrt_sq hg.le, ← Real.sqrt_mul (by positivity), Real.sqrt_sq hg.le]
  congr 1
  field_simp
  try ring

end EventHorizon
