# G_github.md : GitHub side ledger (account dicipler-pixel), Phase 1 black-hole recovery

Reader: full-read agent G. Written 2026-11-16. Rules followed: /home/claude/bh_recovery/ledgers/READING_RULES.md.
No script, test, lake or lean was run. No network was used. Nothing outside this ledger file was changed.
Grades are copied as the source gives them. "no grade given" means the source gave none.

Two repos could not be cloned because they are private: `mixin-colors` and `mad-hatters-acc-private`.
Neither name suggests black-hole work. Nothing from them is in this ledger.

---

# PART 1. event-horizon-lean (the Edition 10 black-hole Lean repo)

Path: /home/claude/bh_recovery/github/event-horizon-lean/ . Branch: main only (remotes/origin/main).
21 tracked files, 48,223 bytes total. ALL 21 READ IN FULL.
There is NO paper file in the tree (no paper/ folder, no PDF, no HTML, no tex). The first commit message says
"Start the proof repository: paper, citation, MIT and CC BY 4.0 licences" but that commit's file list holds no paper file
(.gitignore, AI_USE.md, CITATION.cff, LICENSE, LICENSE-CC-BY-4.0.md, LICENSING.md, README.md only).

## 1.0 Git history (full, `git log --format='%ad %h %s' --date=short`)

| Date | Hash | Subject | Files touched (from --stat) |
|---|---|---|---|
| 2026-10-20 | 7dd6164 | Merge pull request #1 from dicipler-pixel/claude-edition10 | (merge) |
| 2026-10-20 | d5f5456 | Document the edition 10 theorems and their limits | CITATION.cff, LIMITATIONS.md (+13), PROVENANCE.md (+6), README.md |
| 2026-10-20 | c80be4f | Add the edition 10 results: refraction, sine guard, fermion Smith coordinate, photon ring | EventHorizon/Edition10.lean (+288, new), FalseControls/charged_ring_full_rate.lean (new), FalseControls/matched_is_mirror.lean (new), lakefile.toml, scripts/config.json |
| 2026-10-07 | b0e3336 | Match the wall, ledger and limit prose to what the Lean proves | EventHorizon/Basic.lean (17 lines), LIMITATIONS.md (+12), README.md |
| 2026-09-27 | 0673d87 | Document the proofs | CITATION.cff, LIMITATIONS.md (+13, new), PROVENANCE.md (+5, new), README.md |
| 2026-09-27 | 8e0aa3a | Drop a redundant step | EventHorizon/Basic.lean (1 line) |
| 2026-09-27 | eeef67f | Fix proof steps | EventHorizon/Basic.lean (53 lines), scripts/config.json |
| 2026-09-27 | 819beba | Prove the exact shape-space results of the event horizon paper | build.yml, EventHorizon/Basic.lean (+218, new), FalseControls/interior_wall.lean, ledger_log_one.lean, metric_finite.lean, lakefile.toml, lean-toolchain, scripts/config.json, scripts/verify.py |
| 2026-09-27 | bc7075e | Start the proof repository: paper, citation, MIT and CC BY 4.0 licences | .gitignore, AI_USE.md, CITATION.cff, LICENSE, LICENSE-CC-BY-4.0.md, LICENSING.md, README.md |

Only earlier-commit states were not read (only the current tree was read); history recorded from log only.

## 1.1 grep for sorry / axiom / admit / native_decide in *.lean

Command run: `grep -rnE "sorry|axiom|admit|native_decide" --include=*.lean .`
Hits are ONLY the substring "admit" inside the word "admittance"/"admittances" (FalseControls/matched_is_mirror.lean:2;
EventHorizon/Edition10.lean lines 7, 30, 32, 35, 45, 75, 80, 120). There is no `sorry`, no `axiom` declaration, no `admit` tactic,
no `native_decide` in any Lean file. Every theorem body below ends in a tactic proof with no hole. (Not compiled by me; the rule forbids running lean.)

## 1.2 README.md (5,672 bytes, 71 lines, read in full)

Title (line 3): "Beyond the Event Horizon: What Survives at a Rigidity Wall — Lean proofs".
Badges (lines 5-11): Lean v4.34.1; "theorems-40"; "sorry-0"; Code MIT; Text CC BY 4.0; "Paper DOI 10.5281/zenodo.21147366".
Byline (line 13): Jeromie Beasley.

"The idea in one line" (lines 19-26), verbatim:
"Four-body shape space, with its own kinetic metric, is the Bures geometry of a qutrit's states. Its only genuine wall is the
coplanar stratum `w₃ = 0`, and three things happen there at once: the metric blows up as `1/(6w₃)`, the transport block becomes
triangular (a genuine Jordan block under a further joint condition with `A₁₂ ≠ 0`), and away from the wall its discriminant is
provably nonnegative, so its spectrum is real. What survives the collapse is contour data such as the trace-log ledger."

"What is proved" table (lines 30-37), paper item -> result -> theorem names:
- Theorem 1: "The shape lift `hᵢ = eᵢ/(2√wᵢ)` gives `eᵢ²/(4wᵢ)`; the shear lift solves the lift equation, is horizontal, and has squared norm `1/(2(wᵢ+wⱼ))` (Bures weights), with numerical values at `w = (0.5, 0.3, 0.2)`" -> `shape_lift`, `shear_lift`, `shear_values`.
- Theorem 2.1: "`g(E₂,E₂)·6w₃ = 1 + w₃(1/(4w₁) + 1/(4w₂))`, and this closed form tends to `1` as `w₃ → 0` with `w₁, w₂` fixed: the metric blows up as `1/(6w₃)`" -> `wall_metric`, `wall_metric_limit`.
- Theorem 2.3: "The discriminant of the transport block is a quadratic form whose determinant is exactly `16w₁w₂w₃`, so it is nonnegative and the spectrum is real on the whole regular stratum" -> `disc_form`, `disc_det`, `psd2`, `spectrum_real`.
- Theorem 2.3: "At `w₃ = 0` the block is triangular; under `t₁+t₂−2t₃ = (t₁−t₂)(w₁−w₂)` its diagonal entries coincide at `λ* = 2t₃` and `(A − λ*)² = 0`, and if moreover `A₁₂ ≠ 0` it is a genuine size-2 Jordan block" -> `wall_triangular`, `wall_jordan`.
- Sec. 2.1: "Non-normality needs both anisotropies: isotropic `T` or isotropic `W` gives a normal block" -> `normal_if_T_isotropic`, `normal_if_W_isotropic`.
- Sec. 4.2: "The ledger at the Jordan point is `2 log λ*`; with the rank-one projector's Frobenius norm `√(1 + (c/g)²)` computed by hand, `‖P₁‖·g = √(g² + c²) → |c|` as `g → 0`" -> `ledger_at_jordan`, `projector_norm_gap`, `snapped_law`.

"Added in research edition 10" table (lines 39-49):
- Sec. 8.3, admittance: "`√(a/b) · k = ω√(a − C)`: the transverse metric `g⊥ = b` cancels" -> `admittance`.
- Sec. 8.3, the step: "Matching `u` and the flux gives `Γ = (Y₁ − Y₂)/(Y₁ + Y₂)`, `t = 2Y₁/(Y₁ + Y₂)` (complex admittances, so evanescent sides are included); flux balance; `Γ₂₁ = −Γ₁₂`; a matched load gives `Γ = 0`, a polar stratum `Γ = 1`" -> `step_matching`, `flux_balance`, `reciprocity`, `matched_load`, `polar_mirror`.
- Sec. 8.3, total reflection: "Beyond the turning point (`Y₂ = iκ`) `|Γ|² = 1` exactly; the turning point `C > a₂` is the critical angle `sin²θ > a₂/a₁`" -> `total_reflection`, `turning_point`.
- Sec. 8.3, the gap form: "`tanh(½ ln q) = (q − 1)/(q + 1)`; normal incidence `Γ = tanh(½ ln(√a₁/√a₂))`; with `√g∥ ∝ 1/Δ`, `Γ = tanh(½ ln(Δ₂/Δ₁))`" -> `tanh_half_log`, `normal_incidence`, `gap_form`.
- Sec. 8.3, the sine guard: "The Gram determinant of a unit path and `∂ₓ` is `g∥ cos²θ = g∥ − C`; a positive quantum geometric tensor caps the Berry curvature at `2√(g∥ − C)`" -> `gram_det`, `sine_guard`.
- Sec. 7.1, the fermion record: "`z = (1 − C)/C = e^x`; `Γ = 1 − 2C = tanh(x/2)`; `Γ = 0` only at `x = ħω/k_BT_H = 0`; particle–hole exchange sends `Γ` to `−Γ`" -> `fermion_impedance`, `fermion_smith`, `fermion_center`, `particle_hole`.
- Sec. 8.1, the photon ring: "At `u₀ = 1/(3M)` a nudge grows by `e` per radian; a half orbit takes `3√3πM` and dims by `e^{−π}`; at a charged photon sphere the squared rate is `1 − 2Q²u₀²`, equal to `1` only when `Q = 0` and below `1` otherwise" -> `ring_rate_one`, `schwarzschild_photon_sphere`, `half_orbit`, `rn_rate_sq`, `rn_rate_one_iff`, `rn_rate_below`.

Lines 51-53: files are EventHorizon/Basic.lean and EventHorizon/Edition10.lean; "What is not proved is in LIMITATIONS.md."
"How it is checked" (lines 57-59): "Every push runs the proof check: build against Lean v4.34.1 and Mathlib v4.34.1, independent replay in Lean's kernel checker, an axiom audit (only `propext`, `Classical.choice`, `Quot.sound`), and five deliberately false statements that must fail."
"The paper" (lines 63-64): "*Beyond the Event Horizon: What Survives at a Rigidity Wall* (research edition 10), Jeromie Beasley. DOI 10.5281/zenodo.21147366 (always opens the newest version)."
Licence (lines 68-70): Copyright (c) 2026 Jeromie Beasley; code MIT; text CC BY 4.0.

## 1.3 LIMITATIONS.md (3,030 bytes, 38 lines, read in full) : "What is not proved here"

Line 3: "Lean proves exactly the statements written, under exactly the hypotheses written."
Bullets, verbatim in substance:
1. (l.5-7) "Theorem 1 is proved as the lift equations and norms at the principal-frame point. The global isometry with the Bures–Wasserstein geometry is cited (Bhatia–Jain–Lim, Thanwerdas–Pennec, van Oostrum), not formalized."
2. (l.8-9) "The O'Neill curvature (Sec. 2.2), its interior finiteness, and the wall constants `K₄₄w₃ → 0.0713`, `K₅₅w₃ → 0.1033`, `K₂₂w₃ → 0.701` are computations, not Lean proofs."
3. (l.10-12) "Theorem 2.1's limit is proved for the closed form `1 + w₃(1/(4w₁) + 1/(4w₂))` with `w₁, w₂` fixed. Together with `wall_metric` this gives `g(E₂,E₂)·6w₃ → 1`, but that combined limit is not stated as a theorem."
4. (l.13-16) "Theorem 2.3's reality is proved as `disc ≥ 0` on the simplex, where `disc = (A₁₁ − A₂₂)² + 4A₁₂A₂₁`. That a nonnegative discriminant makes the eigenvalues of the real 2×2 block real is the quadratic formula and is not formalized. Nor is the statement that exceptional points occur only on the boundary strata."
5. (l.17-18) "`wall_jordan` gives a genuine Jordan block only when `A₁₂ ≠ 0`. Under the joint condition alone, `t₁ = t₂` forces `t₁ = t₂ = t₃` and the block is scalar."
6. (l.19-20) "The ledger is proved as `log det = 2 log λ*` for the triangular block. The contour-integral representation and the Kato bounds of Appendix A are standard and are cited, not formalized."
7. (l.21-23) "The rank-one projector of Sec. 4.2 is not constructed in Lean. `projector_norm_gap` is the scalar identity `√(1 + (c/g)²)·g = √(g² + c²)` for its hand-computed Frobenius norm, and `snapped_law` is the limit `√(g² + c²) → |c|`."
8. (l.24-28) "Edition 10, Sec. 8.3: the wave equation on the pullback metric and its plane-wave solutions are derived in the paper, not in Lean. Lean proves the algebra that follows from them: the admittance cancels `b`, matching gives `Γ` and `t`, and the consequences listed in the README. The near-threshold expansion `Γ = 1 − 2√(a₂ − C)/√(a₁ − C) + O(a₂ − C)` and the smooth-layer convergence (RS-03) are computations, not Lean proofs."
9. (l.29-31) "`sine_guard` takes the positivity of the quantum geometric tensor on the pair of directions as its hypothesis, in the form `Ω²/4 ≤ g₁₁g₂₂ − g₁₂²`; that positivity is cited from the IQGT paper. That two-level families sit on the ceiling is measured (V10-PUSH), not proved here."
10. (l.32-33) "`fermion_smith` starts from the Fermi–Dirac occupation `C = 1/(e^x + 1)`; the partial trace that produces it is a computation (V10-PUSH, BH-OFFSET-15)."
11. (l.34-36) "The photon-ring theorems are the algebra of the linearised orbit equation at the photon sphere. The orbit equation, the Reissner–Nordström photon-sphere condition, and the nonlinear orbits (`0.968` at `Q = 0.5M`, `0.832` at `Q = 0.9M`) are not formalized."
12. (l.37-38) "Everything on the general-relativity side (Theorem 3's cited half, Conjecture 1, Secs. 5, 7 and 8) is outside these proofs."

Check/gate names met here: RS-03, V10-PUSH, BH-OFFSET-15 (named only; outcomes not given in this file beyond "computations"/"measured").
Paper items named here: Theorem 1, Theorem 2.1, Theorem 2.3, Theorem 3 ("cited half"), Conjecture 1, Sec. 2.1, 2.2, 4.2, 5, 7, 7.1, 8, 8.1, 8.3, Appendix A.

## 1.4 PROVENANCE.md (678 bytes, 11 lines, read in full)

Verbatim: "`EventHorizon/Basic.lean` and the three files in `FalseControls/` were written for this repository from *Beyond the Event Horizon* (v2, August 2026, the edition deposited as DOI 10.5281/zenodo.21147366): Theorem 1, Theorem 2, Eq. (2), Sec. 2.1 and Sec. 4.2."
"`EventHorizon/Edition10.lean`, `FalseControls/matched_is_mirror.lean` and `FalseControls/charged_ring_full_rate.lean` were written for this repository from research edition 10 (October 2026), deposited under the same concept DOI: Sec. 8.3 (reflection and refraction on the pullback metric, the gap form, the sine guard), Sec. 7.1 (the fermion record as a Smith coordinate) and Sec. 8.1 (the photon ring)."

Version labels met: "v2, August 2026"; "research edition 10 (October 2026)"; "same concept DOI".

## 1.5 AI_USE.md (582 bytes, 11 lines, read in full)

"The research questions and the physics behind this library are Jeromie Beasley's. AI tools (Claude and ChatGPT) were used to search the literature, write and repair Lean proofs, and organise this repository."
"No statement here rests on an AI's say-so. Every proof is checked by the Lean kernel and replayed by an independent kernel checker on every push, every theorem's axioms are audited, and every false control must be rejected for the check to pass."

## 1.6 LICENSING.md, LICENSE, LICENSE-CC-BY-4.0.md (read in full)

Dual licence. Lean files, scripts, workflows, configuration, generated outputs: MIT. README, LIMITATIONS, PROVENANCE, AI_USE "and any paper, figure or other prose": CC BY 4.0. Copyright (c) 2026 Jeromie Beasley. Credit: "Jeromie Beasley, with a link to this repository or to the paper's DOI."

## 1.7 CITATION.cff (589 bytes, 19 lines, read in full)

title: "Beyond the Event Horizon: What Survives at a Rigidity Wall: Lean proofs"; author Beasley, Jeromie; version: 1.1.0; date-released: 2026-09-27; license MIT, CC-BY-4.0; repository-code https://github.com/dicipler-pixel/event-horizon-lean; references: article "Beyond the Event Horizon: What Survives at a Rigidity Wall", doi "10.5281/zenodo.21147366".

## 1.8 EventHorizon/Basic.lean (10,995 bytes, 220 lines, read in full)

Header comment (l.1-22). Title as written THERE: "Beyond the Event Horizon: Persistent Operator Structure at Rigidity Walls — from Four-Body Shape Space to Black-Hole Ringdown (Jeromie Beasley, DOI 10.5281/zenodo.21147366): the exact results on the shape-space side."
Setting (l.6-7): "Shape space `Σ₄ = {G ⪰ 0, Tr G = 1}` in the principal frame `W = diag(w₁, w₂, w₃)`, `Σ wᵢ = 1`; Jacobi matrix `X = diag(√wᵢ)`."
Header list of what is formalised:
- Theorem 1 (the quotient metric): "the horizontal lifts solve `XᵀH + HᵀX = E` with `XHᵀ` symmetric, and give `g_shape = Σ (E)ᵢᵢ²/(4wᵢ)`, `g_shear = 1/(2(wᵢ + wⱼ))` — the Bures weights."
- Theorem 2.1: "`g(E₂, E₂) · 6w₃ = 1 + w₃(1/(4w₁) + 1/(4w₂)) → 1`: the metric blows up as `1/(6w₃)` at the coplanar wall."
- Eq. (2) and Theorem 2.3: "the audited transport shape block; its discriminant is a quadratic form in `(t₁+t₂−2t₃, t₁−t₂)` with determinant exactly `16w₁w₂w₃ ≥ 0`, so the spectrum is real on the whole regular stratum; at `w₃ = 0` the block is triangular, and under the joint condition `t₁+t₂−2t₃ = (t₁−t₂)(w₁−w₂)` with `A₁₂ ≠ 0` it is a genuine size-2 Jordan block."
- Sec. 2.1: "non-normality needs both anisotropies (isotropic `T` or isotropic `W` gives a normal block)."
- Sec. 4.2: "the contour ledger at the Jordan point is `2 log λ*` (determinant `λ*²`), and, with the rank-one projector's hand-computed Frobenius norm `√(1 + (c/gap)²)`, `‖P₁‖ · gap = √(gap² + c²) → |c|` — the snapped law."

`import Mathlib`; `namespace EventHorizon`; `open Real Filter Topology Matrix`.

Every declaration, in file order (3 definitions, 17 theorems; no `lemma` keyword is used; all proofs complete, no sorry/axiom/admit/native_decide):

| # | Kind | Name | Full Lean statement | Doc-comment (which paper statement) | Proof |
|---|---|---|---|---|---|
| 1 | theorem | `shape_lift` | `(w e : ℝ) (hw : 0 < w) : 2 * √w * (e / (2 * √w)) = e ∧ (e / (2 * √w)) ^ 2 = e ^ 2 / (4 * w)` | "**Theorem 1, shape directions.** The diagonal lift `hᵢ = eᵢ/(2√wᵢ)` satisfies `2√wᵢ hᵢ = eᵢ` (the equation `XᵀH + HᵀX = E` on the diagonal) and contributes `eᵢ²/(4wᵢ)`." | complete |
| 2 | theorem | `shear_lift` | `(wi wj : ℝ) (hi : 0 < wi) (hj : 0 < wj) : let s := wi + wj; let Hij := √wi / (√2 * s); let Hji := √wj / (√2 * s); √wi * Hij + √wj * Hji = 1 / √2 ∧ √wi * Hji = √wj * Hij ∧ Hij ^ 2 + Hji ^ 2 = 1 / (2 * s)` | "**Theorem 1, shear directions.** For the `(ij)` shear direction, the lift `Hᵢⱼ = √wᵢ/(√2(wᵢ+wⱼ))`, `Hⱼᵢ = √wⱼ/(√2(wᵢ+wⱼ))` solves `√wᵢHᵢⱼ + √wⱼHⱼᵢ = 1/√2`, is horizontal (`√wᵢHⱼᵢ = √wⱼHᵢⱼ`), and has squared norm `1/(2(wᵢ+wⱼ))`." | complete |
| 3 | noncomputable def | `g22` | `(w1 w2 w3 : ℝ) : ℝ := (1 / 6) * (1 / (4 * w1)) + (1 / 6) * (1 / (4 * w2)) + (4 / 6) * (1 / (4 * w3))` | "The shape metric `Σ eᵢ²/(4wᵢ)` in the direction `E₂ = diag(1, 1, −2)/√6`." | definition |
| 4 | theorem | `wall_metric` | `(w1 w2 w3 : ℝ) (h1 : w1 ≠ 0) (h2 : w2 ≠ 0) (h3 : w3 ≠ 0) : g22 w1 w2 w3 * (6 * w3) = 1 + w3 * (1 / (4 * w1) + 1 / (4 * w2))` | "**Theorem 2.1 (metric blow-up, exact).** `g(E₂,E₂) · 6w₃ = 1 + w₃(1/(4w₁) + 1/(4w₂))`." | complete |
| 5 | theorem | `wall_metric_limit` | `(w1 w2 : ℝ) : Tendsto (fun w3 => 1 + w3 * (1 / (4 * w1) + 1 / (4 * w2))) (𝓝 0) (𝓝 1)` | "**Theorem 2.1, the limit.** The closed form `1 + w₃(1/(4w₁) + 1/(4w₂))` of `g(E₂,E₂) · 6w₃` tends to `1` as `w₃ → 0`, with `w₁, w₂` fixed." | complete |
| 6 | theorem | `shear_values` | `(1 : ℝ) / (2 * (0.5 + 0.3)) = 0.625 ∧ (1 : ℝ) / (2 * (0.5 + 0.2)) = 5 / 7 ∧ (1 : ℝ) / (2 * (0.3 + 0.2)) = 1` | "**Sec. 1, numerical checks.** At `w = (0.5, 0.3, 0.2)`: `g₃₃ = 0.625`, `g₄₄ = 5/7`, `g₅₅ = 1`." | complete (norm_num) |
| 7 | noncomputable def | `block` | `(t1 t2 t3 w1 w2 w3 : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := !![(t1 + t2) - (t1 - t2) * (w1 - w2), ((t1 - t2) - (t1 + t2 - 2 * t3) * (w1 - w2)) / √3; √3 * (t1 - t2) * w3, 2 * t3 + w3 * (t1 + t2 - 2 * t3)]` | "The audited transport shape block (Eq. 2)." | definition |
| 8 | def | `disc` | `(M : Matrix (Fin 2) (Fin 2) ℝ) : ℝ := (M 0 0 - M 1 1) ^ 2 + 4 * (M 0 1 * M 1 0)` | "The discriminant `(A₁₁ − A₂₂)² + 4A₁₂A₂₁` of a 2×2 block." | definition |
| 9 | theorem | `sqrt3_ne` | `(√3 : ℝ) ≠ 0` | no doc-comment | complete |
| 10 | theorem | `disc_form` | `(t1 t2 t3 w1 w2 w3 : ℝ) : disc (block t1 t2 t3 w1 w2 w3) = (1 - w3) ^ 2 * (t1 + t2 - 2 * t3) ^ 2 - 2 * (w1 - w2) * (1 + w3) * ((t1 + t2 - 2 * t3) * (t1 - t2)) + ((w1 - w2) ^ 2 + 4 * w3) * (t1 - t2) ^ 2` | "**The discriminant as a quadratic form.** With `S = t₁+t₂−2t₃`, `a = t₁−t₂`, `δ = w₁−w₂`: `disc = (1−w₃)²S² − 2δ(1+w₃)Sa + (δ²+4w₃)a²`." | complete |
| 11 | theorem | `disc_det` | `(w1 w2 w3 : ℝ) (hsum : w1 + w2 + w3 = 1) : (1 - w3) ^ 2 * ((w1 - w2) ^ 2 + 4 * w3) - ((w1 - w2) * (1 + w3)) ^ 2 = 16 * w1 * w2 * w3` | "**The determinant is `16 w₁w₂w₃`.** On the simplex `w₁ + w₂ + w₃ = 1`, the determinant of the discriminant's quadratic form is exactly `16w₁w₂w₃`." | complete |
| 12 | theorem | `psd2` | `(p q r x y : ℝ) (hp : 0 ≤ p) (hr : 0 ≤ r) (hd : q ^ 2 ≤ p * r) : 0 ≤ p * x ^ 2 - 2 * q * (x * y) + r * y ^ 2` | "A 2×2 quadratic form with nonnegative diagonal and nonnegative determinant is nonnegative." | complete |
| 13 | theorem | `spectrum_real` | `(t1 t2 t3 w1 w2 w3 : ℝ) (h1 : 0 ≤ w1) (h2 : 0 ≤ w2) (h3 : 0 ≤ w3) (hsum : w1 + w2 + w3 = 1) : 0 ≤ disc (block t1 t2 t3 w1 w2 w3)` | "**Theorem 2.3, reality.** On the shape simplex (`wᵢ ≥ 0`, `Σwᵢ = 1`) the discriminant of the transport block is nonnegative, so its spectrum is real on the entire regular stratum. That exceptional points occur only on the boundary strata is not proved here." | complete |
| 14 | theorem | `wall_triangular` | `(t1 t2 t3 w1 w2 : ℝ) : block t1 t2 t3 w1 w2 0 1 0 = 0` | "**Theorem 2.3, the wall is triangular.** At `w₃ = 0` the back-coupling `A₂₁` vanishes." | complete |
| 15 | theorem | `wall_jordan` | `(t1 t2 t3 w1 w2 : ℝ) (hJ : t1 + t2 - 2 * t3 = (t1 - t2) * (w1 - w2)) : let N := block t1 t2 t3 w1 w2 0 - (2 * t3) • (1 : Matrix (Fin 2) (Fin 2) ℝ); N * N = 0 ∧ (block t1 t2 t3 w1 w2 0 0 1 ≠ 0 → N ≠ 0)` | "**Theorem 2.3, Jordan blocks.** At `w₃ = 0`, under the joint condition `t₁+t₂−2t₃ = (t₁−t₂)(w₁−w₂)`, the two diagonal entries coincide at `λ* = 2t₃`, so `(A − λ*)² = 0`; if moreover `A₁₂ ≠ 0` then `A − λ* ≠ 0`: a genuine size-2 Jordan block." | complete |
| 16 | theorem | `normal_if_T_isotropic` | `(t w1 w2 w3 : ℝ) : block t t t w1 w2 w3 0 1 = 0 ∧ block t t t w1 w2 w3 1 0 = 0` | "**Non-normality needs both anisotropies: isotropic `T`.** With `t₁ = t₂ = t₃` the block is diagonal, hence normal." | complete |
| 17 | theorem | `normal_if_W_isotropic` | `(t1 t2 t3 : ℝ) : block t1 t2 t3 (1 / 3) (1 / 3) (1 / 3) 0 1 = block t1 t2 t3 (1 / 3) (1 / 3) (1 / 3) 1 0` | "**Non-normality needs both anisotropies: isotropic `W`.** With `w₁ = w₂ = w₃ = 1/3` the block is symmetric (`A₁₂ = A₂₁`), hence normal." | complete |
| 18 | theorem | `ledger_at_jordan` | `(lam c : ℝ) (hlam : 0 < lam) : Real.log (!![lam, c; 0, lam] : Matrix (Fin 2) (Fin 2) ℝ).det = 2 * Real.log lam` | "**The ledger at the defective point.** A 2×2 block with both diagonal entries `λ*` and a zero back-coupling has determinant `λ*²`, so its trace-log ledger `log det` is `2 log λ*`, with no reference to eigenvectors." | complete |
| 19 | theorem | `snapped_law` | `(c : ℝ) : Tendsto (fun g : ℝ => √(g ^ 2 + c ^ 2)) (𝓝 0) (𝓝 |c|)` | "**The snapped law.** For the triangular block `[[λ, c], [0, λ+g]]` the rank-one projector onto the `λ` eigenline is `[[1, −c/g], [0, 0]]`; its Frobenius norm times the gap is `√(g² + c²)`, which tends to `|c|` as `g → 0`: the blow-up constant is the Jordan coupling. The projector and its norm are computed by hand; this theorem is the limit." | complete |
| 20 | theorem | `projector_norm_gap` | `(c g : ℝ) (hg : 0 < g) : √(1 ^ 2 + (c / g) ^ 2) * g = √(g ^ 2 + c ^ 2)` | no doc-comment of its own (sits under the snapped-law comment) | complete |

Section headers inside the file: "## Theorem 1: the quotient metric" (l.29); "## Eq. (2): the transport shape block and the reality theorem" (l.89); "## Sec. 4.2: the ledger at the Jordan point, and the snapped law" (l.193).

## 1.9 EventHorizon/Edition10.lean (12,810 bytes, 288 lines, read in full)

Header comment (l.1-23): "Beyond the Event Horizon: What Survives at a Rigidity Wall, research edition 10 (Jeromie Beasley, DOI 10.5281/zenodo.21147366): the exact results added in edition 10."
Header list:
- "Sec. 8.3 (reflection and refraction on the pullback metric `g = a dx² + b dy²`, `a = g∥`, `b = g⊥`, Clairaut constant `C = a sin²θ`)": admittance `√(a/b) · k = ω√(a − C)` ("the transverse metric `b` cancels"); matching at a sharp step gives `Γ = (Y₁ − Y₂)/(Y₁ + Y₂)` and `t = 2Y₁/(Y₁ + Y₂)`, "with flux balance, reciprocity, a matched load (`Γ = 0`) and a polar mirror (`Γ = 1`)"; "beyond the turning point (`Y₂` imaginary) `|Γ| = 1` exactly, and the turning point is the critical angle `sin²θ = a₂/a₁`"; "at normal incidence `Γ = tanh(½ ln(√a₁/√a₂))`, and with `√g∥ ∝ 1/Δ` this is `Γ = tanh(½ ln(Δ₂/Δ₁))`"; "the sine guard: the Gram determinant of a unit path and the symmetry direction is `g∥ − C = g∥ cos²θ`, and positivity of the quantum geometric tensor caps the Berry curvature at `2√(g∥ − C)`."
- "Sec. 7.1, Eq. (fermionsmith): the fermion record's Smith coordinate `Γ = (z − 1)/(z + 1) = 1 − 2C = tanh(ω/2T_H)`, which is `0` only at `ω = 0`."
- "Sec. 8.1 (the photon ring): a nudge grows by `e` per radian at `r = 3M`, so each half orbit dims an image by `e^{−π}` and delays it by `3√3πM`; for a charged hole the squared rate per radian at the photon sphere is `1 − 2Q²u₀²`, equal to `1` only when `Q = 0`."

`import Mathlib`; `namespace EventHorizon.Edition10`; `open Real`.

Every declaration, in file order (23 theorems, no definitions; all proofs complete, no sorry/axiom/admit/native_decide):

| # | Name | Full Lean statement | Doc-comment (which paper statement) | Proof |
|---|---|---|---|---|
| 1 | `admittance` | `(a b C ω : ℝ) (ha : 0 < a) (hb : 0 < b) (hC : C ≤ a) (hω : 0 ≤ ω) : √(a / b) * √(b * (ω ^ 2 * (a - C) / a)) = ω * √(a - C)` | "**The admittance (Eq. admittance).** Where `a = g∥` and `b = g⊥` are constant, the wave has `k² = b ω²(a − C)/a`, and the flux carries the factor `√(a/b)`. Their product is `Y = ω√(a − C)`: the transverse metric `b` cancels." | complete |
| 2 | `step_matching` | `(Y1 Y2 r t : ℂ) (hs : Y1 + Y2 ≠ 0) (hu : 1 + r = t) (hF : Y1 * (1 - r) = Y2 * t) : r = (Y1 - Y2) / (Y1 + Y2) ∧ t = 2 * Y1 / (Y1 + Y2)` | "**Matching at a sharp step (Eq. gammastep).** Continuity of `u` (`1 + r = t`) and of the flux (`Y₁(1 − r) = Y₂ t`) fix the reflection and transmission amplitudes. The admittances are complex so that an evanescent far side (`Y₂ = i√(C − a₂)`) is included." | complete |
| 3 | `flux_balance` | `(Y1 Y2 : ℝ) (h1 : 0 < Y1) (h2 : 0 < Y2) : ((Y1 - Y2) / (Y1 + Y2)) ^ 2 + Y2 / Y1 * (2 * Y1 / (Y1 + Y2)) ^ 2 = 1` | "**Flux balance.** When both sides propagate (`Y₁, Y₂ > 0`), `|Γ|² + (Y₂/Y₁)|t|² = 1`." | complete |
| 4 | `reciprocity` | `(Y1 Y2 : ℂ) : (Y2 - Y1) / (Y2 + Y1) = -((Y1 - Y2) / (Y1 + Y2))` | "**Reciprocity at the step.** Sending the wave from the other side reverses the sign: `Γ₂₁ = −Γ₁₂`." | complete |
| 5 | `matched_load` | `(Y : ℂ) : (Y - Y) / (Y + Y) = 0` | "**A matched load reflects nothing.** Equal admittances give `Γ = 0`; this is the class of the horizon in the paper's one-chart reading." | complete |
| 6 | `polar_mirror` | `(Y : ℂ) (h : Y ≠ 0) : (Y - 0) / (Y + 0) = 1` | "**A polar stratum is a mirror.** Where the far admittance vanishes, `Γ = 1`." | complete |
| 7 | `total_reflection` | `(y κ : ℝ) (hy : 0 < y) : Complex.normSq (((y : ℂ) - κ * Complex.I) / ((y : ℂ) + κ * Complex.I)) = 1` | "**Total reflection beyond the turning point.** With `Y₁ = y > 0` real and the far side evanescent, `Y₂ = iκ`, the reflection coefficient has `|Γ|² = 1` exactly." | complete |
| 8 | `turning_point` | `(a1 a2 s : ℝ) (ha1 : 0 < a1) : a2 < a1 * s ↔ a2 / a1 < s` | "**The turning point is the critical angle.** With `C = a₁ sin²θ`, the far side turns the wave back (`C > a₂`) exactly when `sin²θ > a₂/a₁`." | complete |
| 9 | `tanh_half_log` | `(q : ℝ) (hq : 0 < q) : Real.tanh (Real.log q / 2) = (q - 1) / (q + 1)` | "`tanh(½ ln q) = (q − 1)/(q + 1)` for `q > 0`." | complete |
| 10 | `normal_incidence` | `(a1 a2 : ℝ) (h1 : 0 < a1) (h2 : 0 < a2) : (√a1 - √a2) / (√a1 + √a2) = Real.tanh (Real.log (√a1 / √a2) / 2)` | "**Normal incidence.** With `C = 0` the admittance is `ω√a`, and the step reflects with `Γ = (√a₁ − √a₂)/(√a₁ + √a₂) = tanh(½ ln(√a₁/√a₂))`." | complete |
| 11 | `gap_form` | `(D1 D2 : ℝ) (h1 : 0 < D1) (h2 : 0 < D2) : (1 / D1 - 1 / D2) / (1 / D1 + 1 / D2) = Real.tanh (Real.log (D2 / D1) / 2)` | "**The gap form (Eq. gammagap).** Where the index is set by a spectral gap, `√g∥ ∝ 1/Δ`, normal incidence reflects with `Γ = tanh(½ ln(Δ₂/Δ₁))`." | complete |
| 12 | `gram_det` | `(a θ : ℝ) (ha : 0 ≤ a) : (!![1, √a * Real.sin θ; √a * Real.sin θ, a] : Matrix (Fin 2) (Fin 2) ℝ).det = a * Real.cos θ ^ 2` | "**The Gram determinant (Eq. sineguard, left).** For a unit path direction `V` at angle `θ` and the symmetry direction `∂ₓ`, `g(V,∂ₓ) = √g∥ sin θ` and `g(∂ₓ,∂ₓ) = g∥`, so the Gram determinant is `g∥ − C = g∥ cos²θ`." | complete |
| 13 | `sine_guard` | `(g11 g12 g22 Ω : ℝ) (hdet : Ω ^ 2 / 4 ≤ g11 * g22 - g12 ^ 2) : |Ω| ≤ 2 * √(g11 * g22 - g12 ^ 2)` | "**The curvature ceiling (Eq. sineguard, right).** If the quantum geometric tensor is positive on a pair of directions, its determinant gives `Ω²/4 ≤ g₁₁g₂₂ − g₁₂²`, and then `|Ω| ≤ 2√(g₁₁g₂₂ − g₁₂²)`; with the Gram determinant above this is `|Ω| ≤ 2√(g∥ − C)`." | complete |
| 14 | `fermion_impedance` | `(x : ℝ) : (1 - 1 / (Real.exp x + 1)) / (1 / (Real.exp x + 1)) = Real.exp x` | "**The impedance of the fermion record.** With Fermi–Dirac occupation `C = 1/(e^x + 1)`, `x = ħω/k_BT_H`, the impedance `z = (1 − C)/C` is `e^x`." | complete |
| 15 | `fermion_smith` | `(x : ℝ) : 1 - 2 * (1 / (Real.exp x + 1)) = Real.tanh (x / 2)` | "**The fermion Smith coordinate (Eq. fermionsmith).** `Γ = 1 − 2C = tanh(x/2)`." | complete |
| 16 | `fermion_center` | `(x : ℝ) : 1 - 2 * (1 / (Real.exp x + 1)) = 0 ↔ x = 0` | "**The centre of the chart.** The fermion record's `Γ` vanishes only at zero frequency." | complete |
| 17 | `particle_hole` | `(C : ℝ) : 1 - 2 * (1 - C) = -(1 - 2 * C)` | "**Particle–hole exchange.** `C ↦ 1 − C` sends `Γ = 1 − 2C` to `−Γ`." | complete |
| 18 | `ring_rate_one` | `(M : ℝ) (hM : M ≠ 0) : 6 * M * (1 / (3 * M)) - 1 = 1` | "**Growth by `e` per radian.** In the orbit equation `u'' + u = 3Mu²` the photon ring sits at `u₀ = 1/(3M)`; a nudge obeys `δ'' = (6Mu₀ − 1)δ = δ`, so it grows by `e` per radian." | complete |
| 19 | `schwarzschild_photon_sphere` | `(M : ℝ) (hM : M ≠ 0) : 1 - 3 * M * (1 / (3 * M)) + 2 * 0 ^ 2 * (1 / (3 * M)) ^ 2 = 0` | "**The photon sphere.** `u₀ = 1/(3M)` solves `1 − 3Mu + 2Q²u² = 0` when `Q = 0`." | complete |
| 20 | `half_orbit` | `(M : ℝ) (hM : M ≠ 0) : Real.pi / (1 / (3 * √3 * M)) = 3 * √3 * Real.pi * M ∧ Real.exp (-((1 / (3 * √3 * M)) * (Real.pi / (1 / (3 * √3 * M))))) = Real.exp (-Real.pi)` | "**Dimming and delay per half orbit.** With growth rate `λ` equal to the orbital rate `Ω = 1/(3√3M)`, a half orbit takes `π/Ω = 3√3πM`, and the image dims by `exp(−λ · π/Ω) = e^{−π}`." | complete |
| 21 | `rn_rate_sq` | `(M Q u : ℝ) (h : 1 - 3 * M * u + 2 * Q ^ 2 * u ^ 2 = 0) : 6 * M * u - 6 * Q ^ 2 * u ^ 2 - 1 = 1 - 2 * Q ^ 2 * u ^ 2` | "**The charged hole.** At the Reissner–Nordström photon sphere, `1 − 3Mu₀ + 2Q²u₀² = 0`, the squared growth rate per radian `6Mu₀ − 6Q²u₀² − 1` equals `1 − 2Q²u₀²`." | complete |
| 22 | `rn_rate_one_iff` | `(M Q u : ℝ) (hu : u ≠ 0) (h : 1 - 3 * M * u + 2 * Q ^ 2 * u ^ 2 = 0) : 6 * M * u - 6 * Q ^ 2 * u ^ 2 - 1 = 1 ↔ Q = 0` | "**`e^{−π}` belongs to the uncharged hole.** At the photon sphere (`u₀ ≠ 0`) the growth per radian is `1` exactly when `Q = 0`." | complete |
| 23 | `rn_rate_below` | `(M Q u : ℝ) (hQ : Q ≠ 0) (hu : u ≠ 0) (h : 1 - 3 * M * u + 2 * Q ^ 2 * u ^ 2 = 0) : 6 * M * u - 6 * Q ^ 2 * u ^ 2 - 1 < 1` | "**Charge slows the ring.** For `Q ≠ 0` the squared growth per radian is below `1`, so each half orbit dims an image by less than `e^{−π}`." | complete |

Section headers: "## Sec. 8.3: the admittance, and why `g⊥` drops out" (l.30); "## Sec. 8.3: the gap form" (l.105); "## Sec. 8.3: the sine guard" (l.145); "## Sec. 7.1: the fermion record as a Smith coordinate" (l.170); "## Sec. 8.1: the photon ring" (l.216).

My count of `theorem` keywords: Basic 17 + Edition10 23 = 40, matching README badge "theorems-40" and scripts/config.json `"expected_theorems": 40`.

## 1.10 FalseControls (five files, each read in full)

Each is a one-line `example` stating something false, meant to FAIL to compile for a mathematical reason (verify.py lines 132-147 require: nonzero return code, a MATH_FAILURE pattern matched, no INFRA_FAILURE pattern).

| File | Imports | Comment (verbatim) | False statement | How it is meant to fail |
|---|---|---|---|---|
| interior_wall.lean (200 B) | EventHorizon.Basic | "The discriminant determinant vanishes only on the boundary: at w = (1/2, 1/4, 1/4) it is 1/2, not 0." | `example : (16 : ℝ) * (1 / 2) * (1 / 4) * (1 / 4) = 0 := by norm_num` | norm_num evaluates the left side to 1/2 and cannot prove it equals 0 |
| ledger_log_one.lean (188 B) | EventHorizon.Basic | "The ledger at the Jordan point sees both eigenvalues: 2 log λ*, not log λ* (λ* = e)." | `example : 2 * Real.log (Real.exp 1) = Real.log (Real.exp 1) := by simp` | simp reduces to 2 = 1 |
| metric_finite.lean (198 B) | EventHorizon.Basic | "The E₂ metric is not bounded at the wall: at w₃ = 1/1000 its 1/(6w₃) term alone exceeds 100." | `example : (4 : ℝ) / 6 * (1 / (4 * (1 / 1000))) < 100 := by norm_num` | norm_num cannot prove the bound (the source says the term exceeds 100) |
| matched_is_mirror.lean (177 B) | EventHorizon.Edition10 | "A matched load reflects nothing: equal admittances give Γ = 0, not the mirror's Γ = 1." | `example : ((2 : ℝ) - 2) / (2 + 2) = 1 := by norm_num` | norm_num gets 0 = 1 |
| charged_ring_full_rate.lean (284 B) | EventHorizon.Edition10 | "The extremal hole (M = Q = 1) has its photon sphere at u₀ = 1/2, where 1 − 3u₀ + 2u₀² = 0. Its squared growth per radian is 1/2, not the uncharged value 1." | `example : (6 : ℝ) * 1 * (1 / 2) - 6 * 1 ^ 2 * (1 / 2) ^ 2 - 1 = 1 := by norm_num` | norm_num gets 1/2 = 1 |

Numeric value held only here: extremal hole M = Q = 1, photon sphere u₀ = 1/2, squared growth per radian 1/2.

## 1.11 scripts/verify.py (6,861 bytes, 167 lines, read in full; NOT run)

Line 2: `# SCRIPT: DIRAC-TIME-LEAN-VERIFY-01`. Docstring line 3: "Audit the Dirac Time Lean library after `lake build`." (The script header names the Dirac Time library, not the event-horizon one; the script body reads its module list from config.json.)
Four checks described in the docstring: (1) axiom audit via `#print axioms`, allowed set {propext, Classical.choice, Quot.sound}, which "rules out `sorry` (sorryAx), project axioms, and native_decide (Lean.ofReduceBool) for every named theorem"; (2) theorem inventory, fails "if any expected module is missing or the count drops"; (3) false controls must fail "for a mathematical reason (unsolved goals, a failed tactic, a proposition proved false), not because of a typo or a missing name"; (4) SHA-256 of every source file written to the report.
Output folder `verification/` (git-ignored): AxiomAudit.lean, axioms.log, <control>.log, report.json. Final print: "OK: {total} theorems, axioms used: ..., {n} false controls rejected".
No stored output of any run is in the repo (verification/ is ignored), so no recorded pass/fail result exists on disk here.

## 1.12 scripts/config.json (280 bytes, read in full)

`{"modules": [{"module": "EventHorizon.Basic", "path": "EventHorizon/Basic.lean"}, {"module": "EventHorizon.Edition10", "path": "EventHorizon/Edition10.lean"}], "expected_theorems": 40, "expected_false_controls": 5, "root_imports": ["EventHorizon.Basic", "EventHorizon.Edition10"]}`

## 1.13 lakefile.toml, lean-toolchain, .gitignore, .github/workflows/build.yml (read in full)

lakefile.toml: name "event-horizon-lean"; version "1.0.0"; defaultTargets ["EventHorizon"]; requires mathlib from leanprover-community/mathlib4 rev "v4.34.1"; lean_lib EventHorizon with roots ["EventHorizon.Basic", "EventHorizon.Edition10"].
lean-toolchain: `leanprover/lean4:v4.34.1`.
.gitignore: `.lake/`, `build.log`, `verification/`, `__pycache__/`.
build.yml (88 lines), name "Lean proof check": on push, pull_request, workflow_dispatch; steps: checkout; free disk space; install pinned Lean toolchain (elan); `lake update` + `lake exe cache get`; "Build every module" (`lake build`); "Replay every module in the independent kernel checker" (`lake env leanchecker <module>` for each module in config.json); "Axiom audit, theorem inventory and false controls" (`python3 scripts/verify.py`); upload artifact "lean-evidence" (build.log, verification/, lake-manifest.json), retention 90 days. Header comment: "A green badge means all four passed on the exact commit shown."

## 1.14 What event-horizon-lean says IS and IS NOT proved (summary in the source's own split)

IS proved in Lean (README tables): the 40 theorems of 1.8 and 1.9, for paper items Theorem 1, Theorem 2.1, Theorem 2.3, Sec. 2.1, Sec. 4.2 (v2 edition) and Sec. 8.3, Sec. 7.1, Sec. 8.1 (edition 10).
IS NOT proved in Lean (LIMITATIONS): global Bures–Wasserstein isometry (cited); O'Neill curvature and wall constants 0.0713, 0.1033, 0.701 (computations); the combined limit g(E₂,E₂)·6w₃ → 1 as one theorem; that disc ≥ 0 gives real eigenvalues (quadratic formula, not formalised); that exceptional points occur only on boundary strata; contour-integral representation and Kato bounds of Appendix A (cited); the rank-one projector itself; the wave equation on the pullback metric and its plane-wave solutions; near-threshold expansion and smooth-layer convergence RS-03 (computations); positivity of the QGT (hypothesis, cited from IQGT paper); two-level families on the ceiling (measured, V10-PUSH); the partial trace producing Fermi–Dirac occupation (computation, V10-PUSH, BH-OFFSET-15); the orbit equation, RN photon-sphere condition, nonlinear orbits 0.968 (Q = 0.5M) and 0.832 (Q = 0.9M); "Everything on the general-relativity side (Theorem 3's cited half, Conjecture 1, Secs. 5, 7 and 8)".


---

# PART 2. votkp-lean branches (checked out at /home/claude/bh_recovery/github_branches/votkp-lean__<branch>/)

Branch folders present: votkp-lean__main, __claude_light-at-the-hypersurface, __claude_matter-disk, __claude_moving-matrix-of-balls, __claude_sm-ball-20261111, __claude_votkp-research-20261107, __claude_votkp-research-20261110.
These folders are plain checkouts (no .git inside), so no per-branch git log could be taken from them.
Hit list used: /home/claude/bh_recovery/ledgers/hits_votkp.txt (98 files).

## 2.1 votkp-lean__claude_matter-disk/matter-disk/ : top-level files

### 2.1.1 matter-disk/PROVENANCE.md (4,017 bytes, 50 lines, READ IN FULL)

Title: "Read this first: where each piece comes from". "Jeromie Beasley, 3 November 2026."
Line 5: "Good math does not hurt other good math. It only does harm when it is connected wrong. A correct standard result attached to my framework as if it were my result is the main way an error can spread through this work without anyone noticing."
Tags (table l.11-15): MINE ("The idea and the method come from my papers (VOTKP, Matter at a Scale, the cone paper)... As findings."); MINE ON A TEST BED; IMPORTED ("As a labelled comparison or a reproduction note, never as my result.").
BLACK-HOLE PASSAGE (l.21, row for section 1, tag MINE): "The bridge to the census. Summed over levels, ε is my signed offset τ = Tr[log(I − C) − log C] (*The Offset Speed Limit*). For a thermal occupation, Γ = tanh(ε/2) is the fermion-record point of *Beyond the Event Horizon*, ed. 10."
BLACK-HOLE PASSAGE (l.36, "My papers to check first"): "Before building a test, check *The Weight Between*, *The Offset Speed Limit*, *Non-Normality Is Connection Energy*, *Two Trees in One Ball*, *When the Neutrinos Leave*, *Beyond the Event Horizon* ed. 10, *Colour Selects the Leader* and the Operator-First Atlas (B1–B207). The piece needed is usually already in one of them."
Line 40: "`corpus-notes/` holds AI reading notes from full reads of my papers (3 Nov 2026), one file per paper, each with its coverage and the places the text was cut off. They are notes about my papers, not my text, and the paper itself is the authority."
Line 48: "Work from other chats is untrusted until it has been rechecked against my own papers. That includes the ledger runs of 3 Nov 2026, between about 4:25 and 5:45 am."
Other section tags (rows 2-12) concern the matter-disk work (peel ladder, SSH chain, Cayley pole, exit law, boundary census, Saha gas, GPT formal edition = IMPORTED, nuclear script, offset closed form, VOTKP 15.4); no other black-hole text.

### 2.1.2 matter-disk/README.md (11,316 bytes, 73 lines, READ IN FULL)

Title: "Matter on the Smith disk: where closed matter ends and opened matter begins". "Jeromie Beasley. Working record, started 3 November 2026. Made with AI assistance".
Joins three papers: *Matter at a Scale* (August 2026), *VOTKP: The Vector of Traits Kept under Peeling* (v2.9, 13 October 2026, DOI 10.5281/zenodo.23340757), *A Measured Lorentzian Cone in Non-Hermitian Quantum Geometry* (August 2026).
12 sections with grades ([T] proved, [V] verified numerically with controls, [C] conjecture, [H] reading). NO black-hole or horizon word appears in README.md. Section 1 is "The bridge": `Γ = tanh(ε/2) = 1 − 2ν` (the same identity that PROVENANCE.md ties to the fermion-record point of Beyond the Event Horizon ed. 10).
"What is killed, and what replaced it" (four kills, all about the matter-disk exit law; source's own words, l.38-41). Open list l.45-56. Paper: `paper/matter_then_on_down_v3.pdf` with Appendix B "Lean module `VOTKP.MatterDisk`, 12 theorems, CI-checked".

### 2.1.3 matter-disk/CLAIMS.md (10,779 bytes, 104 lines, READ IN FULL)

"Claims ledger. One entry per section... Each entry gives the kill condition as it was written before the run, the outcome, and the grade."
Sections 1 to 12, all dated 3 Nov 2026. NO black-hole or horizon word appears in CLAIMS.md.
Section 1 (l.9-11): "Claim: for occupation `ν`, odds `z = (1 − ν)/ν`, `ε = ln z`: `Γ = (z − 1)/(z + 1) = tanh(ε/2) = 1 − 2ν`. Checked to 1.1 × 10⁻¹⁶. [T]"; "The identity `1 − 2ν = tanh(ε/2)` is standard in entanglement-spectrum work; what is new is the reading as a VOTKP peel step and the counting window as a Smith disk."
(Compare event-horizon-lean `fermion_smith`: `1 - 2 * (1 / (Real.exp x + 1)) = Real.tanh (x / 2)`: same identity; the source link is made in PROVENANCE.md row 1, not in CLAIMS.md.)

## 2.2 matter-disk/corpus-notes/bh.md : THE BLACK-HOLE CORPUS NOTE (77,321 bytes, 136 lines, READ IN FULL, every line)

What it is (its own line 1-2): AI reading notes on "Beyond the Event Horizon: What Survives at a Rigidity Wall" (Jeromie Beasley, 20 October 2026), read from `bh_paper_v10.pdf`, Drive fileId 1ZUNd4YYIWO3fnAeODM7Ale3s9YdYQcYg ("Drive search also lists bh_paper_v10.html id 1SYlNfgSufOB73zwkgvXUEgvaCEjCyucO; no v10_1 found by title search"). "Edition 10." "~166k chars, 53+ pages, refs ~[1]-[97]" at line 2; its Coverage line (l.136) says "all 56 pages, abstract through reference [102]". (Disagreement inside the file: see Disagreements.)
PROVENANCE.md of the same folder says these notes are "notes about my papers, not my text, and the paper itself is the authority."
Because this file is the single fullest GitHub-side record of the Edition 10 paper's content, it is reproduced VERBATIM below (between the BEGIN/END markers) so no wording, number or grade is altered. Line numbers are the file's own.

<<<<< BEGIN VERBATIM corpus-notes/bh.md >>>>>
     1	# BH — "Beyond the Event Horizon: What Survives at a Rigidity Wall" (Jeromie Beasley, 20 October 2026)
     2	Read: bh_paper_v10.pdf, fileId 1ZUNd4YYIWO3fnAeODM7Ale3s9YdYQcYg (Drive search also lists bh_paper_v10.html id 1SYlNfgSufOB73zwkgvXUEgvaCEjCyucO; no v10_1 found by title search). Edition 10. Full text extracted by Drive connector (~166k chars, 53+ pages, refs ~[1]-[97]). Notes below written section by section. Grades he uses: [DERIVED] closed forms/identities proved here; [MEASURED] numbers from scripts (named checks BH-CORE-02, BH-LIFT-05, BH-N-01, BH-QUTRIT-18, BH-SPINE-09, BH-PETROV-06, BH-SHADOW-07, BH-KNOT-08, BH-KNOT-14, V10-CORRECTIONS, V10-PUSH); [PROPOSED] conjectures/ansatze; also [STRUCTURAL COMPARISON], [CITED RESULT], [CITED MEASUREMENT], [CHECKED].
     3	
     4	## Reviewer note / framing (verbatim key)
     5	"The metric in this paper is the intrinsic kinetic metric of the four-body shape space, which is the Bures metric of a real qutrit. It is not a spacetime metric and is never substituted for one. Every statement about black holes is a structural comparison, and each one carries its grade where it is made."
     6	"AI-assisted. The ideas and research direction are the author's; AI tools were used for literature search, computation, drafting and typesetting, and every number was checked by the scripts in the archive."
     7	
     8	## Abstract (content)
     9	- Sigma4 = {G >= 0, Tr G = 1}; one genuine wall: coplanar stratum w3=0; kinetic metric = Bures metric sum dw_i^2/(4 w_i) on eigenvalue block.
    10	- Wall is a fold: sigma_i = sqrt(w_i) -> regular coefficients, eigenvalue block = round octant of unit sphere, wall at finite distance arcsin sqrt(eps), sign of sigma3 = orientation; tetrahedron meets mirror image.
    11	- Transport A(H) = TH + HT - 2 Tr(TH) G = compression of free scaling onto trace-zero tangents; self-adjoint in kinetic metric when scaling and configuration share principal axes. In Gram frame back-coupling vanishes like sigma3^2; on codim-2 condition a Jordan block whose square-root branch = orientation double cover. On the cover: analytic, wall point a plain double (diabolic) point at tip of a cone. "Both readings are exact, and the singular differential of the covering map converts one into the other."
    12	- Complex loop: eigenvectors sign -1 in Gram frame, +1 on cover, residue 1/2 = share of each eigenvector across the fold. Real loop through the mirror: chart-free sign, conical -1 of a real self-adjoint family; Gram observer can't see it. Pair projector and trace-log ledger exact through every frame; single eigenprojectors diverge in Gram frame, norm 1 in kinetic metric.
    13	- Four further results: Majorana stars fix Jordan form of Weyl operator (Kerr type D diagonalisable; type II Jordan block unfolded by stars as wall by sigma3). Ramanujan mock theta f and modular partner b each reach 10597 near q=-1 while difference tends to 4; BH microstate counting mock modularity is wall-crossing; orientation reversal of Brieskorn spheres on trefoil separates false theta from mock. Figure-eight knot invariant grows at volume 2.029883; chiral torus knots trefoil and 8_19 conjugated by mirror, grow ~N^{3/2}, 8_19 constant has period 16 in N. Off-diagonal block B and BB^dagger (positive pullback) run through boundary census, memory kernel, contractive Cayley boundary, transport.
    14	- Walls sorted: SPECTRAL (real pair turns complex: Sun's dynamo, optical threshold) vs GEOMETRIC (spectrum stays real both sides: coplanar fold, static base of a horizon). A BH carries one of each: static base of horizon = geometric fold; ISCO of exterior = spectral wall (Jordan block between oscillation and growth), Levin whirling orbits gain azimuth like a logarithm. ISCO: gravity's effective power law p = 2 + 6M/r from epicyclic ratio reaches inverse cube p=3. Light: photon ring, growth rate = orbital rate, each extra half orbit dims image by e^{-pi}, delays by 3 sqrt3 pi M (uncharged hole alone). Ringdown: near a QNM exceptional point excitation factors of merging overtones diverge with opposite phases, sum fixed by pair projector stays finite, signal gains term linear in time. Loop around several near-extremal Kerr EPs carries fundamental mode up overtones; Sun's dynamo ladder (computed exactly) gives only separate swaps.
    15	- "The horizon's effective surface resistance equals the impedance of empty space, so in the boundary calculus it is a matched load that returns nothing."
    16	- Bell's two results meet at the one-way boundary: outside half of Hawking pair thermal and blind to pair phase while pair in ideal squeezed state beats CHSH at every frequency; theory keeping only outgoing motion balances books only with Hawking's flux.
    17	- FERMION-RECORD POINT: "For a fermion pair the outside record's offset, the log-odds of empty against full, is exactly hbar omega / k_B T_H for every pair phase; read as a log-impedance it places the record at Gamma = tanh(hbar omega / 2 k_B T_H) on the same Smith chart as the matched horizon, reaching its centre only at zero frequency."
    18	- Wave on projector metric reflects at a step through metric along the step (g_par) and Clairaut constant alone, transverse g_perp drops out as in Fresnel; total reflection begins exactly where a geodesic turns: optical threshold is a turning point; "at normal incidence a change of spectral gap reflects with the peel coordinate tanh(1/2 ln Delta2/Delta1)"; one Gram determinant sets the admittance and caps the Berry curvature a path can feel; "a polar stratum is a perfect mirror where a Killing horizon, polar in the same sense, is a matched load."
    19	- Beside a recent spacetime Penrose-inequality manuscript: shared items = fold normal form dX^2/(4 c^2 X) (c = surface gravity there, 1 here), apparent singularity = coordinate effect, non-self-adjoint horizon operator with no defect in regular chart, degenerate form with a kernel. "No identification of horizons is claimed, and the paper states what one would need."
    20	
    21	## 1 Introduction
    22	- Question: "Can black-hole geometry itself be viewed as an emergent manifestation of persistent operator structure?" Reverses direction: begin with transport operator on four-body shape space, ask what happens at a wall: what fails, what survives, what a horizon shares.
    23	- Five parts: (1) wall is a fold (Sec 2); (2) operator has two exact readings (Sec 3); (3) record survives and so does a sign (Sec 4); (4) passive boundary returning nothing is a matched load, contractivity is a pullback, horizon surface resistance makes it one (Sec 5); (5) Bell meets one-way boundary from both sides (Sec 7); walls two kinds (Sec 8); wave on projector metric (Sec 8.3); counterparts Sec 9 (Penrose manuscript [7], QNM literature).
    24	- "The framework is a mathematical reformulation, not a replacement for general relativity." Schwarzschild/Kerr, perturbation eqs, conservation laws intact.
    25	- Claimed vs not: premise that horizon physics involves non-normal operator theory "is not claimed here" (settled: hyperboloidal QNMs non-self-adjoint, unstable [1,3]; scalar product structural [4]; transient plateaus [87,5]; transient superradiance [6]). Claimed: the relational side and exact structure plus graded structural comparisons.
    26	- Two survival principles: "the contour keeps the ledger" (Riesz projectors, trace-logs exact where eigenvector arithmetic is frame-dependent); "the orientation keeps the trace" (Gram observer loses sign of sigma3; orientation + analytic labelling of eigenvalue branches keep it).
    27	
    28	## 2 Shape space and wall
    29	- X = 3x3 matrix of Jacobi vectors (centred, mass-weighted); G = X^T X; Sigma4 = {G>=0 symmetric, Tr G=1}, 5-dim convex body stratified by rank (eq 1). Basis at W=diag(w): E1 = diag(1,-1,0)/sqrt2, E2 = diag(1,1,-2)/sqrt6, E(ij)=(e_i e_j^T+e_j e_i^T)/sqrt2; E3,E4,E5=E(12),E(13),E(23). E1,E2 shape; E3-E5 shear.
    30	- Thm 1 [DERIVED] kinetic metric = Bures: g(Ea,Eb)_shape = sum_i (Ea)_ii (Eb)_ii/(4 w_i); g(E(ij),E(ij)) = 1/(2(w_i+w_j)); shape and shear orthogonal. Sigma4 = state space of a real qutrit; strata = rank strata: rank 2 coplanar, rank 1 collinear (not collisions). Proof: horizontal lifts at X=diag(sqrt w_i), Appendix A.
    31	- d=2: real-qubit Bures: rho=(I+sin chi(cos phi sx + sin phi sz))/2, metric (dchi^2+sin^2 chi dphi^2)/4, hemisphere radius 1/2, boundary chi=pi/2 circle of pure states length pi [DERIVED; CHECKED V10-CORRECTIONS]. Orientation double cover = Kendall's shape sphere of triangles radius 1/2; circle = collinear triangles. Control for all curvature computations: sectional curvature 4.0000000 [MEASURED].
    32	- Strata: interior rank 3; coplanar wall w3=0 (rank 2, codim 1); collinear w2=w3=0 (rank 1, codim 3). Interior coincidences w_i=w_j not orbit-type strata (stabiliser trivial), curvature finite.
    33	- Thm 2 [DERIVED] (fold at finite distance), sigma_i=sqrt w_i: (i) sum dw_i^2/(4w_i)= sum dsigma_i^2 on sum sigma^2=1: round positive octant, Gaussian curvature 1 ("removes the 1/w_i divergence of coefficients, not the curvature"); (ii) along W(w)=diag((1-w)/2,(1-w)/2,w): ds^2 = dw^2/(4w(1-w)), distance wall to w=eps is arcsin sqrt(eps); (iii) sigma3 = sign(det X) sqrt(w3) realises the rotation-reduced shape space as double cover of Sigma4 branched over det G=(det X)^2=0; metric dsigma3^2 smooth, even under sigma3 -> -sigma3, exchanging configuration with mirror image.
    34	- Gram coefficient g(E2,E2) = (1/6)(1/4w1+1/4w2+1/w3) ~ 1/(6 w3): "the square-root shadow of the fold, not a barrier". Holds for every square case N=d+1 [75] (Thm 2.4 there). Fold = Whitney A2 (x -> x^2/2) [77]; on three-body shape sphere the same normal form explains sec^4 rigidity law near collinear wall, cusp (A3) would give a different exponent [72]. Curvature finite: along fixed generic V, K(E2,V)->5.61, K(E4,V)->6.43, K(E5,V)->7.66 at w3=1e-4; over two decades largest change K(E4,V) factor 1.30, K(E2,V) 2% [MEASURED]. 1/w3 divergences only vs Frobenius-unit frames.
    35	- Collinear stratum genuinely singular (shear coeff 1/(2(wj+wk)) diverges; orbit dimension drops), codim 3, generic trajectories miss it.
    36	- Eq (4): wdot3 = 2 sigma3 sigmadot3, |wdot3| = 2 sqrt(w3)|sigmadot3| -> 0: incoming trajectories appear to flatten against wall and skim it; in signed coordinate pass through to mirror [DERIVED]. Fig 1: path crossing sigma3=0 at constant speed appears as bounce in w3.
    37	
    38	## 3 Transport operator
    39	- Eq 5: A(H) = TH + HT - 2 Tr(TH) G, T=diag(t1,t2,t3) > 0. T = fixed anisotropic scaling; X -> X e^{sT}, G -> e^{sT} G e^{sT}, velocity TG+GT; A applies same scaling to tangent H and returns it to trace-zero tangents along G. T and G diagonal in one frame (used throughout). Coefficient 2 forced (A(H) traceless when Tr G=1). Defined without a metric. Compression of scaling, NOT Jacobian of normalised flow G -> e^{sT}Ge^{sT}/Tr(...); that Jacobian is A(H) - 2Tr(TG)H, uniform shift, no change to eigenvectors/Jordan structure [DERIVED; CHECKED SYMBOLICALLY].
    40	- Thm 3 [DERIVED] block structure: A11 = (t1+t2) - (t1-t2)(w1-w2); A22 = 2 t3 + w3(t1+t2-2t3); A12 = (1/sqrt3)[(t1-t2) - (t1+t2-2t3)(w1-w2)]; A21 = sqrt3 (t1-t2) w3; shear block diagonal entries t1+t2, t1+t3, t2+t3; shape-shear coupling identically zero (BH-CORE-02). Matters because a defective 2x2 sub-block need not survive coupling (filament paper [73] has 5-dim pattern where sub-block Jordan but full matrix simple). Here shape block is an exact restriction of A.
    41	- Eq 8: g_W(H,K) = (1/2) sum H_ij K_ij/(w_i+w_j). D_T(H) = TH+HT.
    42	- Thm 4 [DERIVED]: T diagonal in eigenframe of W: (i) D_T self-adjoint for g_W; (ii) g_W(W,H) = Tr H/4, P_W(Z)=Z-Tr(Z)W is g_W-orthogonal projection onto trace-zero, Q_W=I-P_W onto scale direction W; (iii) A = P_W D_T P_W on trace-zero tangents; hence A self-adjoint in kinetic metric (g_W A = A^T g_W), real eigenvalues, g_W-orthogonal eigenprojectors with kinetic norm exactly 1. Common frame needed: counterexample W=diag(1/2,3/10,1/5), T=I+(1/5)(e1e2^T+e2e1^T): g_W(AH,K)-g_W(H,AK)=2/15 for H=sqrt2 E1, K=sqrt2 E(12); with T diagonal difference <2e-14 over 200 random pairs [DERIVED; CHECKED]. Symbolic check BH-LIFT-05: g_W A - A^T g_W = 0 on full 5x5.
    43	- Non-normality: in Frobenius frame ||[A,A^T]||_F = 0.2314 at t=(2,1,1.3), w=(0.5,0.3,0.2); vanishes if T ∝ I or W=I/3 [DERIVED; VALUE MEASURED]. "In the kinetic metric the operator is normal everywhere inside. The non-normality is a property of the Frobenius frame, which is the frame the Gram observer uses."
    44	- Hidden block (eq 9): P_W D_T^2 P_W - A^2 = P_W D_T Q_W D_T P_W = (Q_W D_T P_W)^*(Q_W D_T P_W) >= 0, rank <=1 in kinetic metric, zero when T ∝ I [DERIVED; BH-SPINE-09]. Direction = coupling of shape tangents to scale direction W. Section 5.4: this BB^dagger structure same as in boundary census, memory kernel, gravity quadratic form.
    45	- Thm 5 [DERIVED] no exceptional points inside: w_i>0 -> shape block diagonalisable with real eigenvalues. Second proof: on diagonal H, A acts as 2(D_t - w t^T); u_i = sqrt(w_i t_i), S = diag(sqrt(w_i/t_i)); S(D_t - uu^T)S^{-1} = D_t - w t^T similar to symmetric. Discriminant D=(A11-A22)^2+4A12A21 positive at every sampled point: min 2.9e-4 over 2e4 random interior points; 5e4 random (t,delta): no root of D in w3 inside physical segment [MEASURED].
    46	- Thm 6 [DERIVED] wall in Gram frame: (i) A21 = sqrt3 (t1-t2) sigma3^2, A12 finite: shape block upper-triangular (direction across wall E2 drives direction in wall E1, not reverse); (ii) at w3=0, A22=2t3, shape block Jordan iff A11=A22 and A12 != 0, i.e. t1+t2-2t3 = (t1-t2)(w1-w2) (eq 10), codim-2 in (G,T). On it A12 = (t1-t2)(1-delta^2)/sqrt3, delta=w1-w2; A12!=0 means t1!=t2 and |delta|<1; t1=t2 gives semisimple double eigenvalue. Dynamics xdot=-Ax: xdot2 = -A21 x1 - A22 x2 -> -A22 x2: "what happens in the wall cannot write back across it, while what arrives across the wall is written into it through A12." g_W(E2,E2) ~ 1/(6 w3) diverges so metric stops being a metric on Gram tangent space; "The Jordan block lives in that degenerate frame."
    47	- 3.5: on joint condition A11, A12 const, A22-A11 = w3(t1+t2-2t3); D(w3) = (t1+t2-2t3)^2 w3^2 + 4(t1-t2)^2(1-delta^2) w3 (eq 11).
    48	- Thm 7 [DERIVED] branch point on orientation double cover: D simple zero at w3=0, lambda± = (A11+A22)/2 ± sqrt(D)/2 square-root branch in w3. Eq 12: lambda±(sigma3) = lambda* + (1/2)(t1+t2-2t3) sigma3^2 ± (1/2) sigma3 sqrt(4(t1-t2)^2(1-delta^2)+(t1+t2-2t3)^2 sigma3^2), analytic. (i) loop of w3 around 0 exchanges pair, loop of sigma3 does not, mirror sigma3->-sigma3 exchanges the two analytic branches; (ii) gap |lambda+ - lambda-| = 2|t1-t2| sqrt(1-delta^2)|sigma3| + O(sigma3^3), linear in distance to wall; at wall 1-delta^2 = 4 w1 w2; (iii) real sigma3 either sign: eigenvalues real. Braid gate BH-N-01 at t=(2,1,1.3), delta=0.4: lambda*=2.6, A12=0.484974; one loop in w3 (radius 1e-3) swaps pair, two restore; discriminant winds +1 per loop; one loop in sigma3 no swap; gap/sigma3 = 1.833030 vs 2 sqrt0.84 = 1.833030 [MEASURED]. Off joint condition D(0)=(A11-A22)^2>0, every zero of D outside closed physical segment [DERIVED AT WALL; MEASURED ELSEWHERE]. "Part (iii) separates this wall from a spectral exceptional point (Sec 8): along every physical path the spectrum stays real on both sides, including through the mirror." Over 41 values of t3 and 241 values of sigma3 in [-0.6,0.6] largest imaginary part exactly 0 (BH-LIFT-05) [MEASURED].
    49	- 3.6 cover: coordinates (delta, sigma3), d_delta = E1/sqrt2, d_sigma3 = -sqrt6 sigma3 E2, J = diag(1/sqrt2, -sqrt6 sigma3) (eq 13); lifted transport B = J^{-1} A J. Thm 8 [DERIVED]: with c=t1+t2-2t3, B(sigma3) = [[(t1+t2)-delta(t1-t2), -2 sigma3 (...)? ... ]] (eq 14: entries (t1+t2)-delta(t1-t2); (delta c-(t1-t2)) * [2 sigma3 as printed layout]; -(1/2)... ; 2t3 + c sigma3^2) analytic in sigma3 incl. wall. B self-adjoint for pulled-back metric J^T g_W J finite positive at wall ((J^T g_W J)_{sigma3 sigma3} -> 1). On joint condition B(0)=lambda* I. Near it B = lambda* I + sigma3 B1 + eps B2 + O(sigma3^2, eps sigma3); B1 = (t1-t2)[[0, 2(delta^2-1)],[-1/2, 0]], B2=[[0,0],[0,2]], eps=t3-t3* departure from joint condition. Cone: gap 2|t1-t2| sqrt(1-delta^2)|sigma3| along wall direction, 2|eps| across joint condition, linear in both. BH-LIFT-05 checks (14) vs J^{-1}AJ to 6e-17 at sigma3=0.3,0.05,-0.2; B(0)=2.6 I exactly; gap 1.833030e-3 at sigma3=1e-3, 2.000000e-3 at eps=1e-3 [MEASURED]; closed form 2 sqrt0.84=1.833030278 and BH-QUTRIT-18 slope 1.833030278 [DERIVED; CHECKED].
    50	- "So the wall point has two honest descriptions": Gram observer: Jordan block with square-root branch in w3; oriented cover: diabolic point, plain double eigenvalue at tip of a cone. "The singular differential J of the covering map converts the second description into the first." "Gram frame and cover name these two spaces, not two bases of one space: no similarity changes a Jordan form, and none is claimed. Away from the wall A and B are similar; at the wall J is singular, so A on tangent space of Sigma4 and B on tangent space of cover are different operators, and A there is genuinely defective."
    51	- 3.7 Prop 9 [DERIVED] declared operator decides: T=G^{-1} (affine-invariant metric <H,K>_G = tr(G^{-1}HG^{-1}K)): A self-adjoint for <.,.>_G at every interior point, diagonalisable real spectrum; approaching wall three eigenvalues diverge like (1,1,2)/w3, two stay finite; no Jordan block in any frame. Measured eigenvalues x w3 -> (1.000,1.000,2.000) at w3=1e-6. "The words 'the wall' therefore always need the operator and the frame named alongside. This matters for any comparison with horizons, where the operator is fixed by physics."
    52	
    53	## 4 What survives the wall
    54	- 4.1 "The contour keeps the ledger". Eq 16: P_pair = (1/2 pi i) oint (z-A)^{-1} dz, L_c = (1/2 pi i) oint log(c+z) Tr(z-A)^{-1} dz = log det(c + A_pair). Analytic while contour clear of spectrum; no metric used. In Gram frame Frobenius norm real 2x2 block: ||P±||^2 = 1 + (A12-A21)^2/g^2 (App A), ||P±|| g -> |A12|; in kinetic metric orthogonal, norm exactly 1.
    55	- Table (t=(2,1,1.3), delta=0.4, Gamma circle radius 0.25 about lambda*=2.6) [MEASURED]: w3=1e-2: gap 1.83e-1, Gram norm*gap 0.502311, kinetic norm 1.000000, count 2, Tr P_pair 2.0000000000, ledger log det(1+A_pair) 2.562330546753; 1e-4: gap 1.83e-2, 0.485147, 1, 2, 2, 2.561872320543; 1e-6: gap 1.83e-3, 0.484976, 1, 2, 2, 2.561867737220; w3=0: 2, 2.561867690924. Gram-frame ||P±||*gap -> |A12| = 0.484974: "the divergence constant of a single projector is the Jordan coupling". Gram norms 2.74, 26.47, 264.58 at sigma3=0.1,0.01,0.001. Ledger -> 2 log(1+lambda*) = 2 log 3.6 = 2.561867690924. "The ledger is smooth, not constant: it is a record, not a conserved charge. It needs no metric at all, and in that sense the record outlives the metric."
    56	- Hypothesis visible: at w3=0.1 pair spreads to [2.33,2.91], shear eigenvalue t2+t3=2.3 enters any circle wide enough -> contour needs spectral margin (App A Lemma 18, Thm 19). With margin, map from operators to Grassmannian projector data locally Lipschitz in any frame. Davis-Kahan: sin(angle) <= ||E||/delta [97]. 2000 random symmetric 6x6 with three-member cluster split 1e-3, ||E||=0.02: subspace turned median 0.27 deg, vectors 74 deg; split 0.4: vectors 2.7 deg; bound never exceeded [MEASURED, V10-PUSH].
    57	- Real orbit: Chenciner-Montgomery figure-eight (three equal masses): shape passes collinear wall six times per period; rigidity R = lambda^{-2}_min diverges, reaches 2.5e16; through all six crossings contour count holds at 2 to 5.1e-15, shifted trace-log equals log(1+lambda_min)+log 2 to 2.2e-15. With no shift the log branch point sits inside contour and ledger fails, reaching -0.580 vs correct min log 2 [72] [CITED MEASUREMENT]. Hypothesis doing the work: single-valued holomorphic branch of log(c+z) on a region containing Gamma and enclosed eigenvalues - "a branch condition, not positivity".
    58	- 4.2 "The orientation keeps the trace": Gram observer can't see (G depends on sigma3^2); sign of det X carries it; also analytic labelling: branch lambda+ before crossing continues into the one Gram observer calls lambda-. "The encounter leaves a Z2 record, readable as a monodromy, while every Gram-level quantity returns to its starting value." Three-body plane: three normalised mutual distances keep triangle shape up to reflection, lose sign of oriented area; triangle and mirror share one distance record, sheets meet at collinear [41].
    59	- "The handed record cancels across the mirror": pairing N - Tr(A^dagger B) splits symmetric (distance) and antisymmetric part Omega(V,W)=Tr(P[V,W]) on projector tangents; vanishes identically for real orthogonal projector family (Tr(PVW)=Tr((PVW)^T)=Tr(WVP)=Tr(PWV)). In Gram frame P+ oblique, Omega not zero; Omega(d_sigma3 P+, d_delta P+) odd under mirror [DERIVED]. Table at t=(2,1,1.3), delta=0.4 [MEASURED]: |sigma3|=0.1: Omega(+)=-27.257764, (-)=+27.257764, symmetrised <1e-11; 0.2: -6.799872/+6.799872; 0.4: -1.685527/+1.685527. "Each side of the wall is handed in the Gram frame, the two sides cancel exactly, and the handedness lives only in the split of the pair: on the pair projector, which is the identity on the shape block, Omega = 0." Behaviour of object fixed by an involution.
    60	- 4.3 "The sign the cover keeps": biorthogonal transport u.v=1, connection a = (u.dv)/(u.v), v -> v e^{-int a} (17); frame change v->Fv, u->F^{-T}u adds a -> a + u.(F^{-1}dF)v/(u.v) (18); added term need not be exact even for single-valued invertible F: rotation F(theta), u=(1,0), v=(1,1) adds H=-2 pi [DERIVED; CHECKED]. "The transported factor belongs to the operator and the frame together." Diagonal frame change adds sum_i u_i v_i/(u.v) d log F_i.
    61	- Thm 10 [DERIVED] two loops two charts. On joint condition, c=t1+t2-2t3, Q(sigma3)=(t1-t2)^2(1-delta^2)+(1/4)c^2 sigma3^2, p=sqrt(Q)+(1/2)c sigma3. (i) Gram frame, complex loop: analytic eigenvectors v=(A12, lambda-A11), u=(A21, lambda-A11) of branch lambda=(A11+A22)/2+sigma3 sqrt Q; u.v = 2 sigma3^2 sqrt(Q) p; a_G = (p+sigma3 p')/(2 sigma3 sqrt Q) dsigma3 (19), simple pole residue exactly 1/2; one loop of sigma3 returns each eigenvector times -1; one loop of w3 acts by monodromy M with M^2=-I, M^4=I. (ii) same loop on cover: a_reg holomorphic, returns +1; a_G = a_reg + (u2 v2/(u.v)) B dsigma3/sigma3 (20), u2v2/(u.v) = share of pairing carried by folded direction; at wall point equals 1/2 exactly because B1 has zero diagonal. "The residue 1/2 in (i) is therefore the simple zero of det J weighted by the half of each eigenvector that lies across the fold." (iii) Real loop through the mirror: real loop in (sigma3, eps) encircling wall point must pass through sigma3<0; eigenvalues real distinct; continuously chosen real eigenvector returns reversed, eigenline holonomy -1; real loop not encircling returns +1. (iv) Gram observer can't see (iii): image lies in w3>=0 and retraces itself, returns +1; no loop in w3>=0 encircles wall point. Proof: u.v computed; residue p(0)/(2 sqrt Q(0)... ) = 1/2, oint a_G = i pi, e^{-oint a_G} = -1; traceless part -eps sigma_z + kappa sigma3 sigma_x with kappa = |t1-t2| sqrt(1-delta^2): eigenvector turns through half the angle. BH-LIFT-05 at t=(2,1,1.3), delta=0.4: complex loop radius 0.02 in sigma3: Gram -1.00012, regular +1.00000; folded share 0.500000000000 both branches; real loop radius 0.05 in (sigma3,t3) around (0,1.3): eigenline orientation in kinetic metric -1.000000000 on cover and +1.000000000 in Gram; same loop at centre sigma3=0.2: +1 both [MEASURED].
    62	- "So the cover does keep a sign. It is not the complex-loop sign, which is the trace the fold leaves on the Gram observer's eigenvectors, half a unit of flux per simple zero of det J. It is the sign of a conical intersection of a real self-adjoint family. That is the Herzberg-Longuet-Higgins sign [21], the real case of Berry's phase [22]. Here it is carried around a point that only the oriented configuration space can encircle, because the loop has to pass through the mirror." Order-four monodromy around generic EP known, observed in microwave cavities [16,17]. "What is specific here is that both signs occur at the same point and are told apart exactly by the fold."
    63	- Beside Majorana exchange: R=(1+g1 g2)/sqrt2 = e^{pi g1 g2/4} [18]; R^2=g1g2, (R^2)^2=-I, R^8=I (four modes Jordan-Wigner) [MEASURED]. Gram-frame monodromy M obeys relations of double exchange R^2 (M^2=-I, M^4=I). "A Majorana pair is fixed by charge conjugation, and the wall point is fixed by the mirror. The comparison is structural. Unlike a Majorana sign, which belongs to the representation, the Gram monodromy belongs to a chart. The chart-free sign at this point is the real conical one of part (iii) [STRUCTURAL COMPARISON]."
    64	- 4.4 Majorana stars / Petrov: Weyl spinor as traceless complex symmetric 3x3 Q on self-dual bivectors; stars = roots of psi_Q(z)=n(z)^T Q n(z), n(z)=(1-z^2, i(1+z^2), -2z), n.n=0 (21). Prop 11 [DERIVED; CHECKED BH-PETROV-06]: Q->psi_Q invertible, determinant 3072 in basis diag(1,-1,0), diag(1,1,-2), e_i e_j^T+e_j e_i^T. Table: four distinct stars = type I, three distinct eigenvalues, diagonalisable; one double = II, one 2x2 Jordan block; two double = D, eigenvalues (lambda,lambda,-2 lambda) diagonalisable; one triple = III, one nilpotent 3x3 block; one quadruple = N, nilpotent Q^2=0 blocks (2,1). Classical correspondence [26]. Unfolding: split double star of type II by delta: coefficients move eps ∝ delta^2, gap grows like sqrt(eps) = linear in delta: gap/delta = 0.800000 at delta=1e-1..1e-4 [MEASURED]. "The coefficients are the even observable and the star separation is the signed coordinate. This is the fold again, now in the space of Weyl tensors." Type II genuine Jordan block unfolded by stars without removing block. Type D split symmetrically: double eigenvalue splits quadratically gap/delta^2=0.250000 [MEASURED]; "protected to first order".
    65	- Kerr: Kinnersley Psi2 = -M/(r - i a cos theta)^3 [27]; stars two doubled pairs everywhere; check at three points M=1, a=0.7 finds type D each time, eigenvalue ratio -2 to 1e-9 [MEASURED]. "The Kerr exterior, horizon included, is a type D object: a degenerate but diagonalisable Weyl operator, a diabolic rather than an exceptional degeneracy. The marginally trapped surface operator says less: its principal eigenvalue is always real and simple [8], which rules out a defect at that eigenvalue only." Comparison: wall point in Gram frame looks like type II; on cover diabolic like type D; gap laws differ (cover point a cone, linear in both; D quadratic under symmetric splitting): "comparison is between Jordan structures and unfolding exponents, not an identification of a Weyl tensor with a transport operator [STRUCTURAL COMPARISON]". Three-body shape sphere: equal masses, equilateral configuration fixed by Z3 relabelling, linear splitting vanishes: gap closes quadratically (gap/theta^2->1.000000), holonomy +1; masses (1,2,3): genuine cone, gap linear (gap/r -> 2.16280), eigenvector returns negated (-1.000000 at every radius) [72][CITED]. The two quadratic laws have different causes (Kerr D: diagonalisable degeneracy coefficients move by delta^2; shape sphere: property of this operator at Z3-fixed point; Z3 can also split linearly as in E x e Jahn-Teller [94]).
    66	- 4.5 Ramanujan's shadow: f(q)=sum_{n>=0} q^{n^2}/(-q;q)_n^2, b(q)=(q;q)_inf/(-q;q)_inf^2 = (1-q)(1-q^3)(1-q^5)...(1-2q+2q^4-...) (22). At root of unity zeta of even order 2k along radius f and b blow up but f(q)-(-1)^k b(q) bounded; Folsom-Ono-Rhoades [28]: limit L(zeta) = -4 sum_{n>=0} (-zeta;zeta)_n^2 zeta^{n+1} (23), terminates when 1+zeta^j vanishes. "The bounded value is the visible trace of the mock theta function's shadow". BH-SHADOW-07 table [MEASURED]: zeta=-1, 1-|q|=1e-3: log10|f|=180.26, f-(-1)^k b=3.996012, L=4; zeta=-1, 3e-4: 597.24, 3.998801, L=4; zeta=i, 3e-4: 150.67, 0.002390+3.994025i, L=4i; zeta=e^{i pi/3}, 3e-4: 67.91, -1.988709-3.450721i, L=-2-2sqrt3 i. "Two numbers of size 10^597 cancel to 3.9988" (extracted text shows 10597 = 10^597). Three-point extrapolation in 1-|q|: 3.9999999, 0.0000022+3.9999947i, -1.9999547-3.4640476i vs L = 4, 4i, 4e^{-2 pi i/3}. "Each member of a pair diverges at the special point, and the pair has a finite, exact value there... For f itself the analogy is one of bookkeeping, not mechanism: this mock theta function has no transport operator behind it [STRUCTURAL COMPARISON]."
    67	- BH mock modularity: Dabholkar-Murthy-Zagier [58]: quarter-BPS counting function in N=4 splits into mock Jacobi form (single-centred black holes, immortal) + Appell-Lerch sum (multi-centred bound states); bound states come apart across walls of marginal stability; wall-crossing = source of mock behaviour; non-holomorphic completion restores modularity. "These walls lie in the moduli space of the theory, not in spacetime and not at a horizon. They are a third kind of wall... no identification with the coplanar fold is made [CITED RESULT; STRUCTURAL COMPARISON]."
    68	- Mirror joins to Brieskorn spheres: orientation reversal sends q -> q^{-1}; one orientation Z-hat false theta, reversed conjectured mock, Sigma(2,3,7) in detail [59,60]; strong quantum modularity of WRT invariants for every Brieskorn homology sphere proved [61]. 1/n surgery on T(p,q) gives Sigma(p,q,|pqn-1|) [62]; +-1 surgery on trefoil gives Poincare sphere Sigma(2,3,5) and Sigma(2,3,7) [DERIVED; BH-KNOT-14]. "The orientation reversal that separates the false side from the mock side is the same sign flip that carries a configuration to its mirror image at the coplanar wall (Thms 2, 10)." Cautions: mock functions there are Ramanujan's seventh order not third-order f; mock side is conjecture supported by computation; neither is a transport operator.
    69	- 4.6 Mirror rule in knots (q=e^{2 pi i/N}): Kashaev <4_1>_N = sum_{k=0}^{N-1} |(q;q)_k|^2; Kontsevich-Zagier F(q)=sum (q;q)_n gives trefoil Kashaev up to conjugation [32,31]; mirror q->q^{-1} conjugates both. Prop 12 [MEASURED, BH-KNOT-08]: (i) figure-eight amphichiral: invariant real (imag part 1e-13 of real at N=200), signature 0, exponential growth with hyperbolic volume: with N^{3/2} and 3^{-1/4} factors removed, (2 pi/N) log<4_1>_N = 2.029889 at N=800 vs Vol(4_1)=2.029883 [33]. (ii) trefoil chiral: invariant not real, mirror conjugates, signature changes sign (-2,+2), power growth |F(e^{2 pi i/N})|/N^{3/2}=1.000012 at N=800; complement has no hyperbolic volume. (iii) T(3,4)=8_19 chiral: Alexander t^6-t^5+t^3-t+1, genus 3, Jones q^3+q^5-q^8 up to mirror [DERIVED]; invariant via Rosso-Jones (validated against unknot, both Jones, trefoil series) grows like power, no volume, mirror conjugates; constant in front of N^{3/2} depends on N mod 16: sixteen values from 0.0858 at N=0 to 2.9142 at N=8, symmetric under r -> 16-r, repeating to 1e-4 along each class [MEASURED, BH-KNOT-14]; trefoil single constant. Surgeries Sigma(3,4,11), Sigma(3,4,13) [62]. Molecular 8_19 by self-assembly [64]; torus-knot modular structure [63]. "At a configuration fixed by the mirror, every reading odd under the mirror vanishes (the signature, the imaginary part, the handed part Omega summed across the wall), while the even readings survive, and the volume and the ledger are among them." Same rule in fermion chain: boundary offset of half-filled Rice-Mele chain is exactly the part odd in the staggering, boundary-preserving particle-hole conjugacy protects its zero [57].
    70	- 4.7 Transients (eq 24): J_mu=[[b,mu],[0,b]]: ||e^{-J_mu t}||_2 = e^{-bt} sqrt(...)/... = e^{-bt}( sqrt(4+mu^2 t^2)+|mu| t )/2 [as printed: "p4+mu^2 t^2+|mu|t over 2"]; transient growth above 1 exactly when |mu|/b>2 (App A). Joint point Gram frame: |mu|/b = 0.4850/2.6 = 0.1865: no transient amplification, only slowed decay [DERIVED; VALUE MEASURED]. Kinetic metric: ||e^{-At}|| = e^{-lambda_min t}, no transient. Refinements from companion papers: eps-pseudospectrum of J_mu is exactly disk |lambda-b| < sqrt(eps|mu|+eps^2); input confined to interface coordinate (prescribed hit) grows only for |mu|/b > kappa_r = 2.48527 above optimal-state threshold 2; "a black hole struck by infalling matter receives a prescribed kick, so kappa_r is the relevant test"; same block approached at two rates: diagonal detuning collapses eigenvector linearly, reverse coupling as square root [73]. Real orbit: figure-eight amplifies perturbations 45.7-fold in energy within one period, mean gain 10.58 in quartile nearest collinear wall and 26.10 in farthest [72] [CITED]; "Transients live away from the geometric wall, as they do here."
    71	- 4.7 cont.: persistence overlap C(Delta)=Tr P(t)P(t+Delta); observable channels C(Delta)->rank P. Stiffness across wall: ydd+omega^2 y=0 at fixed E: displacement amp sqrt(2E)/omega, velocity amp sqrt(2E), phase int omega dt [DERIVED]. Sigma4 kinetic metric supplies no such stiffness (curvature finite in sigma3); apparent suppression in Gram coordinate is the fold law (4). Any distance-built potential is a function of G, hence even under orientation reversal; wall always a transverse critical point. Eq 25: omega^2 = d^2V/dsigma3^2|0 = 2 dV/dw3|_{w3=0} [DERIVED]; omega a frequency in kinetic metric.
    72	- Thin disk: V=(1/2)nu^2 sum m_i z_i^2 = zz entry of XX^T; min over orientations = w3; V=(1/2)nu^2 sigma3^2: transverse frequency of shape = disk's vertical frequency nu; amplitude falls as 1/nu [DERIVED; CHECKED BH-QUTRIT-18] (minimum to 2e-16).
    73	- Newtonian gravity four equal masses U=-sum_{i<j}1/r_ij at fixed I: dU/dw3>0 at all 400 sampled flat configs (smallest +1.89) and all 20000 more [MEASURED BH-QUTRIT-18, BH-STIFF-19]; like charges dU/dw3<0 everywhere (wall is transverse maximum). Eq 26: dU/dw3 = (1/2)[ sum_{i<j} (c_i-c_j)^2/(|c|^2 r_ij^3) - sum_{i<j} 1/r_ij ] [DERIVED; CHECKED]. Rhombus diagonals ratio k<=1: every edge 1/sqrt2 at I=1; stiffness (1/2)(4 sqrt2 - sqrt((1+k^2)/2)(1+1/k)) vanishes where (1+k^2)(1+k)^2=64k^2: k* = 0.144557 [DERIVED; CHECKED]. Gravity stiffens rhombus only for k>k*; k<k* transverse maximum. Square exact control: lifting alternate corners by +-h at I=1, w3=4h^2, U=U0+(2 sqrt2 -1) w3+O(w3^2); omega = sqrt(2(2 sqrt2-1)) = 1.912290 (27). Exact lift potential eq 28: U(sigma3) = -4 sqrt2/sqrt(1+sigma3^2) - 2/sqrt(1-sigma3^2) = U0+(2 sqrt2 -1) sigma3^2 - (3 sqrt2/2 + 3/4) sigma3^4 + ... (printed form; edges sqrt((1+sigma3^2)/2), diagonals sqrt(1-sigma3^2)); quartic negative: gravity softens as square lifts. Kick energy E lifts to |sigma3|~sqrt(2E)/omega; E=0.1420 reaches sigma3=0.300 where harmonic estimate gives 0.279 [DERIVED; CHECKED V10-CORRECTIONS]. Climb ends at regular tetrahedron sigma3=+-1/sqrt3, critical point of U at fixed I (central configuration) 2+4 sqrt2 - 6 sqrt3/2 = 0.3084 above square, a mirror pair with same G.
    74	- 4.8 Fidelity/Fisher: Sigma4 = state space of real qutrit rho=G. QFI of constant-rank curve = 4 x Bures metric [91]: F_Q = 4 g(Gdot,Gdot); at unit moment of inertia shape kinetic energy K=(1/2)g(Gdot,Gdot), eq 29: F_Q = 8K [DERIVED; CHECKED BH-QUTRIT-18] (g computed as smallest |Xdot|^2 producing Gdot; F_Q/g=4 to 1e-11 on 200 random motions). At wall rank drops: along G(s)=diag((1-s^2)/2,(1-s^2)/2,s^2) crossing at unit speed in sigma3=s: 8K = 4.0404, 4.0004, 4.000004, 4 at s=0.1,0.01,0.001,0; SLD Fisher information matches at every s != 0 and exactly 0 at s=0 [DERIVED; CHECKED V10-CORRECTIONS]; known discontinuity [98]. "Kinetic energy is continuous through the fold and Fisher information is not: it reads only G, so it belongs to the Gram observer." Wall distance is a Bures angle: fidelity F(rho,sigma)=(Tr sqrt(sqrt rho sigma sqrt rho))^2; sqrt F = sqrt(1-eps), arccos sqrt F = arcsin sqrt eps (30) [DERIVED; CHECKED to 3e-14]. "Fidelity is the Gram observer": configuration and mirror have same G, fidelity exactly 1; on cover 2 arcsin|sigma3| apart. "Every function of G, fidelity included, is blind to orientation; only the cover separates the pair."
    75	
    76	## 5 A one-way boundary
    77	- 5.1 Interface Schur complement: K = [[A,B,0],[C,D_Sigma,F],[0,G,E]]; K_Sigma(z)=D_Sigma - z - C(A-z)^{-1}B - F(E-z)^{-1}G (31). One-way when one coupling vanishes (block-triangular) — Thm 6(i) at coplanar wall in Gram frame; Schur load A12A21/(z-A22) vanishes like sigma3^2; resolvent entry (z-A)^{-1}_21 = A21/[(z-A11)(z-A22)-A12A21] vanishes while _12 does not [DERIVED]. Determinant version proved in offset paper [57]: Gaussian fermion state regional covariance 0<C<I, offset tau=log det(I-C)/det C = log-odds of empty region vs full; adding one site to protected even block, e^tau = s0/s1 ratio of two scalar Schur complements on added site (conditional vacancy and occupation). "the boundary holds the record exactly, as a ratio of two boundary numbers. The interior still enters those numbers through the inverse of its block, so this is a reduction to boundary data, not a proof that only a few sites matter [CITED RESULT, [57], THEOREM 8]."
    78	- 5.2 Matched load. Prop 13 (Schur-Cayley boundary) [DERIVED]: L passive Herm L=(L+L*)/2>=0; Z_b = L_bb - L_bi L_ii^{-1} L_ib = W* L W, W=I-L_ii^{-1}L_ib, Herm Z_b = W*(Herm L)W >= 0 (no normality assumption); S_b=(Z_b-I)(Z_b+I)^{-1}; I - S_b* S_b = 4 (W V_b)* Herm L (W V_b) (32), V_b=(Z_b+I)^{-1}; ||S_b||<=1; S_b=0 exactly for matched load Z_b=I. Identities hold to 2.4e-15 on random passive samples, largest ||S_b||=0.901 [MEASURED BH-SPINE-09]. Cautions: no reflection is not full absorption (count transmitted/reflected/absorbed separately); matched load is a statement about impedance not causality; "As a model of a one-way membrane it is the honest one, at the structural grade."
    79	- HORIZON IS A MATCHED LOAD: membrane paradigm stretched horizon surface resistivity R_H=4 pi (Gaussian, c=1) = impedance of empty space 376.73 ohm; tangential fields B_H = E_H x n (plane wave in vacuum) [42,43,44]; closes circuit in Levin's black-hole pulsar [45]. Normalised by vacuum impedance Z_b=1, Cayley map S_b=0. 4 pi/c -> 376.7303135 ohm = mu0 c, "a unit identity rather than a measurement"; S_b = -+1/3 at Z_b=1/2 and 2 [DERIVED; CHECKED BH-MATCHED-12]. "The membrane sources state the resistivity and the plane-wave relation; reading them as zero reflection is the Cayley statement S_b(1)=0, so the comparison is structural [STRUCTURAL COMPARISON, SOURCED]." Smith chart as Poincare disk: distance from centre 2 artanh|Gamma| [76] (VOTKP); matched horizon at centre. Match belongs to horizon surface not hole seen from afar: potential barrier reflects long-wavelength radiation, greybody factors vanish as omega M->0 [95]. "A wave that reaches the horizon is not returned; a wave from infinity mostly never reaches it." Rotation adds superradiance (not described by local resistivity). Same chart carries step reflection (8.3) and fermion record (7) at other points (Fig 16b).
    80	- 5.3 Contractive pullback: G=(I,S_b)^T graph, J=diag(I,-I): G*JG = I - S_b*S_b = 4 (WV_b)* Herm L (WV_b) (33) [DERIVED; CHECKED BH-SPINE-09] 2.4e-15. "Two pullbacks, one through the boundary's own graph and one through the interior, give the same form." Operator-graph language Nag-Sullivan [36]. One tensor two jobs: GR metric both ruler and potential; premetric programme separates [34]; projector geometry takes other route: Q_ab = Tr P d_aP d_bP = g_ab - (i/2) Omega_ab (34) [35], positivity: |Omega_12| <= 2 sqrt(det g) (35) [DERIVED; CHECKED] smallest slack 1.0e-3 on 200 random two-parameter families; independently assigned Hermitian form g - (i/2)Omega need not be positive; two-level families equality (rank one), three-level strict median slack 37% [MEASURED V10-PUSH]. "in each, a positive form is a pullback, and the positivity is what makes it a ruler."
    81	- 5.4 Off-diagonal block and its square [DERIVED; CHECKED BH-SPINE-09]: (a) orthogonal projector P=[[C,B],[B^dag,C']]: C-C^2=BB^dag, Tr(C^2-C)=-Tr BB^dag<=0 = boundary census of Light Keeps the Ledger (Thm 5.1 there) [37] and the negative quadratic form q(C)=-Tr BB^dag of gravity edition [40]; (b) H=[[A,B],[B^dag,D]]: memory kernel K(t)=B e^{-iDt} B^dag, footprint K(0)=BB^dag positive; for t!=0 not Hermitian [39]; (c) P H^2 P - (PHP)^2 = PHQHP = BB^dag: exit and return [41]; (d) transport: P_W D_T^2 P_W - A^2 rank<=1 positive in kinetic metric; hidden direction = the scale. Schur loads and impedance built from same blocks divided by hidden resolvent instead of squared. "Every form in this list is a pullback, and every one is positive."
    82	- 5.5 Delay is not trapping. One-way readout: L_b=[[-1,0],[0.3,-b]] on (exterior, hidden), read through (1,0): exterior signal e^{-t}x1(0) for every b and hidden state [DERIVED; CHECKED] (b in {0.1,1,7}, agree 1e-14). "A record that reaches the hidden block and never returns is invisible from outside". Hidden-block ambiguity: P(X+QYQ)P=PXP for every Y. Finite silence certificate: hidden block dim q, entered through C read through B, never passes a signal iff B D^j C=0 for j=0..q-1 (Cayley-Hamilton) [DERIVED]; checking fewer can miss a delayed response; readout: (1,0)L_b^k(x,h)^T=(-1)^k x. Retention and return (36): xdot=P-(kappa+a)x+by, ydot=ax-by, d/dt(x+y)=P-kappa x. After impulse x(0)=E0, for every b>0 all energy leaves, mean residence time (1+a/b)/kappa, unbounded as b->0; b=0: fraction a/(kappa+a) stays forever [DERIVED; CHECKED SYMBOLICALLY]. "The limits t->infinity and b->0 do not commute... Storage decides how long energy stays; the return structure decides whether it can come back through that channel at all. This is a conditional energy model, not a simulation of a star or a black hole." (App B: Laplace transform F(s)/E0 = kappa(s+b)/(s^2+(kappa+a+b)s+kappa b).)
    83	
    84	## 6 Hair, as boundary compression
    85	- Compression D(X)=PXP, P Riesz projector of retained cluster; keeps cluster trace and ledger; idempotent for every projector; orthogonal projection of operator space iff P Hermitian; for oblique Riesz projector of non-normal cluster a non-orthogonal projection, not automatically a quantum channel [DERIVED; CHECKED V10-PUSH]. "The interface therefore performs rank compression, not destruction. What crosses the wall is the cluster record and the orientation record. What is lost is the splitting into individual vectors, and the hidden block."
    86	- "The informal name for this mechanism is the hairdresser, and it is imagery only. Its scissors are the exact vanishing back-coupling A21 ∝ sigma3^2. Its fingers are the fold law (4)... Its mirror is the reflection sigma3->-sigma3, together with the ledger exact at the wall point. Its light is the contour that keeps the enclosed invariants finite. No claim is made that this is a no-hair theorem." GR uniqueness at equality proceeds through Killing initial data, staticity and doubling [7].
    87	- Closest 2026 results: Hou-Zhu soft hair / image memory effect [85]; Ashtekar-Paraizo-Shu far-from-equilibrium laws [86]. "Neither uses the compression D, and nothing here reproduces their results [CITED; STRUCTURAL]."
    88	
    89	## 7 Bell at the horizon
    90	- Bell's inequality (local hidden record limit) [48,49]; Bell-Jackiw anomaly (axial) [50]; at a horizon the gravitational anomaly of the one-way near-horizon theory (Robinson-Wilczek) [54] fixes Hawking's flux; Bell-Leinaas accelerated thermometer [51] sets a scale which projector data cannot (Prop 16; Prop 13 of [57]) so stays outside.
    91	- 7.1 Hawking pair: |psi> = sum_n (tanh^n r/cosh r)|n>_out|n>_in, tanh r = e^{-omega/(2T_H)} (37). Prop 14: (i) outside half exactly thermal, Bose weights tanh^{2n}r/cosh^2 r, same for every pair phase [DERIVED]; (ii) ideal two-mode squeezed state, parity pseudospin: largest CHSH = 2 sqrt(1+tanh^2 2r) > 2 for every frequency [53] [REPRODUCTION], no cross-horizon measurement implied; (iii) (|10> +- i|01>)/sqrt2 same one-mode records evolve under exchange coupling g into opposite imbalances +-sin 2gt [DERIVED]. BH-BELL-11: (i) machine precision; (ii) 1e-10 at four squeezings (2.0385848200 at r=0.1; 2.8054348865 at r=1.2); (iii) imbalances +-0.531186=+-sin0.56 [MEASURED]. CHSH vs horizon: 2.785688 at omega/T_H=1/2, 2.383254 at 2, 2.000182 at 10. "The outside record is complete as a record and blind to the pair's phase (i), and that phase decides what the pair does next (iii) [STRUCTURAL COMPARISON]." Analogue BH Bell study [56].
    92	- FERMION RECORD: Dirac pair cos r|00> + e^{i phi} sin r|11>, tan^2 r = e^{-omega/T_H}; outside half Fermi-Dirac thermal occupation C=sin^2 r; eq 38: tau = log det(I-C)/det C = log P(empty)/P(full) = hbar omega/(k_B T_H), same for every pair phase phi; several independent modes tau=sum_k hbar omega_k/k_B T_H [DERIVED]. Offset is a log-impedance: z=e^tau=(1-C)/C; eq 39 Smith coordinate Gamma = (z-1)/(z+1) = 1-2C = tanh(hbar omega/(2 k_B T_H)), exact for every pair phase (to 3e-16 by partial trace over six frequencies and seven phases) [DERIVED; CHECKED V10-PUSH]. Particle-hole exchange C->1-C sends Gamma->-Gamma, fixed point Gamma=0 reached only at omega=0: record sits at chart centre where matched horizon sits only in zero-frequency limit. "This is a statement about one chart, not an identification of the two." BH-OFFSET-15: tau=omega/T_H to 6e-16 over six frequencies, seven phases; 13.26 both ways for four modes [MEASURED]. "The identity is the logarithm of a Boltzmann factor, so what it adds is the reading: the outside record's zero point is fixed by omega/T_H, and the phase that decides the pair's future never enters it." Needs 0<C<I: fermion modes not bosonic pair (full mode undefined). Fixes only ratio omega/T_H, never absolute scale (Prop 16 and twin in offset paper). Routes to Einstein eq elsewhere: Jacobson [82]; Dorau-Much [83]; offset line "supplies none of their premises: it fixes a ratio, not an area or a flux."
    93	- 7.2 Anomaly route: Robinson-Wilczek remove ingoing modes; balance restored by Hawking's flux [54,55]. f(r)=1-2M/r: anomaly flux f'(r_H)^2/(192 pi) = pi T_H^2/12 of one chiral mode at T_H=f'(r_H)/(4 pi)=1/(8 pi M) [REPRODUCTION; CHECKED SYMBOLICALLY BH-BELL-11]. Counterparts: (a) removing one direction = A21 vanishes; (b) associativity defect of reduction x*y=P(xy): (x*y)*z - x*(y*z) = P[x Q(yz) - Q(xy) z], Q=I-P (40); reduced square misses P_W D_T^2 P_W - A^2 rank<=1 (9) [DERIVED; CHECKED] to 1.1e-14; (c) retention model with no return: xdot=P-kappa x - a x: outside books close only when one-way flux a x counted. "In each case the reduced description is exact once the one-way term is carried and fails without it. That is the shape of the anomaly argument. No anomaly coefficient and no temperature come out of our side [STRUCTURAL COMPARISON]."
    94	- 7.3 Table: entanglement route (Bell inequality 1964; pair beats any local record; our object hidden-block identity, same record opposite futures; exact: thermal outside record, CHSH 2 sqrt(1+tanh^2 2r); not ours: quantum state of pair; grade reproduction + structural) vs anomaly route (axial anomaly with Jackiw 1969 / Robinson-Wilczek; one-way theory keeps balance only with Hawking's flux; our object vanishing back-coupling, associator, reduced square; exact: defect identities, one-way balance; not ours: anomaly coefficient and T_H). "The entanglement route says what the outside record cannot contain, and the anomaly route says what the outside books must carry... the hidden block nobody outside can see, and the one-way flux nobody outside can return."
    95	
    96	## 8 Three walls
    97	- Several failures called "wall": pullback metric losing rank, smallest singular value -> 0, spectral cluster meeting contour, numerator cancelling in a response, loss of positivity [37]. Last can occur with no EP: gravity edition analytic rank-one projector family whose tangent form goes positive definite to indefinite across a line while generator's two eigenvalues stay separated and contour count/trace-log regular [40]. "No codimension slogan settles in advance whether a geometric wall and an exceptional point are distinct; the operators decide." Third kind outside paper's operators: walls of marginal stability in moduli space (Sec 4.5); not compared.
    98	- 8.1 Spectral walls. Sun's dynamo (Parker alpha-Omega, x in [0,pi]): d_t A = alpha0 cos x B + d_x^2 A, d_t B = G d_x A + d_x^2 B (41), Dirichlet, G=eta=1; energy norm E=int(|d_x A|^2+|B|^2) [38]; oscillatory dynamo-wave branch born at genuine EP alpha0* = 3.8717; condition number sqrt-law kappa sqrt(delta) = 1.842, 1.850, 1.853, 1.853 at delta=0.2, 0.05, 0.0125, 0.003125; contour around pair (count 2.000000) shifted trace-log ledger = sum log(c+lambda_pair) to 9e-14; loop alpha0 = alpha0*+0.15e^{i phi}: exchanges after one turn, restores after two, discriminant winding +1.0000 and +2.0000, ledger single-valued to 1e-8 [MEASURED THERE]. Distinct from steady onset alpha0c=12.696.
    99	- Optical threshold: lossless TE half-space D=eps_opt,2-(k_par/k0)^2; u''+Du=0; generator M(D)=[[0,1],[-D,0]], M^2=-D I; at D=0 defective, projectors (1/2)(I+-M/sqrt(-D)) singular, sum I regular [37]; Gamma = 1-2 sqrt(D)/sqrt(D1)+O(D); in frame (u,u'/kz), kz=k0 sqrt D, generator sqrt(D)[[0,1],[-1,0]]; sqrt D real one side imaginary other: eigenvalues +-i sqrt D oscillatory D>0, growing/decaying D<0 [DERIVED].
   100	- Sun's acoustic cutoff: Lamb isothermal atmosphere w_tt=c^2 w_zz-(c^2/H)w_z; w=e^{z/2H}psi e^{-i omega t}: psi''+kz^2 psi=0, kz^2=(omega^2-omega_ac^2)/c^2, omega_ac=c/(2H) (42) [80,81] [DERIVED, BH-ISCO-CUBE-17]; at omega=omega_ac generator [[0,1],[-kz^2,0]] nonzero nilpotent; solar photosphere cutoff near 5 mHz [81]. "the photosphere reflects on one side of a spectral wall in frequency, while the horizon surface is a matched load that returns nothing at every frequency; the reflection a distant observer sees comes from the barrier outside it [STRUCTURAL COMPARISON]." Two-level model H(gamma)=sigma_x+i gamma sigma_z eigenvalues +-sqrt(1-gamma^2), real below gamma=1 imaginary above; individual projectors fail at gamma=1, pair projector identity [37].
   101	- ISCO: Schwarzschild test body G=c=M=1 proper time: rdot^2+V=E^2, V=(1-2/r)(1+L^2/r^2); circular L^2=r^2/(r-3); push: d/dtau (dr, drdot) = [[0,1],[-(1/2)V''(r0),0]], (1/2)V''(r0)=(r0-6)/(r0^3(r0-3)) (43). Prop 15 [DERIVED] "the ISCO is a spectral wall": r0>6 eigenvalues +-i sqrt(V''/2) oscillation; 3<r0<6 +-sqrt(-V''/2) growth/decay; r0=6 generator nonzero with square zero: Jordan block. (Linearisation only; nonlinear plunge and inner disk edge separate.) Unfolding coordinate real outside imaginary inside; gap/sqrt|r0-6| -> 2/sqrt648 = 0.0785674 both sides. Proof: numerator of V''/2 is r-6; generator squares to -(1/2)V'' I; near 6, (1/2)V''~(r0-6)/648. BH-ISCO-10: eigenvalues +-0.02700 i at r0=7, +-0.06325 at r0=5; gap/sqrt|r0-6| = 0.078567 outside, 0.078568 inside at |r0-6|=1e-5 [MEASURED]. Same form as optical threshold M(D) with V''/2 for D.
   102	- Classical reading: Newtonian central force F ∝ r^{-p}: omega_r^2/Omega^2 = 3-p; circular orbits stable iff p<3; p=3 inverse cube nudged orbit spirals. Effective exponent for Schwarzschild (a reading of epicyclic ratio "not a new force law"): omega_r^2/Omega^2 = 1-6M/r, p = 2+6M/r (44) [REPRODUCTION, BH-ISCO-CUBE-17]: Newton's 2 far away, inverse cube exactly at ISCO. "The author's essay on Walter Russell reads this as the radius at which Einstein's orbit becomes Russell's spiral [74]." Levin's whirling orbits just inside, p>3.
   103	- Light: null V=(1-2M/r)L^2/r^2, photon ring r=3M unstable, wobble generator real pair +-lambda; coordinate time growth rate = orbital rate lambda=Omega=1/(3 sqrt3 M); orbit eq u''+u=3Mu^2: nudge grows by exactly e per radian. Each extra half orbit dims by e^{-pi}=0.0432 and delays by pi/Omega = 3 sqrt3 pi M [REPRODUCTION, PHOTON-RING-WALL, V10-PUSH]; known photon-ring result [99]; eikonal QNM [100]. Nonlinear orbit: 0.99998 per radian. Charged hole: rate per radian sqrt(6Mu0-6Q^2u0^2-1) at photon sphere u0; nonlinear 0.968 at Q=0.5M, 0.832 at Q=0.9M; dimming per half orbit e^{-pi} only when Q=0 [MEASURED, V10-PUSH for Q=0.5M, BH-FIGS-V10 for Q=0.3M-0.9M]. "The photon ring is a single unstable orbit, not a wall in the sense of this section: no physical parameter carries it from oscillation to growth."
   104	- Levin/Perez-Giz [46,47]: bound orbit just below unstable circular orbit energy whirls; azimuth per radial period grows like log: Delta phi ≃ (Omega/lambda) ln(1/deltaE) + const (45). At L^2=13 (r_u=4.697224) measured slope 1.898773 vs Omega/lambda=1.898829; 2.55 to 6.02 whirls per period over deltaE=1e-3 to 1e-8 [REPRODUCTION, BH-ISCO-10]. "The logarithm has the same source as the logarithm in static time near a horizon, -(1/2kappa) log N: passage close to a point that is left at a fixed exponential rate [STRUCTURAL]."
   105	- Ringdown: massive-field Kerr-Newman loops permute QNM frequencies [69]; near-extremal Kerr EP cascade (numerical evidence infinite): path enclosing first n EPs returns fundamental as nth overtone [70]; EP with hysteresis for Kerr [71] [CITED RESULT; STRUCTURAL COMPARISON]. Sun's ladder BH-SUNLADDER-16b: solar dynamo operator five pair-birth points in 0<alpha0<=13 [38]; loops based at alpha0=3; counting least-damped mode as 0, five points exchange (1,2),(3,4),(5,6),(7,8),(9,10); loop around first n gives n disjoint swaps; discriminant winds exactly n times; two loop heights same permutation; reversed loop inverse; loop around several = product of single-point loops; least-damped mode never moves [MEASURED]. "Climb or swap is a checkable label for a family of exceptional points [STRUCTURAL COMPARISON]." Kerr cascade links EPs through shared modes (climb); solar ladder independent pairs (swap). Defining property of spectral wall: "The square-root coordinate that unfolds the branch point is real on one side of the wall and imaginary on the other. A real eigenvalue pair turns into a complex pair along a physical path. The Jordan block at the wall is a property of a fixed operator on a fixed space, so no change of frame removes it."
   106	- 8.2 Geometric walls: coplanar fold (sigma3 real both sides because other side is mirror image; spectrum real both sides; cone on cover; Jordan block of Gram frame from singular differential; chart-free sign conical). Same fold one dimension down: three bodies through distances, collinear circle a fold [41] (Example 8.8). Static base of a horizon: fold normal form smooth and even in signed lapse lambda=+-sqrt N (Sec 9); Penrose manuscript doubles base by lambda->-lambda, calls divergence a coordinate singularity [7] [CITED, NOT CHECKED]. Kerr Weyl type D diagonalisable; MOTS principal eigenvalue simple [8].
   107	- Table spectral vs geometric: examples spectral (Sun's dynamo-wave birth; optical threshold; sigma_x+i gamma sigma_z; ISCO; ringdown EPs); geometric (coplanar fold of Sigma4; static base of a horizon). Unfolding coordinate: real one side/imag other vs real both sides (mirror, doubled base). Spectrum along physical paths: real pair turns complex vs real both sides. Jordan block: in every frame vs only in folded chart. Loop: parameter loop exchanges pair, winding +1 vs real loop through mirror reverses eigenline. Survives: pair projector, ledger, braid winding vs pair projector, ledger, orientation, conical sign. Term linear in time e^{lambda t}(I+tN) in every norm (ISCO drift, double-pole ringdown in two-mode model) vs removable: none in kinetic metric. "A black hole carries both kinds: the static base of its horizon is a geometric wall (the event horizon itself is a null causal boundary, Section 9) and the innermost stable orbit is a spectral one. In both kinds the pair projector and the ledger survive exactly. That is the common law, and it is the reason the ledger, rather than an eigenvector, is the right record to compare across the two." Caution: "a quantity that varies smoothly through a wall cannot by itself detect the wall. The ledger records what survives; the orientation, the conical sign and the change of spectral type are what locate the wall."
   108	- Transient growth with no block: Sun's dynamo, eigenvalues damped at 0.9 of steady onset, still amplifies by 3.5, instantaneous growth rate +5.84 vs modal rate -0.063 [38]: non-normal growth not linear-in-time term.
   109	- Codimension follows symmetry class: real non-symmetric EP codim 1; complex non-Hermitian EP codim 2; real symmetric diabolic (cone) codim 2; complex Hermitian diabolic codim 3. First two = Prop 12 of gravity edition [40] with caution symmetry can lower count; last two von Neumann-Wigner [78,79]. "The class to use is the operator's hidden class, not the look of its matrix." Gram-frame wall block real non-symmetric would give codim 1, lands at codim 2 (joint condition 10) because self-adjoint in kinetic metric (Thm 4). "A geometric wall is a real operator secretly in the symmetric class." Dynamo real non-symmetric codim 1 [38]. Ringdown complex, Kerr-Newman EP lines in 3-parameter space (spin, charge, field mass) codim 2 [69]. "For complex operators codimension cannot tell spectral from geometric, which is why the divider in the table is a Jordan block in every frame, not a count [CITED RESULTS; DERIVED READING]."
   110	- 8.3 Reflection/refraction on pullback metric. g=a(y)dx^2+b(y)dy^2, a=g_par, b=g_perp (46). Clairaut constant C=a sin^2 theta [41](Prop 8.1); refraction a1 sin^2 th1 = a2 sin^2 th2 (Snell, index sqrt g_par); turns where a falls to C: total internal reflection [41](Prop 8.3). Wave: Laplace-Beltrami Delta_g psi+omega^2 psi=0; psi=e^{ipx}u(y): (sqrt(a/b) u')' + (sqrt(ab) omega^2 - p^2 sqrt(b/a)... ) u = 0 as printed (47), p^2=omega^2 C. Constant a,b: u=e^{+-iky}, k^2 = b omega^2 (a-C)/a. Flux F=sqrt(a/b)u'; u and F continuous; F/u=+-iY: admittance Y = sqrt(a/b) k = omega sqrt(a-C) = omega sqrt(g_par) cos theta (48). Step (a1,b1)->(a2,b2): Gamma = (sqrt(a1-C)-sqrt(a2-C))/(sqrt(a1-C)+sqrt(a2-C)), sqrt(a2-C) -> i sqrt(C-a2) when C>a2 (49) [DERIVED]. (1) g_perp drops out: "the step reflects through g_par on both sides and the Clairaut constant alone". (2) |Gamma|=1 exactly when C>a2, exactly when geodesic turns: total reflection begins at Clairaut turning point; near it Gamma = 1-2 sqrt(a2-C)/sqrt(a1-C)+O(a2-C): square-root threshold, D=a2-C; "The optical threshold is the turning point of a geodesic, and its generator M(D) is a Jordan block there." (3) normal incidence Gamma = tanh((1/2) ln(sqrt a1/sqrt a2)); with index set by spectral gap at fixed coupling sqrt g_par ∝ 1/Delta [41](Sec 8.6, g_par Delta^2=9): PEEL COORDINATE eq 50: Gamma = tanh((1/2) ln(Delta2/Delta1)), "the Smith coordinate of the peeling paper [76], now as the reflection of a wave at a change of gap [DERIVED]". Formula (49) = TE Fresnel with admittance sqrt(a-C) [101]; transformation optics [102]. "What is specific here is the reading: the index is sqrt g_par of a projector family, the incidence is fixed by C, and g_perp is absent at the step."
   111	- Tests (kill conditions pre-written, RS-03): one pre-registered gate FAILED: Richardson extrapolation of smooth steps to zero width left 7.4e-4 vs limit 1e-5 (error complex, phase turns, scalar power law misfits); first-order limit tested directly with own condition (RS-03c). Sharp-step matching reproduces (49) to 1.7e-11 on 400 random steps (89 beyond turning point). Smooth steps (tanh, erf, linear ramp, in both a and b) converge at first order in w; tanh |r-Gamma|/(omega w) settles to 0.0746, 0.105, 0.183, 0.106 at theta=10,25,31,60 deg down to omega w=0.00125. r21=-r12 to 9e-15; flux balance |r|^2+(Y2/Y1)|t|^2=1 to 6e-14; beyond turning point |r|=1 to 2e-16 for every profile; gap form (50) to 3e-13 on 200 random gap pairs [MEASURED, RS-03]. Where law stops: finite layer g_perp back: at omega w=3 quadrupling b2 changes |r| by up to 0.16; g_par rising: no total reflection below grazing; thickening layer sharpens onset onto turning point: half power reflected at 29.9960, 29.9995, 29.9999 deg for omega w=10,30,100 vs theta_c=30 [MEASURED]. Fig 16a: step in g_par from 4 to 1, theta_c=30 deg. Fig 16b: one Smith chart; matched horizon at centre; fermion record Gamma=tanh(omega/2T_H) on real axis reaching centre only at omega=0; "The three are different normalised impedances on one chart; their relative positions are not a physical identification."
   112	- Sine guard (51): det[[g(V,V),g(V,d_x)],[g(V,d_x),g(d_x,d_x)]] = g_par - C = g_par cos^2 theta; |Omega(V,d_x)| <= 2 sqrt(g_par - C) = 2Y/omega [DERIVED] from (35); = angle safeguard of [41] eq (6.2): |Omega(V,W)|<=2 sqrt(g(V,V)g(W,W))|sin theta_G|, sine = cos theta. "The Berry curvature that a path can feel against the symmetry direction is capped by the wave admittance, and both close at the turning point." 600 random families identity to 7e-15; two-level on ceiling, three-level below [MEASURED V10-PUSH].
   113	- Polar stratum is a mirror: family of [41](Sec 8.4): a=(9/4) sin^2 y, b=1/4: every wave with C>0 turns before y=0. From (47) with regular solution at pole: |r|=1 to 2e-16; reflection phase matches ray phase 2 int k dy - pi/2 to 0.02 rad at omega=320; lateral shift -d_p arg r matches geodesic displacement to 2e-4 at omega=640 for theta=20-65 deg, when curved region joins lead smoothly; with a kinked lead (first pre-registered) shift oscillated and that gate FAILED (kink echo) [MEASURED, RS-01, RS-01B]. "The type of degeneracy of a form does not decide what a wave does there; the wave operator does [STRUCTURAL]." (Killing horizon polar, yet matched load.)
   114	
   115	## 9 Black holes beside the wall
   116	- 9.1 Three metrics kept apart: (a) Lorentzian spacetime; (b) Riemannian static base h=g+N^{-1}X^flat⊗X^flat (quotient by Killing flow, Killing norm N=u^2-|X|^2), used for Schwarzschild only (Kerr stationary Killing field spacelike in ergoregion); (c) kinetic (Bures) metric of Sigma4 and projector metric g^P_ij=(1/2)Tr(d_iP d_jP). Comparisons between (b) and (c) or operators, graded structural.
   117	- 9.2 Prop 16 (local-symbol control) [DERIVED]: h(r,k)=N(r)(k sigma_x + m sigma_z), N=1-2M/r. For r>2M band projectors independent of N; projector metric g^P_kk = m^2/(4(k^2+m^2)^2) at every such r. At r=2M symbol vanishes, no distinguished projectors; projectors/metric are limits as r->2M. Gap in local proper time 2 sqrt(k^2+m^2) stays open, only coordinate gap 2N sqrt(k^2+m^2) closes. "A horizon can therefore coexist with an open local gap and a positive projector metric... projector data are blind to positive rescaling... projector geometry cannot set an absolute scale, so it cannot supply a mass. Every identification of a horizon with a projector wall must fail this control or explain why it does not." Offset paper proves same for occupied projectors (Prop 13), boundary offset unchanged under rescaling [57]. Bisognano-Wichmann: entanglement Hamiltonian of half-space = 2 pi x boost generator; offset paper compares near-cut slope of lattice entanglement Hamiltonian with continuum 2 pi/v_F, agreement about two percent in tested range [57]; "a measured instance of the structure that makes a Rindler horizon thermal, on a fermion chain; it says nothing about a curved horizon [CITED MEASUREMENT; STRUCTURAL]."
   118	- 9.3 Shared fold normal form: Schwarzschild static base h=dr^2/N+r^2 dOmega^2; r=2M/(1-N): h_NN = 4M^2/(N(1-N)^4) ~ 1/(4 kappa^2 N), kappa=1/(4M) (52); lapse lambda=sqrt N: h_lambda lambda = 16M^2(1-lambda^2)^{-4}, finite even, h(0)=kappa^{-2}. Proper distance ≈ lambda/kappa: lapse linear in proper distance; curvature of -N^2dt^2+dx^2 is R=-2N''/N so flat: Rindler wedge N=kappa rho [40] [DERIVED, BH-ISCO-CUBE-17]. Fold needs kappa!=0; extremal horizon: proper distance diverges logarithmically, lapse exponential: no fold [DERIVED]. Four space dimensions (N=1-2M/r^2, kappa=1/sqrt(2M)): N h_NN -> M/2 = 1/(4 kappa^2), h_lambda lambda(0)=2M=kappa^{-2} [DERIVED; CHECKED SYMBOLICALLY BH-FOLD-PARALLEL-01]. On Sigma4: w g_ww -> 1/4 and g_sigma sigma=1 at wall. Eq 53: ds^2 = dX^2/(4c^2 X) = dlambda^2/c^2, X=lambda^2, lambda->-lambda isometry; c=kappa in GR, c=1 here. Penrose manuscript doubles static base with odd lapse h±=((1±lambda)/2)^4 h [7]; calls divergence "a coordinate singularity", degeneracy "removed by the isotropic radius or the regular base collar" [CITED, NOT CHECKED]. Cautions: second sheet is a second exterior not the interior; event horizon is a null causal boundary, fold is property of Riemannian base. Author's own rule: "a stratum whose kernel points across it is a fold, silent at first order and resolved at the next, not a barrier [41](Sec 8.5)". Grade structural for three reasons: constant does not match (kappa physical, c fixed normalisation); base h is quotient by flow that goes null at horizon, nothing null on our side; fold normal form generic (Whitney A2).
   119	- 9.4 MOTS stability operator L_s=-Delta_S s+2K(nu,grad_S s)+(tr_S grad_nu K - |II|^2 - Ric(nu,nu)) s (54); drift 2K(nu,grad s) makes L non-self-adjoint; principal eigenvalue real and simple with positive right/left eigenfunctions [8]. In Penrose equality case lapse restricted to horizon satisfies 2 L* u = c H, H>=0 outward mean curvature [7] [CITED, NOT CHECKED]: "the lapse answers to the adjoint operator." Exact drift K(nu,.)=dpsi: weighted similarity e^{-psi} L e^{psi} = -Delta_S + Q + |grad psi|^2 - Delta_S psi (55) self-adjoint; rotational drift cannot be removed [DERIVED; CHECKED SYMBOLICALLY BH-DRIFT-SYM-02]. Parallels Thm 5 (S=diag sqrt(w/t)) and Thm 4. Symmetrising weight degenerates at the wall on our side; scalar weight e^psi need not at horizon. Principal eigenvalue always simple, never in a Jordan block (nothing about other eigenvalues). Cover point is plain double point, Jordan only in folded Gram chart. "Read this way the two sides agree, and the meeting point is the left/right (biorthogonal) structure together with the absence of a defect in the regular chart [STRUCTURAL]."
   120	- 9.5 Degenerate form with kernel: Killing horizon induced form degenerate, generator spans kernel, pullback to any section same round metric [7]. IQGT paper [41]: stratum polar if kernel runs along it (nothing moves along it at any order, Lemma 8.5); fold if kernel points across (silent at first order, moves at second, two sheets meeting; odd first order = parametrisation artefact, Prop 8.6). At a fold degenerate metric doesn't determine motion across: direction in kernel must be supplied = Carrollian geometry [96] (Remark 8.7). "A Killing horizon is the polar case... The supplied kernel vector field, the Carrollian structure, is on the operator side the Riesz block. Our wall is the fold case." [STRUCTURAL]
   121	- 9.6 Two type D objects and where EPs are: Kerr type D at every point; EPs of BH physics in QNM spectrum: EP/exceptional lines with double-pole excitation and pseudospectral structure [9,10,11]; spectral walls of ringdown operator. ISCO a spectral wall of circular-orbit family. PROPOSED question: "is there a natural signed coordinate, real on both sides, in which a ringdown exceptional point becomes a plain crossing? If so it is geometric; if the coordinate turns imaginary across it, it is spectral [PROPOSED]." Excitation factors: Kerr-de Sitter two merging overtones large and nearly opposite phases [67]; Kerr paired factors enhanced in almost opposite directions near avoided crossing, product of factor difference and frequency difference nearly constant [68]; Nariai analytic incl destructive excitation and transient linear growth [11]. "a single eigenprojector grows like |A12|/gap at a Jordan point while the pair projector stays exact." Light paper: sigma_x+i gamma sigma_z left-right overlap collapses as sqrt(1-gamma^2)≈sqrt(2(1-gamma)), Petermann factor (1-gamma^2)^{-1}, contour count 2 [37]; excitation factor carries inverse overlap -> grows like inverse sqrt distance to EP; gap closes like same sqrt: the 1/gap law. BH-QNM-13 two-mode complex-symmetric model: each excitation factor grows like |u.Nv|/gap (N Jordan coupling), reaching 391 at gap 2.8e-3; opposite phases (arg B+/B- = 0.99986 pi); sum = u.v at every gap (P+ + P- pair projector); signal bounded, becomes e^{-i omega0 t}(u.v - i t u.Nv) at EP: term linear in time, two-mode sum approaching it like square of gap; contour around both modes gives same signal to 3e-13 at and beside point; one loop exchanges modes and factors while ledger single-valued [MEASURED FOR THE MODEL]. "The model is synthetic: it is not a Teukolsky computation or detector data, and for a particular source the coefficient of the linear term can vanish." Results cited are for different fields/backgrounds (massive scalar Kerr-Newman, gravitational Kerr-de Sitter, Nariai): "what carries across is the structure." "What this paper adds is the reading: the contour and the ledger are what survive the exceptional point, and the single modes are not [STRUCTURAL COMPARISON FOR KERR-DE SITTER]."
   122	- 9.7 "A square that vanishes is not equality": Penrose manuscript AdS part second-order deficit lapse-weighted square, kernel four-dimensional, equality decided at fourth order [7] [CITED, NOT CHECKED]. Shared discipline: fixed-family trace-log ledger even to all orders Z(t)-Z(0)=sum_j log(1+t^2 omega_j^2), first-order term vanishes, ledger not constant [37]; handed part Omega cancels across mirror; Ramanujan f,b cancel to finite sum. "In each case a vanishing combination says nothing about the parts. The parts have to be followed further... to the first order that does not vanish." Even first order = touch, odd = crossing [40](Prop 17).
   123	- 9.8 What exterior data recover: Penrose equality recovers (g,K) of Schwarzschild slice via Lagrange multiplier -> Killing initial data, static base and doubling [7]; bordered map at zero eigenvalue of trapped-surface operator is a Schur complement. Hidden-block identity: exterior compression cannot recover hidden block. Consistent: "Recovery needs structure beyond the exterior record, and in their theorem that structure is supplied by the Einstein constraint equations and the dominant energy condition. Nothing on our side plays that role [STRUCTURAL]."
   124	- 9.9 What an identification would need: (1) one operator K[g,Phi] coupling projector data to a physical metric; (2) a fixed pairing (inner product structural); (3) source response with a probe; (4) areal spectral measure; (5) 4-d conserved field equation with lensing; (6) wave sector. "None is supplied here. In particular there is nothing on our side corresponding to mass, the dominant energy condition, the area inequality, the value of the surface gravity, charge, or uniqueness."
   125	- Comparison table (Coplanar wall vs Horizon, grade): fold normal form c=1 vs c=kappa, shared form verified; apparent EP chart effect vs coordinate singularity, same lesson; transport self-adjoint in kinetic metric/regular on cover vs MOTS operator similar to self-adjoint when drift exact, same object type; plain double point on cover (Jordan only Gram) vs principal eigenvalue always simple, agreement read in regular chart; cone vs Weyl type D diabolic, same kind different unfolding exponent; kernel across locus (fold) vs kernel along generator, same object type opposite case; conical sign -1 for real loop through mirror — ours only; matched load Z_b=I, S_b=0 vs horizon surface resistance = vacuum impedance, structural sourced; spectral walls (dynamo, optical threshold) vs ISCO, same object type; Bell/anomaly vs Hawking pair CHSH/anomaly flux, reproduction structural; pair projector and ledger survive — ours only; exterior compression cannot recover hidden block vs equality recovers (g,K) with constraints, consistent; mass, energy condition, area bound, kappa, uniqueness theirs only. "No isomorphism is claimed."
   126	
   127	## 10 Colour extension / 11 Proposed / 12 Open problems / Appendices
   128	- 10: Wong equations [12]: L=(1/2) g_mu nu xdot xdot + g_s Tr(q A_mu) xdot; qdot=-g_s[A_mu xdot^mu,q] (56); d/dt(g_mu nu xdot^nu) - (1/2) d_mu g_ab xdot^a xdot^b = g_s Tr(q F_mu nu) xdot^nu (57); F=dA+g_s[A,A]; colour singlet decouples. Prop 17 (conditional persistence of non-normality) [DERIVED, CONDITIONAL]: K=K_geom+K_gauge, if ||[K_gauge,K_gauge^T]|| > ||R_mixed||, R_mixed=[K_geom,K_gauge^T]+[K_gauge,K_geom^T], then ||[K,K^T]||>0 even at isotropy t1=t2=t3 where [K_geom,K_geom^T]=0. "The algebra is a reverse triangle inequality. Its content lies entirely in the hypothesis, whose verification for a concrete field configuration is open."
   129	- 11 (nothing derived; ansatze): Superradiant extraction rate dE/dt ?= alpha_s int Tr(J_colour F_mu nu Wdot^nu)/||J||^2 + gamma int Tr([D_t K,K^T] J J^dag) — derivation from energy functional with kinetic metric not carried out. Junction matching Darmois-Israel [13] of discrete wall data (turning angle Theta_n = arccos<v_max(n),v_max(n+1)>) to continuum exterior: "a programme, not a result". Interface analogues: polariton and non-Hermitian interfaces plausibly realise same one-way/Jordan structure; quantitative trapping law awaits dimensionally consistent derivation.
   130	- 12 Open problems (10): 1 derive block structure of concrete hyperboloidal ringdown operator near an exceptional line; spectral or geometric (signed coordinate?); near-extremal Kerr [70], Kerr-Newman [69]. 2 Do Z-hat invariants of Sigma(3,4,11), Sigma(3,4,13) (+-1 surgeries on 8_19) turn false theta -> mock theta under q->q^{-1}, as Sigma(2,3,7) conjectured; radial limits show pair cancellation of 4.5? [65,66]. 3 Frame-free Petrov analogue for transport on square-case ladder N=d+1, d=4,5 (more than two eigenvalues can meet): interior settled — secular equation with interlacing real roots, EPs only on boundary det G=0 where eigenvalue pinned at 2t_k [75]; reduces to one computation that can fail: d=4 eigenvalue block on stratum where one eigenvalue of G vanishes and corner where two vanish, does a size-3 Jordan block (type III analogue) occur at the corner; labels: leading Puiseux exponent and monodromy permutation. 4 ANSWERED in 4.8 (Fisher info = 8x shape kinetic energy, wall distance Bures angle, fidelity Gram observer; BH-QUTRIT-18). 5 PARTLY ANSWERED in 4.7: thin disk gives nu exactly; every distance potential stiffness 2 dV/dw3; equal-mass gravity stiffens square omega=sqrt(2(2 sqrt2 -1))=1.912290; rhombus turns over at k*=0.144557; remaining: region of flat shapes where gravity stiffens, and its boundary. 6 Establish/refute hypothesis of colour proposition for concrete non-Abelian background. 7 State a Bell-type bound for operator records across the wall, hidden-block identity as model of local record, can one-way wall exceed it. 8 Follow ISCO (spectral) and horizon (geometric fold) together as Kerr spin grows; candidate extremality (fold loses surface gravity, ringdown EPs pile up [70,69]); prograde ISCO reaches horizon radius in Boyer-Lindquist at max spin while staying at different proper locations in extremal throat is established [84]; open: invariant comparison giving "meet" coordinate-free meaning. 9 accelerated-detector reading (Bell-Leinaas) needs absolute scale which projector data cannot supply. 10 supply any one of six items of identification list (9.9).
   131	- Appendix A proofs: Thm 1 horizontal lift at X=diag(sqrt w_i): X^T H + H^T X = E with XH^T symmetric; diagonal E lift h_i=E_ii/(2 sqrt w_i); E(ij): H_ij = sqrt(w_i)/(sqrt2 (w_i+w_j)), H_ji = sqrt(w_j)/(sqrt2(w_i+w_j)), ||H||^2=1/(2(w_i+w_j)). Persistence: margin delta=dist(Gamma,sigma(A)), C_Gamma=delta sup||(z-A)^{-1}||; Lemma 18: if eps sup||(z-A)^{-1}||<1 resolvent exists, bound ||(z-A)^{-1}||/(1-eps||(z-A)^{-1}||); Thm 19: eps<delta/C_Gamma: ||P'-P|| <= l(Gamma) C_Gamma^2 eps/(2 pi delta(delta-eps C_Gamma)). Projector norm near Jordan block: real B=[[a,b],[c,d]]: ||P+||^2 = 1+(b-c)^2/g^2 exactly, same for P-; as c->0 ||P+|| g -> |b| [DERIVED; CHECKED 500 random matrices to 4e-14, V10-CORRECTIONS]. Jordan semigroup: e^{-Jt}=e^{-bt}[[1,-mu t],[0,1]], largest singular value of [[1,s],[0,1]] = (sqrt(4+s^2)+|s|)/2 = e^{arsinh(|s|/2)}; log||e^{-Jt}|| = arsinh(|mu|t/2) - bt; growth for some t>0 iff |mu|/2 > b (i.e. |mu|/b>2).
   132	- Appendix B checks: list of scripts BH-WALL-CHECK-01, BH-CORE-02, BH-WALL-03, BH-NONNORMAL-04, BH-FOLD-PARALLEL-01, BH-DRIFT-SYM-02, BH-EP-SPINOR-04, BH-LIFT-05, BH-PETROV-06, BH-SHADOW-07, BH-KNOT-08, BH-SPINE-09, BH-ISCO-10, BH-BELL-11, BH-MATCHED-12, BH-QNM-13, BH-KNOT-14, BH-OFFSET-15, BH-SUNLADDER-16b, BH-ISCO-CUBE-17, BH-QUTRIT-18 ("Its first kill condition, that gravity does not stiffen, failed, and the run note records the correction"), BH-STIFF-19, RS-01/01b, RS-02/03/03b/03c, PHOTON-RING-WALL, V10-CORRECTIONS, V10-PUSH, BH-FIGS-*; each states kill condition before it runs; code archive.
   133	- References [1]-[102]; notable self-refs: [37] Light Keeps the Ledger research edition 7.2; [38] solar paper (Transient Structure at Solar Rigidity Interfaces and the EP of the Dynamo Wave v1.5, Zenodo 22013524); [39] Universal Projector Geometry v3.2; [40] The Ledger Outlives the Metric, gravity edition 7; [41] IQGT v7.3.1; [57] The Offset Belongs to the Boundary complete edition v31; [72] Three-Body Problem Operator-First v3; [73] 5-D Non-Normal Stability Operator research rev 4; [74] What Russell Saw v1; [75] The Square Case v4; [76] VOTKP v2.9. [7] is "OpenAI, Spacetime Penrose inequalities... AI-generated manuscript dated 5 October 2026, unrefereed and not publicly available; statements cited from it are graded as cited, not checked."
   134	
   135	## Coverage
   136	Full text read (all 56 pages, abstract through reference [102]); no truncation. Figures (1-19) are not in the text extraction except captions (captions read). Eq 14 matrix and eq 47 are garbled in extraction; recorded as printed/paraphrased. Note: Gravity paper cited in [40] as "gravity edition 7"; the file read for the gravity paper below is "Research Edition 6" (20260924).
<<<<< END VERBATIM corpus-notes/bh.md >>>>>

### 2.2.1 Index of what bh.md records (reader's index; wording stays the source's)

Grades the paper uses (bh.md l.2): [DERIVED], [MEASURED], [PROPOSED], [STRUCTURAL COMPARISON], [CITED RESULT], [CITED MEASUREMENT], [CHECKED]; also met in the notes: [REPRODUCTION], [CITED, NOT CHECKED], [DERIVED, CONDITIONAL], [MEASURED FOR THE MODEL], [CITED; STRUCTURAL], [DERIVED AT WALL; MEASURED ELSEWHERE], [CITED RESULTS; DERIVED READING].

Named results as numbered in bh.md (the edition-10 numbering): Thm 1 (kinetic metric = Bures) [DERIVED]; Thm 2 (fold at finite distance) [DERIVED]; Thm 3 (block structure) [DERIVED]; Thm 4 (A self-adjoint in kinetic metric) [DERIVED]; Thm 5 (no exceptional points inside) [DERIVED]; Thm 6 (wall in Gram frame) [DERIVED]; Thm 7 (branch point on orientation double cover) [DERIVED]; Thm 8 (lifted transport B analytic on the cover) [DERIVED]; Prop 9 (declared operator decides, T = G^{-1}) [DERIVED]; Thm 10 (two loops, two charts) [DERIVED]; Prop 11 (Majorana stars / Petrov) [DERIVED; CHECKED BH-PETROV-06]; Prop 12 (knots mirror rule) [MEASURED, BH-KNOT-08]; Prop 13 (Schur-Cayley boundary) [DERIVED]; Prop 14 (Hawking pair) (i) [DERIVED] (ii) [REPRODUCTION] (iii) [DERIVED]; Prop 15 (the ISCO is a spectral wall) [DERIVED]; Prop 16 (local-symbol control) [DERIVED]; Prop 17 (conditional persistence of non-normality) [DERIVED, CONDITIONAL]; Lemma 18 and Thm 19 (Appendix A persistence bounds).
NOTE: this numbering (Thm 1 ... Thm 10, Prop 9 ... 17) differs from the numbering used by event-horizon-lean's README and Basic.lean (Theorem 1, Theorem 2.1, Theorem 2.3, Eq. (2), Sec. 2.1, Sec. 4.2), which PROVENANCE.md of that repo says came from "v2, August 2026". See Disagreements.

Check/gate names with stated outcomes in bh.md: BH-CORE-02 (shape-shear coupling identically zero); BH-LIFT-05 (g_W A - A^T g_W = 0 on full 5x5; eq 14 vs J^{-1}AJ to 6e-17; loops -1.00012 / +1.00000; folded share 0.500000000000; real loop -1.000000000 cover / +1.000000000 Gram; largest imaginary part exactly 0); BH-N-01 (braid gate: lambda* = 2.6, A12 = 0.484974, gap/sigma3 = 1.833030); BH-QUTRIT-18 (slope 1.833030278; F_Q/g = 4 to 1e-11; dU/dw3 > 0; "Its first kill condition, that gravity does not stiffen, failed, and the run note records the correction"); BH-SPINE-09 (identities to 2.4e-15, largest ||S_b|| = 0.901); BH-PETROV-06 (determinant 3072); BH-SHADOW-07 (table of f - (-1)^k b values); BH-KNOT-08; BH-KNOT-14 (N mod 16 constants 0.0858 to 2.9142); BH-STIFF-19; BH-MATCHED-12 (376.7303135 ohm; S_b = -+1/3 at Z_b = 1/2 and 2); BH-BELL-11 (CHSH 2.0385848200 at r = 0.1, 2.8054348865 at r = 1.2; imbalances +-0.531186); BH-OFFSET-15 (tau = omega/T_H to 6e-16; 13.26 both ways for four modes); BH-ISCO-10 (+-0.02700 i at r0 = 7, +-0.06325 at r0 = 5; gap/sqrt|r0-6| 0.078567 / 0.078568; whirl slope 1.898773 vs 1.898829); BH-ISCO-CUBE-17; BH-SUNLADDER-16b; BH-QNM-13 (excitation factor 391 at gap 2.8e-3; arg ratio 0.99986 pi; 3e-13); BH-FOLD-PARALLEL-01; BH-DRIFT-SYM-02; BH-WALL-CHECK-01, BH-WALL-03, BH-NONNORMAL-04, BH-EP-SPINOR-04 (listed in App B only); PHOTON-RING-WALL; V10-CORRECTIONS; V10-PUSH; BH-FIGS-V10 / BH-FIGS-*; RS-01, RS-01B (kinked-lead gate FAILED, "kink echo"); RS-02; RS-03 (one pre-registered gate FAILED: Richardson extrapolation left 7.4e-4 vs limit 1e-5), RS-03b, RS-03c.

Gates the source itself records as FAILED (source's words): bh.md l.111 "one pre-registered gate FAILED: Richardson extrapolation of smooth steps to zero width left 7.4e-4 vs limit 1e-5 ... first-order limit tested directly with own condition (RS-03c)"; l.113 "with a kinked lead (first pre-registered) shift oscillated and that gate FAILED (kink echo) [MEASURED, RS-01, RS-01B]"; l.132 BH-QUTRIT-18 "Its first kill condition, that gravity does not stiffen, failed, and the run note records the correction".

Open problems the source lists (bh.md l.130, section 12, ten items): 1 hyperboloidal ringdown operator block structure near an exceptional line, spectral or geometric; 2 Z-hat invariants of Sigma(3,4,11), Sigma(3,4,13); 3 frame-free Petrov analogue on the square-case ladder d = 4, 5 (size-3 Jordan block at the corner?); 4 "ANSWERED in 4.8"; 5 "PARTLY ANSWERED in 4.7"; 6 colour proposition hypothesis; 7 Bell-type bound for operator records across the wall; 8 follow ISCO and horizon together as Kerr spin grows; 9 accelerated-detector reading; 10 supply any one of six items of the identification list (9.9).
[PROPOSED] items: sec 9.6 question on a signed coordinate for ringdown exceptional points; sec 11 superradiant extraction rate formula ("derivation ... not carried out"), junction matching ("a programme, not a result"), interface analogues.

Self-references with versions (bh.md l.133): [37] Light Keeps the Ledger research edition 7.2; [38] solar paper "Transient Structure at Solar Rigidity Interfaces and the EP of the Dynamo Wave v1.5, Zenodo 22013524"; [39] Universal Projector Geometry v3.2; [40] The Ledger Outlives the Metric, gravity edition 7; [41] IQGT v7.3.1; [57] The Offset Belongs to the Boundary complete edition v31; [72] Three-Body Problem Operator-First v3; [73] 5-D Non-Normal Stability Operator research rev 4; [74] What Russell Saw v1; [75] The Square Case v4; [76] VOTKP v2.9. [7] "OpenAI, Spacetime Penrose inequalities... AI-generated manuscript dated 5 October 2026, unrefereed and not publicly available; statements cited from it are graded as cited, not checked."


## 2.3 matter-disk/corpus-notes/ : the other 43 notes

Folder holds 44 .md notes (1.48 MB total). HONEST READ STATUS:
- READ IN FULL (every line): bh.md (2.2 above), four_body.md, cone.md, foft_v2.md, suns_v1_5.md, three_body.md, filament.md.
- NOT read in full (too large for this pass; 1.3 MB): atlas_v7.md, colour_selects_leader.md, colour_v12.md, dirac_gigantefermion.md, directional_transport.md, gravity.md, iqgt.md, koide.md, matter_at_a_scale.md, neutrinos.md, nonnormality.md, nonnormality_v15.md, offset.md, price_of_a_direction_v4.md, screen_prog_04.md, twotrees.md, v21.md, votkp_v29.md, weight_between.md, what_russell_saw.md. For each of these, EVERY LINE containing a black-hole term (regex, case-insensitive: black.?hole|horizon|hawking|schwarzschild|kerr|ISCO|photon ring|ringdown|penrose|quasinormal|QNM|membrane|bekenstein) was read in full and is reproduced verbatim below with its line number. The lines in these notes are long paragraph-bullets, so each hit is a whole passage.
- NOT read at all (no black-hole term in them by the same regex): band_edge.md, earth_moon.md, ladder.md, light.md, nonnormal_lattice.md, obs.md, offset_speed_limit.md, offset_speed_limit_v1_1.md, paper_XI.md, paper_v7.md, present_keeps.md, projector_calibration.md, screen_prog_03.md, spectral_stability.md, theta_21_sign_cases.md, upg.md, what_transport_keeps.md.
All notes are AI reading notes dated 3 Nov 2026 (per PROVENANCE.md): "notes about my papers, not my text".

### 2.3.1 four_body.md (4,692 B, 26 lines, READ IN FULL): the June 2026 ancestor of the wall

Note on "4_Body_Prob (3)" (Drive fileId 1QCh2wgkoKkZjOWikWVsVmat5erNpzK5r), "READ IN FULL (11 pp; nothing truncated)". Title: "The 5D Spectral Anatomy of Four-Body Obstructions: Kinematic Transport Geometry on Stratified Shape Manifolds" (Paper IV), Jeromie N. Beasley, June 23, 2026.
Key content recorded by the note (its wording):
- l.4: "Maps 9-dim config space to 5-dim stratified shape space Σ4 with non-Abelian SO(3) connection; 5x5 intrinsic transport operator A_intr; six binary collision hypersurfaces B_ij act as refraction sheets where transport cones flatten parallel to wall; 3D collinear horizon C_coll semi-simple/diagonalizable generically; Jordan blocks/Exceptional Points confined to lower-dim multi-body collision manifolds".
- l.7: here M = X X^T, W = M/Tr M (the BH paper per bh.md l.29 uses G = X^T X).
- l.11: "A_intr(H) = P_H( T(W)H + H T(W) - Tr(T(W)H) W ) = H_T - [Ω(H),W]" (coefficient 1 on the trace term; bh.md l.39 eq 5 has "A(H) = TH + HT - 2 Tr(TH) G" and says "Coefficient 2 forced").
- l.12: "Non-normality: [A_intr, A_intr^T] ≠ 0 ... eigenvalues generally complex on regular stratum." (bh.md l.45 Thm 5: "no exceptional points inside: w_i>0 -> shape block diagonalisable with real eigenvalues"; event-horizon-lean `spectrum_real`.)
- l.14: shape block there: "A11=2(t1-t2)-(t1-t2)(w1-w2); A22=(2/3)[(t1+t2-2t3)-(t1+t2-2t3)(w1+w2-2w3)]; A12=√(2/3)[(t1-t3)w2-(t2-t3)w1]" (differs from the edition-10 / Lean block; see Disagreements).
- l.15-16: "Collinear horizon w3=0: shear entries diverge"; "Jordan structure: generic collinear horizon semi-simple; triple collision boundaries (w3=w2=0) Jordan block size 2; quadruple collision higher. 'True defectiveness is therefore confined to higher-codimension strata.'" (Here w3 = 0 is called the "collinear horizon"; in bh.md l.32 w3 = 0 is the "coplanar wall" and collinear is w2 = w3 = 0.)
- l.18-19: Thm 2 (Refraction law on binary hypersurfaces) "(Derivation sketch only.)"; Thm 3 (Diagonalizability of collinear horizon).
- l.22: "Numerical results: NONE reported in this paper". l.25: "Theorems are stated without grades; derivations are sketched".
The gravity note's table (gravity.md l.107) lists this paper as "5D Spectral Anatomy of Four-Body Obstructions (superseded where Square Case repairs)".

### 2.3.2 cone.md (4,160 B, 48 lines, READ IN FULL)

Note on "A Measured Lorentzian Cone in Non-Hermitian Quantum Geometry" v8, August 2026, 27 pp. Horizon passages:
- l.33: "Horizons force openness: cited [1]." (Sec 5 Assembly, as graded.)
- l.41-42: "## Sec 6 Horizon generator (hyperboloidal Pöschl–Teller). QNM ladder ω_n = ±sqrt(V0 − 1/4) − i(n + 1/2) to 2e-11; biorthonormality 1e-12. Mirror pair fails the Hermitian control [V]; skew-probe indefiniteness is an artifact class [V]; overtone pair definite at V0=1 with Hermitian probes, 'unconverged' [V]/open."
- l.45: open problem 5: "the horizon operator (entropy production vs sign of Re Q)". Scripts named: HRZN-02/03.

### 2.3.3 foft_v2.md (9,184 B, 30 lines, READ IN FULL)

Note on "Foundational Operator Field Theory on Stratified Manifolds ... Version 2", Jeromie N. Beasley, August 8, 2026. Black-hole passages:
- l.14: "Thm 5.2 [T] trackability loss at defective points: K(δ)=[[b,μ],[δ,b]]; eigenvalues b±√(μδ), κ ~ ½√(μ/δ)→∞; rank-two Riesz projector constant. Conj 5.3: collapsing core drives operator to defective threshold before curvature diverges (rank collapse g_ab→0). Names companion BH paper (coplanar wall of 4-body shape manifold; size-2 Jordan blocks; Dunford trace-log ledger finite at defective point)."
- l.21: Remark 10.1 (iii)[H]: "naive Planck estimate weighs volume-many modes M~(R/ℓp)^3, tared horizon reading weighs area-many census channels."
- l.28: Open problem 1 "horizon cutoff & w(z)".
- l.25-26: Thm 12.1 total spectral reflection and Remark 12.2 "(The Smith-chart dictionary)": "interface reflection coefficient r=(p⊥,1-p⊥,2)/(p⊥,1+p⊥,2) ... rim |r|=1 = total reflection" (an early form of the step reflection later in BH ed. 10 Sec 8.3; the link is my observation of matching formulas, not stated in foft_v2.md).
- l.29: Appendix C "defective interface block K_red=bI+N: resolvent ~|μ|/|λ-b|², ε-pseudospectrum |λ-b|=O(ε^{1/2}), transient ||e^{-Jt}||≤(1+|μ|t)e^{-bt}".

### 2.3.4 suns_v1_5.md (5,705 B, 18 lines, READ IN FULL)

Note on the solar paper v1.5 (Jeromie N. Beasley, August 16, 2026). Black-hole passages:
- l.6 and l.12: script name "BH-DYNAMO-01" (minimal Parker αΩ operator); EP at α*0=3.8717; κ√δ=1.842,1.850,1.853,1.853; shifted Dunford ledger "count 2.000000, diff 9e-14"; "PD1 FAILED as predicted: onset is steady α0c=12.696".
- l.17: "Companion refs: [36] FOFT v2; [37] 'Beyond the Event Horizon: Operator Decoupling at the Rigidity Wall', v2." (A THIRD subtitle for the black-hole paper, tied to version label v2.)
- l.15: EP ladder "α*0=3.872, 5.280, 7.158, 9.085, 11.032" (bh.md l.105 via BH-SUNLADDER-16b says "five pair-birth points in 0<alpha0<=13"; atlas B178 gives 3.8717, 5.2802, 7.1576, 9.0850, 11.0266).

### 2.3.5 three_body.md (6,495 B, 31 lines, READ IN FULL) and filament.md (5,077 B, 25 lines, READ IN FULL)

No black-hole/horizon term. Items the BH paper cites from them (per bh.md): three_body Thm 10 "the record outlives the metric" on the figure-eight (R = 2.5e16; max|N-2| = 5.1e-15; Z = log(1+λmin)+log 2 to 2.2e-15; η = 0 gives min -0.580 vs log 2 = 0.693, "a branch condition, not a positivity condition"); Prop 13 conical intersection at m=(1,2,3) gap/r -> 2.16280, monodromy -1.000000; Prop 18 transient amplification 45.7, mean gain 10.58 vs 26.10; Prop 8 A2 fold normal form. filament Thm 4.1 M(t) = e^{-bt}(sqrt(4+|μ|²t²)+|μ|t)/2, growth iff κ=|μ|/b > 2; κ_r = 2.48526751266; σ_ε(J) disk radius sqrt(ε|μ|+ε²); Prop 5.1 linear vs square-root coalescence; Appendix A 5x5 pattern with defective 2x2 sub-block but simple eigenvalue in full matrix.
(bh.md l.70 prints κ_r = 2.48527; filament.md l.15 prints 2.48526751266.)

### 2.3.6 gravity.md (51,316 B, 119 lines): NOT read in full; all black-hole lines verbatim

```
HEADER: # GRAVITY — "The Ledger Outlives the Metric: Full finite proofs, source-resolved response, Light connections, and conditional gravity" (Jeromie Beasley), 24 September 2026 · full research edition 6 · "all finite proofs and companion-paper lineage"
6:1 Objects and contribution; 2 What positivity actually requires; 3 Full tangent form and chosen probe space; 4 A negative direction forces local overlap above the cap; 5 Reciprocity: exact obstruction with specific scope; 6 Metric walls, exceptional points, contour record; 7 Two complementary wall experiments; 8 Vanishing orders and limits of a clock interpretation; 9 Stress, scalar baselines, logarithmic records; 10 Relation to gravity and nearby work; 11 Reproduction, formal coverage, remaining work; 12 The operator record and projector response; 13 A conditional covariant completion; 14 Screen model, Newton, MOND, full response; 15 The Light companion and identification test; 16 Exact Gravity-Light probe bridge; 17 Three geometries and a horizon control; 18 Information, entropy, boundary offset; 19 Gravity recovery and assumptions; 20 Source lineage and claim transfers; 21 Proof and reproduction inventory; 22 Next physical theorem; 23 Conclusions and claim ledger; References.
49:- Prop 17 (finite-order line-element exponent) [T]: real eigenvalue branch lam(t)=c t^m+o(|t|^m), c!=0: sqrt|lam(t)|=sqrt|c||t|^{m/2}(1+o(1)); two-sided nonnegative => first nonzero order even, coefficient positive; transverse sign crossing m=1; minimal nonnegative touch m=2. "The familiar exponents 1/2 and 1 describe these two generic cases. Higher finite orders, flat zeros, nonanalytic families, and singular reparameterizations are not excluded." CLOCK-EXPONENT-01 and CLOCK-WALL-01 gates "do not make sqrt|g(v,v)| a physical clock in a general indefinite system... Taking an absolute value after loss of positivity is a formal line-element magnitude whose operational interpretation must be derived separately." Schwarzschild lapse ~ sqrt(r-r_s) near nonextremal horizon, extremal RN linear in r-r_+; nonextremal proper distance ~ sqrt(r-r_s) making lapse linear in proper distance; "Matching powers without a physically fixed parameter is therefore insufficient to identify an operator wall with a horizon. The spacetime metric is nondegenerate at a regular horizon; the metric induced on the null hypersurface is degenerate."
57:- "can a specified physical operator support both a derived response geometry and a logarithmic entropy functional, and can their behavior be compared across the same physical regime? Nothing proved above makes an entropy action necessary or removes the Einstein-Hilbert action at a horizon." Dorau-Much [1] (coherent-state relative entropy on horizon QFT -> energy flux, area/thermodynamic relation) "includes spacetime geometry; it is not a replacement of an unavailable metric by our trace-log." Bianconi [2] covariant entropic action; Pereira [3] distinguishes eigenvalue dependence of trace-log from Jordan information retained by the matrix function, vacuum analysis propagating poles and sign obstruction. Closest technical comparison non-Hermitian quantum geometry: Montag-Ozawa [4], Hu-Ostrovskaya-Estrecho [5], Oancea-Mieling-Palumbo [6] ("appropriate standard for any future covariant extension"), Jaramillo-Macedo-Al Sheikh [7] ("finite Poschl-Teller discretization is a useful test bed, but does not establish a continuum gravitational claim"), axisymmetric horizon relative entropy Dorau-Much-Verch [9] ("rotation is not an untouched common frontier"). "The present paper is therefore best positioned as a finite operator-geometry contribution motivated by gravity. Its distinctive package is the local overlap theorem, the separation of full tangent neutrality from restricted inertia, the explicit moving wall with a changing record, and machine-audited algebra. Claims of first priority for these elementary identities require a dedicated literature determination and are not made. Formal verification strengthens correctness within stated assumptions; it does not establish novelty, experimental relevance, or journal rank."
77:- "The two papers now form one mathematical question with two experimentally different entrances. The Gravity construction probes the real trace form of derivatives of a chosen Riesz projector and asks what remains when that form loses positivity. Light Keeps the Ledger studies spectral subspaces, boundary responses, and energy- or transition-resolved measurements... A shared idempotent formula may be reused, but the electromagnetic transition amplitudes of the Light examples do not automatically supply gravitational mass, an areal count, a horizon state, or an Unruh thermometer."
78:- Proposed interface (testable sequence): choose one physical operator K[g,Phi], fix inner product/left-right pairing, identify gravitational source response and optical/matter probe on same system; compare measured response tensor with contour geometry incl silent directions and non-Hermitian changes of basis; prove positive approximately areal low-frequency spectral measure with universal normalization and safe large-system limit; derive 4-d conserved field equation and lensing response, test wave sector before identifying chart wall with a physical horizon. "A null direction of g_ij, a spacetime null generator, and a metric degeneracy are different objects until this map is made."
79:- "This programme preserves the original physical intuition: one spectral system can retain a record after a chosen geometric response has lost a positivity guarantee... It does not say that photons carry a universal gravity ledger, that an electron is literally the required screen degree of freedom, or that this formal wall is a black-hole horizon. Those are candidate physical identifications to be tested on a specified operator."
88:## 17 Three geometries and a horizon control
90:- Spacetime metric g_munu differs (Lorentzian, connection, curvature, matter source); 2-d Einstein tensor identically zero so 4-d Einstein dynamics cannot be read from moving chart's 2x2 parameter metric. Dirac-Time review negative control: local-symbol Schwarzschild construction has physical horizon present while local projector metric stays positive and spectral gap open: "a horizon need not be a wall of this projector metric. Conversely Gravity's finite analytic wall has no event horizon built into its hypotheses." Static clock-rate gradient need not be curvature: ds^2=-N(x)^2dt^2+dx^2: R=-2N''/N; linear positive N gives R=0.
107:Table (family — relation — status): Intrinsic Quantum Geometric Tensor (Aug PDF; exact positive comparison; its overbroad "traceless curvature invisible" sentence corrected in Light §3 and here §17); Light Keeps the Ledger (full Sept 24 edition 7.2; direct theorem-level bridge (26)-(29); 91 Lean declarations not a certification of this paper or an optical-to-gravity law); The Ledger Outlives the Metric (this paper's v4 source and reproduced edition 5; primary finite theorem lineage); Spectral Stress (fine eigenline vs coarser Riesz block; spectral survival control; no continuum-gravity inference; sixteen-page recovered edition); What Transport Keeps (survival, conserved pairing, distinguishability, instrument response; architecture of source-response test; HTML(3)); The Offset Belongs to the Boundary (v31; Gaussian regional log-odds, Schur residual, scalar-offset and units controls; exact finite boundary comparison (30)-(31); physical cosmological constant conditional); Non-Normality Is Connection Energy (v7; algebraic analogy only; "energy" not gravitational energy); Foundational Operator Field Theory (isospectral nonnormal relaxation; timing/arrow control; no imported Einstein or MOND equations); Operator-First Relational Atlas (dependency map; organizational provenance); Matter at a Scale (eigenspaces persist under uniform positive scale change; scale non-identifiability explicit in (32)); Universal Projector Geometry from Electrical Measurements (operational projector response; context for calibration; no gravitational area law imported); Three-Body Problem Operator-First (degeneracy does not alone make a phase or history memory; negative control for metric-wall interpretation); Beyond the Event Horizon ("Horizon and record questions. Physical horizon/projector wall equivalence is not retained."); The Square Case (corrected Gram and shape-wall bookkeeping); The Price of a Direction (directional resolution; older capacity numbers not gravity inputs); Companion-Matrix Projector Diagnostic (historical); Intrinsic Emergent Transport Geometry (historical synthesis); Spectral Stability Across Interfaces (historical Schur skeleton); 5D Spectral Anatomy of Four-Body Obstructions (superseded where Square Case repairs); Solar Rigidity Interfaces (case study); Electron Screening in Metal Deuterides (operational acquisition control only); Permutation Coboundary Constant (recorded correction; not used to prove gravity); Certified Obstructions and Exact Forcing (methodological); Five-Dimensional Non-Normal Stability Operator (no fracture-to-spacetime identification); Subgraph Density Obstruction to Biplanarity (no active gravitational theorem imported). September continuation adds Dirac Time of the Gigantefermion (direct §17 horizon negative control) and VOTKP: Elemental Peeling research edition 0.8 (material measurement check), "separately inspected recent versions, not silently counted among the earlier twenty-five". "Light's later corrected text controls the optical claims in this edition. The Atlas dependency order—measurement, operator, spectral selection, subspaces, relations, geometry, observables—is a research construction order; none of its arrows is a proof of a gravitational equation."
113:- 22: Bounded next theorem: from a local/controlled effective physical K[g,Phi] with positive Hilbert-space state and declared source insertions, establish identity relating the same source-resolved spectral measure in (28) to a covariantly conserved metric variation and to a horizon/screen state-relative entropy; derive area normalization and low-frequency density from controlled large-system limit; calculate the two weak-field potentials, wave characteristics, and one prediction fixed before galaxy fitting; "would have to explain why an oblique parameter-space wall, if one appears, is relevant rather than merely allowed." Defeating outcomes: gapped positive source spectrum with no zero-mode/continuum mechanism defeats strict deep-MOND scaling; source-resolved response with uncontrolled sign can't be treated as positive thermal density; a viable rotation law without Psi doesn't determine lensing; a completed log action with pathological tensor characteristics is not a stable completion. "The present finite theorems, proofs, and negative controls stand independently of how those physical tests turn out."
114:- 23 Conclusions (his words): "The unrestricted real tangent form of complex idempotents is neutral, although the self-adjoint tangent slice is nonnegative. A negative direction forces a local algebraic overlap above the orthogonal rank cap. An analytic two-parameter family crosses a metric wall while its rank-one projector and varying trace-log remain regular... The fixed-base experiment has a separate Hermitian-proxy boundary and a documented failed rotation sign prediction." Gravity comparison: Einstein-Hilbert leading term follows from additional 4-d form-space action (21); Newtonian and deep-MOND branches from additional screen/energy/temperature/spectral-density assumptions (23)-(24); "The same-reference relative-entropy equality and selected-log-only dynamics fail on the actual moving example. No complete Einstein-MOND field theory, physical horizon identification, universal scale, or observational validation is asserted here." Next decisive result: physically derived operator proving Einstein normalization and low-frequency scaling from one set of hypotheses with viable tensor propagation. "Until then, this paper is a complete and reproducible finite operator-geometry research manuscript with explicitly conditional gravity bridges." Theorem 26 shows source insertion makes the scalar sensitive to probe direction; Cors 27-28 positivity and tomography under self-adjoint positive hypothesis; Counterexample 29 oblique; Prop 30 scale ambiguity ("that the Offset and Matter-at-a-Scale papers make operational").
```

Pointers: gravity.md l.107 records how the gravity paper (research edition 6, 24 Sep 2026) lists the black-hole paper in its lineage table: "Beyond the Event Horizon ('Horizon and record questions. Physical horizon/projector wall equivalence is not retained.')". l.90 "Dirac-Time review negative control: local-symbol Schwarzschild construction has physical horizon present while local projector metric stays positive and spectral gap open: 'a horizon need not be a wall of this projector metric...'". l.79: "It does not say ... that this formal wall is a black-hole horizon."

### 2.3.7 atlas_v7.md (96,290 B, 235 lines): NOT read in full; all black-hole lines verbatim

```
HEADER: # The Operator-First Atlas, edition v7 (23 Oct 2026), Jeromie Beasley: full read of Part 1 (B1-B100) and Part 2 (B101-B207)
10:- Offset as log-odds / rapidity: B151 (log-odds of empty vs full), B152 (particle-hole pins zero), B153 (offset = rapidity tau=2 artanh a), B154 (one temperature test, blind to trace), B176 (Hawking pair outside half, tau=omega/T_H), B191 (constant invisible to connection energy, the opposite records it; "gives the offset a book"), B204 (boundary sets the sign), B205 (Rice-Mele vs Kitaev), also B6 ext X08, B48 ext X08, B150 (Lambda as integration constant), B37 (finite count, 1/N ~ 1e-122), B139.
12:- Non-normality and its opposite (two books): B2, B12, B38, B44, B64, B84, B122, B137 (connection energy), B145, B148, B165, B171 (non-normality belongs to the frame), then B183-B207 (two books: B183 opposite, B184 budget+trace form, B185 Born sums, B186 quarter turn, B187 odd loops/double cover, B188 pentagon sqrt5, B189 scalar edge, B190 P^2+V^2+L^2=1, B191 constant, B192 gap/odd cycle, B193 odd ring, B194 two loops, B195 zeta pencil ends, B196 zeta recurrence, B197 triangle cubic, B198 Frobenius edge, B199 wall where trace form vanishes, B200 Koide, B201 relaxation flow, B202 transpose-blind, B203 route vs endpoint, B204-B205 offset, B206 three overlaps, B207 doubled Schwarzschild).
32:B14 | L4->L7 | READING | The budget is written on horizons. S_horizon >> S_matter; S/k = A/4 l_P^2, photon gas s/k = (4 pi^2/45)(kT/hbar c)^3. Magnitudes standard, channel-census reading is interpretation. Witness: cosmic event horizon (16 Gly) 2.8e122; one 4.3e6 Msun black hole 1.9e90; all CMB photons 5.3e89. [census]
114:B90 | L1->L7 | THEOREM | The clock exponent says whether a system is open. Hermitian -> 1, non-Hermitian -> 1/2: arc length ~ dist^{n/2}, zero of order n; semidefinite metric touches its null set, indefinite crosses. The two generic values are the two horizon lapses, 1/2 Schwarzschild, 1 extremal [H]. Closed when: tuned tangencies give larger exponents; horizon reading is an analogy (graded H inside a T card). Witness: Hermitian lattice det g slope 2.012 (arc 1.006); non-Hermitian wall |k|=0.7352 slope 0.9999 (arc 0.4999). [walls; horizons]
194:B170 | L7->L7 | READING | Russell's universe is the inverse-cube world. v ~ a^-1, T ~ a^2 iff U ~ r^-2, F ~ r^-3; apsidal angle psi=pi/sqrt(3-p); GR p_eff = 2+6GM/c^2 r = 3 at r=6GM/c^2. Wrong for the solar system, exact for the edge of a collapsed star. Closed when: math exact; claim that this is what Russell saw is a reading (H); his masses, charge sign and periodic table fail. Witness: psi=3.141593 (p=2), 4.442884 (2.5), 9.9346/9.9347 at p=2.9; Mercury 43.0 arcsec/century; ISCO one solar mass 8.9 km.
197:B173 | L7->L2 | THEOREM | Majorana stars fix the Jordan form of the Weyl operator; Kerr is type D. psi_Q(z)=n(z)^T Q n(z); double star = Jordan block (gap linear in splitting delta), two double stars (Kerr) diagonalisable, splits quadratically. Closed when: comparison is of Jordan structure and unfolding exponents only. Witness: map determinant 3072; Kerr Psi2=-M/(r-ia cos th)^3: eigenvalue ratio -2, no block; gap/delta -> 1.300 (II), gap/delta^2 -> 1.000 (D). [Jordan/exceptional]
199:B175 | L3->L7 | THEOREM | A boundary that returns nothing is a matched load; the horizon is one. I - S_b^* S_b = 4(W V_b)^* Herm L (W V_b); Z_b = L_bb - L_bi L_ii^-1 L_ib = W^* L W; S_b=(Z_b-I)(Z_b+I)^-1; membrane horizon surface resistivity R_H=4 pi/c = impedance of empty space. Closed when: no reflection is not full absorption; horizon reading structural. Witness: 200 random passive samples to 6e-15, largest ||S_b||=0.950; 4 pi/c = 376.7303 Ohm; Z_b=1 gives S_b=0; Z_b=1/2, 2 give -+1/3. [reflection coefficient; matched load]
202:B176 [HTML] | L5->L7 | THEOREM | The outside half of a Hawking pair is thermal and blind to the pair; its offset is omega/T_H. tau = log P(empty)/P(full) = hbar omega/k_B T_H; |psi>=sum tanh^n r/cosh r |n>|n>, tanh r = e^{-omega/2T_H}, CHSH = 2 sqrt(1+tanh^2 2r). Dirac pair outside occupation C = sin^2 r = e^{-omega/T}/(1+e^{-omega/T}); log[(1-C)/C]=omega/T_H independent of pair phase. Closed when: offset fixes only ratio omega/T_H never absolute scale; bosonic mode has no "full" state. Witness: CHSH 2.785688 (omega/T=1/2), 2.383254 (2), 2.000182 (10); tau=omega/T_H to 1e-15 at 0.3,1.7,5 for pair phases 0,pi/3,pi. [OFFSET; horizon]
203:B177 [HTML] | L2->L7 | THEOREM | The ISCO is a spectral wall: a Jordan block where gravity reaches the inverse cube. (1/2)V''(r0)=(r0-6)/(r0^3(r0-3)); omega_r^2/Omega^2 = 1-6M/r = 3-p, p=2+6M/r; wobble generator squares to -(1/2)V'' I; at r=6M nonzero with square zero. Closed when: orbit family's generator, not the horizon; horizon is a geometric fold (B179). Witness: eigenvalues +-0.02700 i at r0=7, +-0.06325 at r0=5; gap/sqrt|r0-6|=0.078567 vs 2/sqrt648. [exceptional point/wall]
204:B178 [HTML] | L2->L5 | MEASURED | Climb or swap: how loops permute a family of exceptional points labels the family. Loop around first n: (1 2)(3 4)...(2n-1 2n), discriminant winding n; near-extremal Kerr: fundamental -> n-th overtone (cascade of Cavalcante-Richartz-Carneiro da Cunha 2025). Solar dynamo ladder: swaps; Kerr: climb. Closed when: a mode leaving tracked window breaks labelling. Witness: solar dynamo birth points alpha0=3.8717,5.2802,7.1576,9.0850,11.0266; n=1..5. [exceptional points; memory]
205:B179 [HTML] | L3->L7 | READING | A horizon's static base and the coplanar wall share one fold normal form; only kappa differs. ds^2=dX^2/(4c^2 X)=d lambda^2/c^2, X=lambda^2; horizon X=N, c=kappa; Sigma4: X=w3, c=1; kappa physical, c a normalisation, nothing on his side goes null. Closed when: extremal horizon has no fold (log proper distance). Witness: N h_NN -> 4M^2=1/(4 kappa^2) Schwarzschild; 5D Tangherlini M/2=1/(4kappa^2), h_ll(0)=2M=kappa^-2; all start at 1/4. [wall; fold]
208:B182 [HTML] | L5->L7 | THEOREM | Delay is not trapping: a slow return and no return differ only in the limit. x'=P-(kappa+a)x+by, y'=ax-by; mean residence (1+a/b)/kappa for b>0; at b=0 share a/(kappa+a) stays; limits t->inf and b->0 do not commute; storage decides how long, return channel whether. Closed when: conditional energy model, not a simulation of a star or black hole. Witness: kappa=a=1: b=0.2 mean 6; b=0.02 mean 51; b=0 keeps 0.5 forever. [memory]
227:B199 [HTML] | L3->L3 | THEOREM | One wall where the trace form vanishes: the spinning key, critical damping, the ISCO. T^2 = q(T) I, q=(1/2)(||Herm T||^2 - ||Skew T||^2); q=0, T!=0 iff a nonzero nilpotent; key q=h^2-r^2; oscillator q=omega^2(zeta^2-1); orbit [[0,1],[-kappa^2,0]]; four-body Gram chart; prime-trace companion; Hermitian and skew halves balanced on the smallest block; oscillator decay rate maximal at zeta=1; critical Schur block [[-omega,2 omega],[0,-omega]], kappa=2 (threshold of B122). Closed when: equal books on a graph are not the wall (sigma_z and sigma_x on one edge E^-=E^+=4, four distinct eigenvalues); higher rank/complex entries q=0 does not force nilpotence; finite tolerance underdamped can finish first. Witness: alpha(1.01)/omega=0.8682; at t=pi/0.6 norms 0.0151646 (zeta=0.8) vs 0.0562309 (zeta=1); key with moments (3,5,6) a=b=-1/3 symmetric, normal, still tumbles. [WALL; exceptional point; two books balanced]
235:B207 [HTML] | L3->L7 | READING | The doubled Schwarzschild slice reads as the two books of one scalar edge. (1+lambda)psi/2=1, (1-lambda)psi/2=a/rho, lambda=tanh((1/2)log rho/a), psi=1+a/rho; rho -> a^2/rho sends lambda -> -lambda; Reissner-Nordstrom r+ r- = Q^2, tau+ = -tau-. Bunting-Masood-ul-Alam conformal factors ((1+-lambda)/2)^4 as half-amplitudes of the two books; inversion is the sign flip that swaps the books. Closed when: a doubled metric is not a field on a graph; no Penrose-type inequality follows; no identification of the geometries made. Witness: log(rho/a) in [-3,3] identities to 1e-14; (M,Q)=(1,0.6),(1,0.9),(2,1) horizons tau+ + tau- = 0. [two books; horizon; rapidity]
```

Atlas cards (edition v7, 23 Oct 2026) that carry black-hole content per this note, with the card's own type: B14 READING (horizon entropy budget); B90 THEOREM with horizon reading graded [H] inside; B170 READING (inverse cube, ISCO); B173 THEOREM (Majorana stars, Kerr type D); B175 THEOREM (matched load; horizon reading structural); B176 THEOREM (Hawking pair offset); B177 THEOREM (ISCO spectral wall); B178 MEASURED (climb or swap); B179 READING (shared fold normal form); B182 THEOREM (delay is not trapping); B199 THEOREM (one wall where the trace form vanishes: includes ISCO); B207 READING (doubled Schwarzschild slice).
Numbers that differ from bh.md: B173 "gap/delta -> 1.300 (II), gap/delta^2 -> 1.000 (D)" vs bh.md l.64 "gap/delta = 0.800000" and "gap/delta^2=0.250000"; B175 "to 6e-15, largest ||S_b||=0.950" vs bh.md l.78 "to 2.4e-15 ... largest ||S_b||=0.901". See Disagreements.


### corpus-notes/votkp_v29.md (146963 B, 298 lines): NOT read in full; all black-hole lines verbatim

```
HEADER: # VOTKP v2.9 (13 Oct 2026) — read notes (facts only, his text)
172:Five findings: (1) records are vectors (atoms: shape carries family, level carries response, inside each step TF envelope carries scale and residual carries family; knots: topology/loading/geometry independent; polymers: topology moves viscosity not absorption); (2) resets fade away from home (noble-gas ridges shrink in deep ions; magic-number ridges fade away from stability); (3) resolution ladders (6 peel steps fail where 10 succeed; colour 3 fails where colour 4 succeeds; HOMFLY first classifies at 13; "Not every rung is a resolving rung: categorification adds only signature and thickness, and tabulated line strengths add scatter to line energies"; signature function separates exactly one pair that categorification cannot); (4) two geometries of a boundary (reflection decides the thinning peel exactly by one circle fixed by front surface and organizes the onion; refraction "did not predict either target"); (5) one composition law (atom steps add as rapidities, film adds back surface by same law with a phase; "Only the phase makes order matter"). "The paper claims no correspondence between elements and knots, no scalar VOTKP, and no identity between an energy and a polynomial change. The bridge that would join the two sides runs physical peel -> spectral change -> topological or geometric record -> measured response, and it is not built here."
187:19.6 Equality conditions [Derived from proof of 19.4]: spectral weighting equality needs every active cross-gap pair at minimum weight w_*; length step equality needs constant intrinsic speed sqrt(g); total friction equality needs no other dissipative contribution; several distinct gaps can have the same weight. With tau = 0.5 and coherent precession w(Delta) = Delta/(1 + Delta^2/4); w(d) = w(e) for distinct positive gaps precisely when d e = 1/tau^2 (=4): Delta_1 = 1 and Delta_2 = 4 both have w = 0.8. Test RP-WEIGHT [synthetic]: H(s) = e^{sA} diag(0, Delta_1, Delta_2) e^{-sA}, s = t/T, real antisymmetric A with A_10 = 0.3, A_20 = 0.4, A_21 = 0; g = 0.25/T^2, L = 0.5. Gaps 1 and 4: weights 0.8 and 0.8, T W_ex^lead = 0.20000000 = w_* L^2 = 0.20000000, "saturated with two distinct gaps". Gaps 1 and 3: weights 0.8 and 0.92307692, 0.21969231 vs 0.20000000, strict, slack 0.01969231. Full bath ODE from Gibbs state at beta = 5, tau = 0.5: relative error 0.407% (duration 20), 0.105% (80), 0.0265% (320); "does not test saturation against the transmon experiment." Test RP-RANK [synthetic counterexample]: D = diag(0, 0.5, 3, 6), retain lowest two levels, zero-temperature bath occupies only the ground level, rotate levels 1 and 2 with amplitude 0.3: rank-two projector moves with g = 0.09/T^2 but that pair has population difference p_1 - p_2 = 0, so rotation friction zero: "Motion of a rank-two projector does not imply a strictly positive zero-temperature work coefficient." Structural comparison (not derivation) with spacetime Penrose inequality [Cited: OpenAI 2026c, "an unrefereed manuscript produced by an OpenAI model"], Theorems 2.2 and 10.2: m >= sqrt(A_min/16 pi); "the metric here is the intrinsic metric of a retained spectral projector, not a spacetime metric, and neither result is derived from the other."
237: 21.1.11 What the contrasts establish: (1) same shell boundary moves through the ladder: in Li, Be, B, C, N, O the strong comparison between three-electron and two-electron starting ions occurs at k = 1,2,3,4,5,6 (indexing rule k = Z - 2); archived Gamma declines 0.8669 -> 0.6852; every such comparison includes a theoretical endpoint; "not six independent raw confirmations", "not a newly discovered shell law". (2) Neutral-neighbor comparisons need signed coordinates: C(A,B) = (IE1(B) - IE1(A))/(IE1(B) + IE1(A)); Be->B = -0.0581520; N->O = -0.0325401; "Positive within-atom peels coexist with negative steps across neutral elements. The axes cannot be conflated." (3) Absolute energy and relative shape must both survive: Cu and Au give "an experimentally supported reversal of their IE1 and Gamma_1 orderings"; "The new table needs an absolute threshold anchor plus a vector of peels, with uncertainty and source grade at each rung." (4) Dynamical phase is additional measured information: "A suitable record is channel-specific response versus photon energy, with ionic final state, polarization, probe and extraction method. It should be linked to the atomic threshold atlas, not equated to its real reflection coordinate." (5) Missing and disputed thresholds are part of the result: seven first-peel comparisons E/E; Li E/T; N and Xe E/S; "A table that hides these gaps can manufacture apparent regularity." Ag control: I_0 = 7.576234 eV, first peel 0.4785913: absolute thresholds order Au > Cu > Ag, peel size orders Ag > Cu > Au; "supports keeping dimensional scale and relative shape separately; it does not establish a common curvature or a relativistic explanation".
248:Repository dicipler-pixel/votkp-lean, Lean 4 v4.34.1, Mathlib v4.34.1: "140 theorems in fifteen modules". Module list and counts: Smith 21 (§§8.1, 8.7, 15.2-15.4); Film 12 (Thms 6.1-6.2, circle, one-radius counterexample); Peel 18 (5.1-5.3, 5.6-5.10, cumulant witness, transmission records); Observer 7 (Thm 3.1 all five parts, Cayley-Hamilton horizon); Curvature 5 (Thm 4.1); Memory 4 (5.4, 5.5, five-site shift); ThinFilm 4 (Thm 6.3 top and substrate face; difference of order d^2); WallParity 3 (Prop 11.1 factorization and parity); Scaling 6 (Thm 15.4); Directed 22 (Props 19.1-19.4 and §19.6 weight condition with its 1/4 example and equal-population control); Knot 1 (A.12 unit-circle identity); Ordinal 5 (control 41); Energy 17 (§20.1 ledger); Channels 8 (5.6 in matrix form; §20.3 retained resolvent by Schur complement and contour selection by Cauchy; §20.5.1 footprint 0.58); Witnesses 7 (§§20.5.2-20.5.3 readout, equal present summaries, opposite futures of phi=+-pi/2, unitarity, zero dephased readout; §20.5.5 Schur form of signed offset and sign change under particle-hole). Axioms: propext, Classical.choice, Quot.sound; every module replayed by Lean's independent kernel checker; "fifteen deliberately false statements fail to compile". Verified at commit bd4d15a (GitHub Actions run 38326349740); run with lake exe cache get, lake build, python3 scripts/verify.py.
262:Read at source (his list): BESIII 2026 abstract and results (arXiv:2607.20366), Ben-Yang-Zou (arXiv:2609.01342v2) abstract, Mathur & Sreeraj abstract only ("the body was not read"), Hughes et al., Craven et al., Dlotko et al., Dunfield et al., Stoimenow-Tanaka, Boyd-Rodriguez-Villegas, Sutcliffe, Jones, Lyu-Keitel-Harman, DeKock et al., Schwerdtfeger-Nagle, Du et al., Couto et al., Chen et al., Kasai et al., Hall et al., Ekholm-Shende, Kawagoe, Kim et al., Au surface PNAS, Bista et al., Johnson-Christy, Rakic et al., NUBASE2020, Otsuka et al., etc.; Russell first 42%; "Read at source for §15.11: OpenAI, Generalized ionization energies for full Coulomb atoms, OpenAI Math Release preprint, 24 September 2026, released 6-7 October 2026 at github.com/openai/math (OpenAI 2026a), a manuscript produced by an OpenAI model and Lean-formalized in that repository, not refereed: the full text, read on 8 October 2026". "Confirmed by title and venue only:" Feshbach; the two Nat. Commun. papers; Clark-Morrison-Walker; Lee; Ozsvath-Szabo; Manolescu-Ozsvath; Wehrli; Bloom; Morton; Cakirli-Casten; Allen-Healy; Rellich; Kato; Grassmann; Bujack; Hovel-Gompf-Dressel; Kossoy; the optical-constant sources of §6.4; Bondi; Tait; Skyrme; Adkins-Nappi-Witten; Levine; Tristram; Lin; Herald; Cooper-Culler-Gillet-Long-Shalen; Laughlin; Thouless; Rice-Mele; Fukui-Hatsugai-Suzuki; Born & Wolf. E.1: [S1] NIST ASD; [S2] CODATA 2022; [S3] Ozawa & Goldman PRB 97, 201117; [S4]-[S5] NIST carbon revisions; [S6] Sansonetti & Nave 2014; [S7] Cu/Ag/Au atomic-beam PRA 59, 873 (1999); [S8] Zhong et al. Nat. Commun. 11, 5042 (2020) "main experimental and data-analysis argument read; numerical files not retrieved"; [S9] Kumar et al. PRA 110, 063104 (2024) "not used for a new fit"; [S10] Zenodo 19058409; [S11] Boltnev 2024; [S12]-[S15] collective phases; [S16] OpenAI problem 263 scope; [S17] the author's related work restated, not relied on: J. Beasley, Light Keeps the Ledger, Edition 7.2 (Zenodo 23043570); Intrinsic Quantum Geometric Tensor, v6 (Zenodo 23250681); Universal Projector Geometry, v3.2 (Zenodo 23002919); Dirac Time, v3.0.1; Gravity, Edition 7; The Offset Belongs to the Boundary, v31 (manuscripts, 2026). E.2: Gaigalas et al.; Lyu et al.; OpenAI 2026c Penrose preprint, 5 October 2026, "a manuscript produced by an OpenAI model, not refereed: Theorems 2.2 and 10.2 read at source".
282:Paper published beside the zip as PDF and HTML plus mixer VOTKP_Mixer_v1_3_20261013_standalone.html. Zip holds: work/ (script tree from v2.1 package, scripts next to stored outputs and PREREG files), run.py, requirements.txt, DATA_MANIFEST.md, SHA256SUMS_PREREG.txt, v22/ (§19 check VOTKP-RP-01), supplement_20_3_7/ (verify_and_extend.py, Verification_results.json 19 of 19), stagger/, lean/votkp-lean/ (commit bd4d15a, 140 theorems, 15 false controls, threshold archive element_thresholds_20261011.json.gz: 5,847 thresholds, 110 elements), supporting_records/penrose_comparison/ and atlas_cauchy_reading/, notes/ (§20 frequency and Ferranti assessment), independent_checks/, figures/ (Figures 1-34). Reruns for the zip: eleven scripts byte-identical from relocated copy; stagger test byte-identical (264/316, 110/158, 0/36, 1,827/2,036); Penrose and Cauchy controls reproduced JSON; §20.3.7 supplement 17 finite controls identical, binding reconstruction 103 complete ladders max error 2.45e-15; "The one remaining check rereads the stored peels in the original element_atlas.json, which is not in any package received"; §19 check: all 5,725 pass, only max_metric_error differs (1.29e-10 vs stored 1.09e-10, tolerance 1e-8). Not in zip: original element_atlas.json; Swedish xenon scans; OpenAI openai/math Lean files. README flags two path mismatches in the paper (rhythm/rdata.py is work/rhythm/rdata.py; the two TF PREREG files are in work/v21/, not v21/scripts).
```

### corpus-notes/dirac_gigantefermion.md (40467 B, 88 lines): NOT read in full; all black-hole lines verbatim

```
HEADER: # The Dirac Time of the Gigantefermion: Memory First, Projector Geometry, Retained History, and the Cost of an Arrow
59:- 17: Sigma_ij = sum_k w_k (d_i lambda_k)(d_j lambda_k), w_k>=0; g^P_ij = (1/2)Tr(d_i P d_j P); stress candidate S_ij = d_i rho d_j rho + Delta^2 g_ij + chi_eta d_i eta d_j eta; response-geometric, "not automatically Lorentzian spacetime metrics". 17.1 the ledger can survive a metric wall (tangent trace form / Hermitian proxy / Riesz projector / contour trace-log): "failure of one metric description != failure of every spectral record". 17.2 Schwarzschild local-symbol control: horizon with positive projector metric and open gap; older shape-space/Kerr "boundary isomorphism" claims not retained as theorems. 17.3 static 1+1 metric ds^2 = -N^2 dt^2 + dx^2, R = -2N''/N; linear lapse has rate gradient with zero curvature. 17.4-17.5 no-hair/soft hair and far-from-equilibrium horizon thermodynamics are neighbouring research, no identification.
61:- 19 Permanent negative controls: full chiral scalar SF = 0; Tr((2P - I) Pdot) = 0 (naive oriented projector scalar); K(0) = BB^dagger != K(t); weak-value overreach; Rice-Mele phase-law control (exact velocity-metric identity survives while proposed relativistic phase law fails at higher order); horizon control; 8_19 not hyperbolic (do not revive hyperbolic-volume/Mostow); Maxwell-Dirac seed fails.
72:- A: source spine (Sept 17-20 2026 Dirac manuscripts: Best Only v1.0, Consolidated, Integrated, Time-Centered v2.0, Full Research Edition 18 Sep, Formal v0.9-v0.11, Amendment A, Unified Intake and Claim Ledger, All Ideas and Questions Ledger, Old Work Salvage I-II, Time/Projector/Ledger Research Review). Zenodo IDs cited for his other papers: IQGT 21804717; Directional Transport Geometry 21089304; What Transport Keeps (research edition 3) 22543487; Companion-Matrix Projector Diagnostic 21799194; The Price of a Direction 21918464; Spectral Stress 21855787; Foundational Operator Field Theory 21860370; Offset Belongs to the Boundary v31 22555919; Light Keeps the Ledger 22124938; Matter at a Scale 22019893; Non-Normality Is Connection Energy v7 22804072; The Ledger Outlives the Metric v4 22088625 lineage; Beyond the Event Horizon v2 21860392; Transient Structure at Solar Rigidity Interfaces 22013524; Non-normal fracture operator 22811901; 5D Spectral Anatomy of Four-Body Obstructions 20818169; Spectral Stability Across Obstruction Interfaces 20834719; The Square Case 21855591. Also "Operator-First Atlas and its 84-bridge register", "Universal Projector Geometry", "A Relational Atlas of Memory, Obstruction, and Becoming" (book manuscript), early "Spectral Memory Paper I-III/IV". A.0 notes this is "a reconstruction from the surviving Dirac-Time source tree"; later corrections govern.
77:- F: Master Claim Lineage v1.0 (25 Sep 2026), status table. Items marked FALSE: full torus spectral flow gives time; UPG inverse-smallest-eigenvalue refraction index "FALSE as universal identification - Use intrinsic n = sqrt(g_||) under interface symmetry" (relevant to the R = 1/(sigma_min^2 + eps) rigidity/refraction law in Directional_Transport and obs: here he marks the inverse-smallest-eigenvalue identification as FALSE as a universal identification); weak measurement as Dirac-time mechanism; weak values exact at finite coupling; positive SF reachability gives partial order; common time from matched spectra; K(0) = full memory; entropy = time; quantum friction as Dirac Time; knot complements forced by torus boundary; 8_19 hyperbolic; same peripheral eigenvalues -> same interior; non-normality implies history/entropy without dynamics; Loss-Yau seed is Maxwell-Dirac electron; naive fermionic BEC; projector metric = spacetime metric; horizon = metric wall. REPAIRED: intrinsic QGT directly lower-bounds entropy universally (under a declared relaxation model, Sec 12.6). SURVIVES: memory first; predictive quotient; flat-torus paired spectrum as control; projector retains orientation; intrinsic QGT/metric (convention Q = g - i Omega/2); What Transport Keeps selection/pairing; AB phase primacy narrowly; ABL standard conditional rule; SF as path ledger; APS/eta/Maslov as typed ledgers; rank-(n-1) phase constraint; hidden memory kernel; energy-resolved memory; light dragging; QHE retained memory changes work (finite construction); trefoil L = -M^{-6}; torus-knot family law (Theorem 13.1); Dirac-time arc as bulk eta window (torus knots, identity of counts); 8_19 three SU(2) arcs; non-normality = connection energy (printed graph hypotheses); structural memory transfer/regeneration. OPEN: two-state/final-boundary intuition; persistent light-path inheritance in a material; electron as knot of memory ("OPEN / central hypothesis"); black-hole no-hair shape-space isomorphism; gravity from response geometry (needs Lorentz signature, action, conservation, Newtonian/PPN/lensing); cosmogenesis mu = mu0 - chi W. Governing principle: "A later omission does not kill an earlier branch. Only an actual mathematical contradiction or external factual contradiction earns FALSE." Source Mining Manifest v1.0 lists corpus mined for the "21 September 2026 reconstruction" (note: dated 21 Sept in the manifest while the manuscript is 25 Sept); coverage caveat: duplicates treated as one source.
87:- This paper retracts as universal: UPG inverse-smallest-eigenvalue refraction index, and the "boundary isomorphism"/horizon claims; and states K(0) is not full memory.
```

### corpus-notes/koide.md (37297 B, 80 lines): NOT read in full; all black-hole lines verbatim

```
HEADER: # Koide, Connection Energy, and the Prime-by-Prime Record (Jeromie N. Beasley)
48:- 5.2 Theorem 5.3 (adjoint sign-blindness): U -> -U gives identical endomorphism transport; no function of bare adjoint data distinguishes aligned lifts; Frobenius classes with traces a_p and -a_p have the same adjoint conjugacy class; squared edge books (33) cannot recover the sign. Caveat: ordering eigenlines separately at a_p and -a_p can replace canonical rep by -U_p^dagger; a basis-dependent comparison "is not a recovery of the lost central sign". "The fundamental trace Tr U_p = a_p/sqrt p is an odd record; rho_p is even under this central sign. This explains precisely why the squared two-book statistic cannot carry a signal defined by the sign of the Frobenius trace. In particular it cannot recover signed murmuration averages from their squared versions. Murmurations themselves are established arithmetic observations [10]; this theorem neither rediscovers them nor establishes a new rank classifier."
69:- 8.2 Primary script checks/verify_paper.py passes 22 grouped gates (degenerate Born weights, centered active-plane books, normal DA counterexample, cubic triangle factor, passive realization, direct prime counts, global twists, adjoint sign-blindness, twisted Bass factorization, GL inverse-reversal control, noncentral triangle embedding). Separate "Sol" implementation passes 14 grouped gates (double cover, regular reciprocal completion, parallel-kernel Laurent check, independent arithmetic/circulant). "they are independent implementations, not 36 independent discoveries. The Laurent check is an asymptotic numerical probe, not an exact zero-residual identity." Earlier 24-gate trace audit and 31-gate synthesis preserved in archive. "Recent working notes report a 155-declaration Lean branch for admissibility, overlap, records, and Koide. This paper does not claim that its new arithmetic, centered-compression, cycle-completion, or variational theorems have been formalized in Lean. The branch was not rebuilt during this manuscript assembly."
76:- D Recovery record (table of source threads and boundaries): archive holds the 3642-line recovered Two Books transcript, index of its 79 user turns, six working records from Drive, source set, two previous audits, manuscript+figures, exact point-count data, new scripts, separate Sol audit; checksums. Rows: Connection v11 ("Not a mechanical energy-conservation theorem"); Gravity Ledger (signed tangent form and finite overlap expansion; "not an Einstein or MOND field equation"); IQGT and W2 (suppressing a coefficient is not parameter-freezing dynamics or critical-point selection); Offset and direction (squared books do not determine endpoint orientation; half-mode counts need symmetry hypotheses); VOTKP and pace (route vs endpoint, L_rec - D_end = 4 min(R+,R-); "No clock or atomic coupling law follows from a threshold ledger alone"); Spinning key (generic flips need not occur at a Jordan wall or require non-normality); Black-hole and Penrose (signed-lapse fold, Schur complements, ISCO marginal generator; "A horizon need not be a projector wall; static spacetime twist zero does not establish operator normality"); Cosmic interpretations ("No new galactic, cosmological or dark-energy law is claimed"); Born and Hossenfelder; Koide and circulant ("No absolute-scale, generation-count or running-mass derivation"); Arithmetic primes ("No test of primality, BSD proof or new rank predictor"); Graph primes; Ramanujan work (supplied Lean review establishes bounded Problem 2.1 convergence result; mock-theta, odd-zeta constants, radial-limit records not a supplied map to lepton masses); Latest fold records (earlier 40/40 optimization reports historical without original runs); Open source recovery (named companion "The Key That Flips", original T3-T5 scripts, large murmuration run, fixed-twist rank-fit scripts not recovered). Closing quote: "retain each definition, its representation, its reversal, and the observable it can determine. At the center of this paper, quadratic balance leaves a cubic record free; the primitive triangle records it. That is a proved information-completion statement and a concrete starting point for a physical selection model."
77:- References [1]-[15]: [1] J. N. Beasley, Non-normality is connection energy, and its opposite, v11, 20 Oct 2026 (+ Gravity Ledger Ed. 6; IQGT v7.3.1; VOTKP v2.9; Beyond the Event Horizon v10; Operator-First Atlas continuous v2); [2] Foot hep-ph/9402242; [3] Brannen 2006; [4] Koide-Yamashita arXiv:1805.09533; [5] PDG 2026 tau 1776.93 +/- 0.09; [6] Sutherland 18.783 L7; [7] Sutherland Sato-Tate arXiv:1604.01256; [8] LMFDB 32.a3, 37.a1, 389.a1; [9] Conrad partial Euler products; [10] He-Lee-Oliver-Pozdnyakov murmurations arXiv:2204.10140; Sawin-Sutherland arXiv:2504.12295; [11] Bass 1992; [12] Kotani-Sunada; [13] Hossenfelder arXiv:2006.14175; [14] Watrous; [15] KCBS + Cabello-Severini-Winter.
```

### corpus-notes/nonnormality.md (42061 B, 135 lines): NOT read in full; all black-hole lines verbatim

```
HEADER: # Non-normality is connection energy, and its opposite (Jeromie Beasley)
98:- Orbit: radial wobble generator [[0,1],[-kappa^2,0]], square -kappa^2 I; at ISCO kappa=0, nonzero nilpotent between oscillation and growth [33 = "Beyond the Event Horizon: What Survives at a Rigidity Wall, v10"] [STRUCTURAL COMPARISON]; no damping so nothing to optimise.
124:- References [1]-[38] (Horn-Johnson; Singer-Wu; Kobayashi-Nomizu; Bandeira-Singer-Spielman; Hansen-Ghrist; O. Ahmad; Desai-Rao; Cvetkovic et al; Zaslavsky; Reff; Lange-Liu-Peyerimhoff-Post; Bilu-Linial; [13] J. Beasley, The Ledger Outlives the Metric, Gravity Ledger Edition 6, 24 Sept 2026, Thm 8 and Cor 9; Gleason; Hossenfelder arXiv:2006.14175; Klyachko-Can-Binicioglu-Shumovsky; Lovasz; Cabello-Severini-Winter; Ihara; Hashimoto; Bass; Sunada; Stark-Terras; Kotani-Sunada; Terras; Watanabe-Fukumizu; Hammer-Mattman-Sands-Valliers; Kenyon; LPS; MSS; Landau-Lifshitz; Burke-Lewis-Overton; [33] Beasley, Beyond the Event Horizon: What Survives at a Rigidity Wall, v10; Koide 1982/83; Foot; Brannen 2006; PDG 2024).
127:- Born reading and (5) require unitary transport. Weak points explicitly flagged: Koide link is [CONDITIONAL] (generator Z, minimal shift, fixed resource, asymptotic objective and a law moving h are assumptions; e3/Brannen delta unselected). "Equal halves mean a wall only for real traceless 2x2 blocks." ISCO is [STRUCTURAL COMPARISON]. Ring minimisation, odd floor, bow-tie (shared-edge value numerical in v12) not in Lean.
133:v15 ledger (author Jeromie Beasley, dated 21 Oct 2026 in header; counts 274 rows: IN 193, FIXED 33, LEFT OUT 48; session rows IN 122 / FIXED 12 / LEFT OUT 38; GitHub rows IN 71 / FIXED 21 / LEFT OUT 10). v15 pages cited up to p.90 (references p.89); App B pp.63-67; App C gates G16-G75 in check_ce15_census.py. Selected v15 sections named in the ledger: §1 (1)-(4) pp.2-3, worked kernel sizes 4,2,1 (tree, one loop with distinct holonomy, two non-commuting loops) G19; §2 sector flip p.6, (10), (12)-(14), relaxation flow Phi = (1/2)||[K,K*]||^2 = 4E-, dK/dt = -2[[K,K*],K], dual flow K' = -2[C,K*] conserves ||K||^2 (G23); §3 Born theorem A rho = Tr(PR)/k for >=3 outcomes, binary loophole f(s) = s + eps sin 2 pi s, oblique no-go, H1-H5; §4 boost (21), projector tangents Gamma = 2P0 - I maps q>0 to q<0 (27), QFI F_Q = 4g(V,V)/k, Jakob-Bergou concurrence duality (23); §5 one site (32) MJ + JM = (Tr M)J; §6 near-coherence bound dist(D, ker L_U)^2 <= E(D)/lambda_+ (36); §7 bowtie 6-3sqrt3 vs shared edge 4-2sqrt2 (39), ring floor nonsmooth at d=pi slopes +/-4 sin(pi/N); §8 companion & wall (52),(53), Phi_inf = 4/c^2, Bass pencil, unitary eigenvalue |l-1|^2+|l+1|^2 = 4, UV = omega VU: |omega-1|^2 = 4 sin^2(pi/d); §9 Frobenius edge books (4p - a_p^2, a_p^2), budget 4p, Thm 4 (62), switching share 1/2 - 1/pi, Table 1, murmuration runs (10,293 classes, correlation -0.985; rank-2 profile rerun -0.048/-0.151), Thm 6 J_mu = bI + mu N; §10 spinning key (75),(76), normal envelope, Koide Compton form Q = Sum lambda^{-1}/(Sum lambda^{-1/2})^2 credited to Caleigh Fisher (@Kali_fissure), (83)-(85), four-body transport, coplanar wall chart artefact; §11 Smith/Cayley (100), offset boundary sets sign (96), fermion Gamma = 1 - 2C = tanh(omega/2T_H) (93), Majorana half-mode, Kitaev chain, synchronising rule (4 of 6 predictions), compression defect (106), signed Lapse; §12 Penrose and the two books (Bunting-Masood-ul-Alam doubling, fold normal form, no link to Orch-OR/CCC/Penrose process); §13 Open p.58 (proposed tests named not run; twist-killing; EP orbit item; Proposition H); Acknowledgements.
```

### corpus-notes/nonnormality_v15.md (13645 B, 129 lines): NOT read in full; all black-hole lines verbatim

```
HEADER: # Non-Normality Is Connection Energy, v15 (read note)
6:Read in full: main tex (551 lines), sec_primes, sec_arith, sec_wall, sec_records, sec_penrose, lean_v15, lean_table_v15, refs bibitems, README, ZENODO description, RECONCILIATION_LEDGER_v15 (285 lines), MERGE_LEDGER_v14. The _full.tex inlined copy was only grepped/sampled (duplicates the section files). Scripts/outputs skimmed for kill conditions and verdicts only.
39:- Smith disk / Cayley w=(z-1)/(z+1): positive ratio on real diameter at w = tanh(tau/2); Gamma_p = w for two point counts. Reactive loads on circle: kappa/y = -tan(theta/2) gives Gamma = e^{i theta}. Matched load z=1 gives Gamma=0 (horizon). Schur-Cayley: Z_b = W*LW, I - S*S = 4 (WV)* Herm L (WV). Signed lapse lambda = (rho-a)/(rho+a) = tanh(1/2 log(rho/a)); rho -> a^2/rho (reflection/inversion) negates it. Hyperbolic metric as optical metric n=1/y with Snell first integral.
103:- Moment horizon: two hidden channels share a kernel exactly when moments agree for n < q1+q2.
106:## 7. Penrose section
125:- v12: sections 1-10, appendices A-C, equations to ~(42). v15 adds: relaxation flow; Born scope H1-H5; graph-prime recurrence/Bass pencil; arithmetic (Frobenius) edge; records section; hidden-channel memory; Penrose; common clock; Smith/Cayley and peel coordinate.
```

nonnormality_v15.md section 7 in full (lines 106-113):
```
     1	## 7. Penrose section
     2	- Bunting-Masood-ul-Alam doubling = the pair of books of one scalar edge: (1+lambda)psi/2 = 1 and (1-lambda)psi/2 = a/rho; inversion = sign flip. Otherwise graded structural comparison.
     3	
     4	## 8. Other results
     5	- Odd loops: C^2 floor (N/2)(1-cos(pi/N)); pentagon KCBS sqrt5 > 2; triangle total 1.
     6	- Ring: (24) floors; ring max (N/2)(1+cos(delta/N)); corner slopes +-4 sin(pi/N) at d=pi.
     7	- Bow tie 6-3sqrt3 ~ 0.804. Shared edge 4-2sqrt2 ~ 1.172 (Zenodo description says analytic proof; tex still says "computed by direct optimisation").
     8	- Born scope (H1-H5), oblique no-go, dimension-two compatibility. Overlap identity k - Tr(PR) = 1/2 Tr((P-R)^2) (Gravity Ledger Thm 8/Cor 9); Mathlib PR #43951.
```

### corpus-notes/neutrinos.md (27038 B, 88 lines): NOT read in full; all black-hole lines verbatim

```
HEADER: # When the Neutrinos Leave: Decoupling History and the Threshold for Primordial Black Hole Formation (Jeromie Beasley)
1:# When the Neutrinos Leave: Decoupling History and the Threshold for Primordial Black Hole Formation (Jeromie Beasley)
28:- Code [McCcode] unchanged except one copied file where decoupling exponent n in kappa = H(eps_dec/eps)^n is an input. Pure radiation, R_nu = 0.409, N = 400 cells, N_mu = 32 angle bins, eps_0 = 0.1, as in his Table II. Reproduction run at delta = 0.5109, n=3, eps_dec = 2 forms a black hole, inside his bracket (0.51074, 0.51109) [measured; B.4]. Steep history: kappa/H capped at 5e5 (stiffness his eps_dec=8 runs reach at eps_0); deviations from isotropy of relative order H/kappa <= 2e-6 (his estimate for switch to transport [Sec. III]).
37:2. Sharp wall and rate ratios: two-moment EP crossed at eps_EP = 0.811 eps_dec^{3/4} for k r_m = 2 as a wall, or parameter-free escape fractions k/(k+kappa), e^{-kappa/k}, 1 - e^{-k/kappa}. Averaged over two windows, two weightings, two scales = 32 combinations. Wall variants miss by 0.14 or more. With window starting at horizon entry every combination misses by 0.17 or more. One combination, e^{-kappa/k} averaged from eps_0, within 0.077; "selected from 32, it is not counted. On Test B, which it never saw, it predicts 0.513 against 0.317 [computed; measured]."
45:- Prediction table (all n=6 values computed in one file dated 13:47 on 30 October, before any n=6 run, not refitted): C eps_dec=1: predicted 0.663, measured 0.648, miss 0.014, history-blind 0.683 (miss 0.035). B eps_dec=2: 0.246 / 0.317 / 0.071 / 0.431 (0.114). D eps_dec=3: 0.118 / 0.154 / 0.037 / ~0.30 (0.146). "Every miss of the memory form lies inside the kill line of 0.08 set before its run; the history-blind rule fails at eps_dec = 3 [measured]. At eps_dec = 2 and 3 the form falls below the measurement: it counts slightly too much of the early erasure. Test C was set where the two rules nearly agree, as a survival check; Test D was set where they separate." Natural next object: "A readout window set by the neutrino flux and the enclosed mass between first maximum and apparent horizon, as McCormick suggests [Sec. IV C]... It is untested." (Figs. 4, 5.)
63:- Closest analogue: bulk viscosity raises threshold roughly in proportion to strength in full NR [Yuwen]; free streaming a second dissipative channel with same sign. Papanikolaou: thresholds at horizon crossing for time-dependent EOS, delta_c following c_s^2 [Pap]. Escriva ties them to initial profile and curvature of compaction at peak [Esc]. "Test A is consistent with both: the neutrino clock is set early." 2026 thermal-history mass functions through nu decoupling and e+- annihilation treat neutrinos as part of the fluid [Gonin]; for supermassive seeds, mu-distortion bound leaves only heavy-tailed statistics [Dave], McCormick finds raised threshold costs factor 1.2-8 in abundance. "A search of the literature to October 2026 found no other work on thresholds with free-streaming components, on gradual kinetic decoupling in numerical relativity, or on how the threshold depends on when a collision rate switches off. Tests A-D are, as far as that search shows, the first such runs."
82:[McC] S. McCormick, Free-streaming neutrinos raise the threshold for PBH formation, preprint 2026, code/data Zenodo doi:10.5281/zenodo.23808375; [McCcode] github.com/quasilocal/PBH_neutrino_simulation; [CE] J. Beasley, Non-Normality Is Connection Energy (2026) Zenodo doi:10.5281/zenodo.22804072 (this is the v7 one-page record, not v15); [WB] Beasley, The Weight Between: What the present must keep, and what it costs to move it, v1.1; [OSL] Beasley, The Offset Speed Limit: Rate is weight, v1.1; [CSL] Beasley, Colour Selects the Leader, v1.1; [BH] Beasley, Beyond the Event Horizon: What Survives at a Rigidity Wall, edition 10.1; [Rom] Romatschke arXiv:1512.02641; [Hu] arXiv:2409.05131; [Yuwen] arXiv:2606.26532; [Pap] arXiv:2205.07748; [Esc] arXiv:2504.05814; [Gonin] arXiv:2608.22240; [Dave] arXiv:2607.03138; [MB] Ma-Bertschinger ApJ 455, 7 (1995).
```

### corpus-notes/weight_between.md (46002 B, 120 lines): NOT read in full; all black-hole lines verbatim

```
HEADER: # The Weight Between — full read
62:- One map: m-p over m+p = tanh((1/2) log(m/p)), tanh a ⊕ tanh b = tanh(a+b) (eq 9). Proved separately: votkp-lean@adf018f Smith.lean smith_identity (Smith-chart reflection (z-1)/(z+1)); dirac-time-lean@e8a4c86 FrictionMetric.lean two_level_population_gap (e^x/(e^x+e^-x) - e^-x/(e^x+e^-x) = tanh x, real x; reading x = βΔ/2 only from docstring); offset-lean@3207ecb OffsetLean/Headline.lean asymmetry_eq_tanh_half_offset, OperatorFirst/OffsetEndpoint.lean asymmetry_eq_tanh; fourth pinned copy nonnormality-connection-energy-lean@a66bfe4 Admissible.lean tanh_half_log_odds; fifth (fermion record 1-2C = tanh(x/2)) event-horizon-lean EventHorizon/Edition10.lean tanh_half_log, fermion_smith [UNCONFIRMED LEAN]. "In colour terms, (9) is the two-book balance of a population; in thermal terms it is the occupation weight that multiplies every rung of the friction ladder (Section 7). That these are 'the same colour' is [ANALOGY / OPEN]; that they are the same function is not." Absent from Mathlib (grep v4.35.0).
107:1. Finish Thm 7 in Lean: (a) matrix-log trace derivative C size>=2; (b) general equality case both directions; (c) generator H = iλ[T,P]; (d) define W = -(C-C^2)^-1 from 0<C<I; (e) scalar identification with P_dot = αT; then public repo + human review. 2. Formalise intervention family Nu and the time-domain memory kernel (1). 3. Prove gap-power ladder in one public Lean statement naming every rung; pin event-horizon-lean and confirm its two UNCONFIRMED names; merge tanh copies (Mathlib AI-use rules). 4. Identify rung +1 of the ladder, if it has a reading. 5. Test the friction reading: is ζ = c tanh(βΔ/2) α_0 a fluctuation–dissipation identity in a microscopic bath model, or a coincidence of two-level algebra? 6. Music: compare pitch-only, melodic-context, cycle-context, joint predictors on annotated passages held out by source family; ask trained listeners what "richer" means. 7. Rule 30: the branchial-fate test and whether family multiplicity predicts survival.
115:B Lean repos and commits (all under GitHub dicipler-pixel): dirac-time-lean e8a4c86240c777f3c999d7f0582799827ea75042; offset-lean 3207ecb7a2d4a4f812f21257d986a54d12a3d299; light-ledger-lean 885794f58355a6b035b52f0b0d851f3f1933692f; upg-lean 79cd730e3189c9109c490ced75ebec126dc8fd67; iqgt-grassmannian-lean 5dec0804848af62dc3c910da83ce3e90e2466b73; gravity-ledger-lean 885932f0afc78daf4daad993ba475b24812b39f1; relational-atlas-lean 172175e410ce7cbbf277c84d95e5d625d8cf7586; emergent-transport-lean e334cac842421d5abdc99947e611e5e4c68ebe6e; elemental-peeling-lean f7ed2ede6dc6a1f676b757f39a032cafa1d6c610; votkp-lean adf018fbe3267507f5166d151fac352d0c097092; what-tesla-saw-lean c9f197dca60c94410d174adfef0acb89e718e4ba; added nonnormality-connection-energy-lean a66bfe4 (main 23 Oct, CI passed). event-horizon-lean (earlier audit commit 7dd6164) names UNCONFIRMED. Private iqgt-core-lean (6160eb4) not cited. Local OffsetSpeedBound.lean and OffsetSpeedBoundGeneral.lean compiled Lean v4.35.0 / Mathlib v4.35.0 (commit 56a005855ea1), not in any repository.
```

### corpus-notes/what_russell_saw.md (13236 B, 35 lines): NOT read in full; all black-hole lines verbatim

```
HEADER: # What Russell Saw - "Walter Russell's universe of paired motion, read against a century of physics"
5:Smith disk / reflection coefficient / peel: none. Offset / log-odds: none. Census: none (only the "ledger" of 104/282/199 claim entries). Non-normality / exceptional points: none. Walls: horizon / photon sphere / ISCO only in GR sense. Memory: none. The paper contains none of his operator-first apparatus. Common-thread language only: "pairs of opposites summing to a constant", "two stores of one quantity", "phase portrait", "mutual centre", "ledger" (claim ledger).
22:5: "All orbits are spiral" (UO p.118). Russell speed law v ~ a^-1, period T ~ a^2. Mechanical similarity U ~ r^n: tau = lambda^{1-n/2}, speed ~ lambda^{n/2}; Newton n=-1 gives T ~ a^{3/2}, v ~ a^{-1/2}; Russell's v ~ a^-1 needs n = -2 and then tau ~ lambda^2 = his period law ("they describe a world whose potential falls as 1/r^2 and whose force falls as 1/r^3"). Binet u'' + u = (mk/L^2) u^{p-2}; slope of RHS at circle = p-2; delta'' + (3-p) delta = 0; apsidal angle psi = pi / sqrt(3-p) [printed pi / sqrt(p^3 ... ) as garbled extraction "π/√(3−p)" expected; text extraction shows "p3 − p"]; p=2 -> pi; p=3 -> infinite (Cotes spirals 1722). Numerical: at p=2.9 measured 10.01 (1% nudge), 9.937 (0.2%) vs formula 9.935 (script check_mixer_v2). GR: u'' + u = M/L^2 + 3 M u^2 (G=c=1); nudge delta'' + (1 - 6 M u0) delta = 0; p_eff = 2 + 6GM/(c^2 r); Mercury p_eff - 2 = 1.6e-7 (43 arcsec/century); p_eff = 3 exactly at r = 6GM/c^2 (ISCO): 8.9 km for the Sun's mass, 12.4 km for 1.4 solar masses. "Russell's orbital laws describe the ground six gravitational radii from a collapsed star." Russell "They are all conic sections" right for inverse-square; "A parabolic or hyperbolic orbit is impossible in this universe" wrong ('Oumuamua e=1.20, Borisov e=3.36).
23:6 (table, check_horizon_v1): ISCO p_eff = 3 at 6GM/c^2; photon sphere 3GM/c^2 (released 1e-4 GM/c^2 outside: 1.83 turns); Kerr ergosphere spin 0.9, r=1.9 GM/c^2: slowest allowed turning +0.030 c^3/GM; accretion efficiency 5.7% (no spin), 42.3% (maximal spin) [formula 1-(1-2GM/c^2 r)/sqrt(1-3GM/c^2 r) at 6GM/c^2]; clock rate at 2.001 GM/c^2: 0.022; Hawking T = hbar c^3/(8 pi G M kB): 6.2e-8 K for one solar mass. One line he got backwards: minimum generative pressure at equator/maximum at pole (UO p.106) vs disk at equator and jets along poles.
33:B Lean: file lean/RussellRebuild.lean, 25 theorems against mathlib (Lean 4.34.1, mathlib commit d13f23b7), no sorry or added axioms; axiom audit: each uses only propext, Classical.choice, Quot.sound; row_lengths uses only propext; valence_palindrome none. Theorem names listed: pendulum_energy_constant, similarity_time_exponent, russell_speed_forces_inverse_cube, period_exponents, binet_slope_at_circle, restoring_coefficients, gr_effective_steepness, isco_is_russell, ueff_square, ueff_min, no_spin_no_valley, neutral_point, barycentre_balance, earth_moon_barycentre_inside, maxwell_stress_along_across, ampere_sign, ampere_definition, rankine_total_deficit, rankine_90, tide_two_bulges, mass_loss_drift, inspiral_step, cone_ellipse_iff, row_lengths, valence_palindrome (25 names). "The certificates cover the mathematics. The physics enters as stated hypotheses and measured numerals."
34:D scripts: check_dance_v1, check_mixer_v2, check_scale_v1, check_horizon_v1, check_charts_v1, check_seed_stress_v1 (magnetic virial identity int x.(J x B) d^3x = int B^2/2 d^3x), make_figures_v1, run_all.py. A pre-declared failure condition failed and is reported: "Mars's flattening, 0.00589, lies above the uniform-body value 5/4 q = 0.00574."
```

### corpus-notes/colour_v12.md (73575 B, 190 lines): NOT read in full; all black-hole lines verbatim

```
HEADER: # Colour Selects the Leader, v1.2 (2 Nov 2026) - FULL READ of Jeromie Beasley's text
133:- (16) balance map: (m-p)/(m+p) = tanh((1/2) log(m/p)); tanh a ⊕ tanh b = tanh(a+b), u ⊕ v = (u+v)/(1+uv). "It is the balance of two books (E_+ - E_-)/(E_+ + E_-), the Smith-chart reflection (z-1)/(z+1), the two-level population gap tanh(beta Delta/2), the occupation asymmetry 1 - 2 nu, and the derivative of the ledger curve of Section 5." "Stacked films compose by the ⊕ law." [Lean votkp-lean smith_identity; dirac-time-lean two_level_population_gap; offset-lean asymmetry_eq_tanh_half_offset; nonnormality-connection-energy-lean tanh_half_log_odds]. (No section on a Smith disk or 3D Smith volume; the Smith chart appears only here and in App 15.5/17. The ledger records black-hole/Smith-chart/photon-ring material as left out of the paper on purpose.)
139:- THEOREM 3 (predictive quotient) [Derived; Lean VOTKP.Observer.horizon, same_future_iff, unseen_invariant, quotient_dim, summary_kernel, quotient_is_summary, closes_iff for discrete powers; matrix-exponential bridge is Derived here]: state v in V (dim d), vdot = Lv, read by R. Two states give same readings at every future time iff they agree on the first d readings R, RL, ..., RL^{d-1}. Invisible-forever subspace N_inf = ∩_{k<d} ker(RL^k): L-invariant, lies in ker R; a linear reading F determining every future reading must have ker F ⊆ N_inf, so rank F >= dim V / N_inf. Present reading closes on itself (N_inf = ker R) iff L ker R ⊆ ker R iff RL = AR for some A. Proof via Cayley-Hamilton. Gray reservoirs R=(1,1), L = diag(-gamma_f,-gamma_s): ker R not invariant when rates differ, "so brightness alone does not close and the second reading, the slope, is needed." "For a linear colour record, RL = AR is exactly the surviving-matches condition of Theorem 1."
141:- Several permitted continuations (v1.2-added): linear actions L_a; predictive kernel ∩_w ker(R L_w) over all ordered words; "A direction hidden by repeated use of each action separately can be exposed by a mixed word."; finite-dimension chain stabilizes by word length dim(ker R). [Lean VOTKP.MultiObserver.same_future_iff, quotient_is_summary, finite_horizon, separate_actions_miss_mixed_word]. A physical palette application "still needs its state/action/readout dictionary."
165:- App 17 Lean: VOTKP snapshot commit ca7815cf9913b829748b6a0dacdb849c82715202, Lean/Mathlib 4.34.1: 180 named theorems, 19 modules, 20 false controls, standard-axiom audit, CI run 41386330135 passed - "repository coverage, not a claim that every statement in this paper is formalized." Modules mapped: VOTKP.Colour; VOTKP.Observer (discrete powers only; matrix-exponential argument written derivation); VOTKP.Memory (memory_kernel, moment_horizon, transfer_silence; assumes differentiable solutions); VOTKP.Witnesses; VOTKP.MultiObserver. ThetaCensus.lean (17 declarations) separate, not in the 180 count; "The colour arguments have no theta-dependent premise." Historical table (v1.1 pins, The Weight Between v2.3, 24 Oct): nonnormality-connection-energy-lean (normSq_one_sub_add_normSq_one_add; 153 declarations v15), votkp-lean (shared_records, later_outcomes; smith_identity), elemental-peeling-lean, light-ledger-lean, dirac-time-lean, offset-lean, upg-lean (trace_memoryAtZero_eq_couplingEnergy), gravity-ledger-lean (overlap_exact), what-tesla-saw-lean (coupled_octave_iff), dirac-time-lean predictive quotient (future_decided_by_first_dim_steps, closes_iff, minimal_predictor_dimension) and coherent core (expectation_Z, present_populations_equal, later_readout). "The offset speed limit (Appendix 15.4) has a scalar case in a local Lean build not yet in a public repository; the general equality case is open in Lean."
```

### corpus-notes/directional_transport.md (21112 B, 47 lines): NOT read in full; all black-hole lines verbatim

```
HEADER: # Directional Transport Geometry of Admissible Channels: Subspace Persistence, Refraction, and Directional Support Sets
5:Smith disk / reflection coeff / peel: none. Offset / log-odds: none (the "ledger" Z_lambda = -zeta'(0) = Tr log is the closest: "global memory ledger"; shift eta in Dunford trace-log). Census: none explicit (a "participation ratio" DC ~ 8 and "locked participation index"). Non-normality: central (tripartite A + D0 + eps E; pseudospectral bulges; Kreiss; Theorem 3 EP condition). Exceptional points / walls: YES - Theorem 2 (collinear horizon semi-simple; "Jordan-block defectiveness and true Exceptional Points (EPs) are structurally confined to the lower-dimensional multi-body collision boundaries"), Theorem 3 (EP iff eigenvalue coalescence and [K,K^T] != 0), Sec 3.7 / E.6 binary-wall block-triangular refraction, rigidity interfaces, refraction law R1 sin^2 theta1 = R2 sin^2 theta2. Memory: YES, heavily - "trace memory" C(Delta), "projector memory", "global memory ledger Z_lambda", "emergent memory and backreaction ... no external memory kernel is required; any backreaction arises internally from the coupling between projector history and the eps E sector."
11:- Pipeline: A(w) -> N -> P -> C(Delta), kappa -> refraction -> Gr(k,n). Weighted transport operator A^(w)(x) = J(x)^T P_H(x) T^(w)(x) J(x) (P_H horizontal projector of mechanical connection; J Jacobian). N(x) dominant eigenvector; P = N N^T.
21:- Theorem 2 (Diagonalizability of Collinear Horizon, w3 = 0): across generic interior (w1,w2>0) A_intr block-diagonalizes into 2x2 collinear and 3x3 transverse blocks, "strictly semi-simple and fully diagonalizable"; Jordan defectiveness / true EPs "structurally confined to the lower-dimensional multi-body collision boundaries where w2 -> 0 or w1 -> 0 concurrently". Proof is a short argument (regularize via inverse inertial boundary scale; geometric = algebraic multiplicity pointwise).
24:- 3.7 Binary-hypersurface refraction: K_boundary = [[A_par, E_shear],[0, 2 lambda]], lambda -> +inf (inertial squeeze); normal velocity high-frequency oscillator with |v_perp| ~ 1/sqrt(2 lambda); wavefront flattens parallel to the hypersurface. E.6 repeats with A_intr (dW_par, dW_perp) block-triangular; "True Jordan-block defectiveness remains confined to lower-dimensional multi-collision strata, while the generic collinear horizon stays semi-simple."
27:- 4.4 UV/IR limits: UV (omega -> inf) eps ~ kappa^{-1/2} spikes; Dunford shift eta >~ sqrt(eps) and contour distance eta >= 2 eps <Omega_Pi>/sqrt(det g_Pi) [as printed], ledger finite, "channel dimension locks onto the unyielding floor of dim_H(K) >= 3.00"; "1.0 THz Horizon" structural breakdown (Hall plateaus persist to ~33 GHz, smearing 69-100 GHz, breakdown at 1.0 THz; Fig 5 "UV Hard Test" shows <Omega_Pi> growth vs residual trace memory floor). IR (omega -> 0): u -> 0, delta B_n -> 0, eps E -> 0, H_N(eps) -> H0 = A [printed], Omega_Pi == 0, g_ij -> delta_ij, "needle ceases its dancing".
```

### corpus-notes/v21.md (238746 B, 2096 lines): NOT read in full; all black-hole lines verbatim

```
HEADER: \---  
384:\*\*Real films (THIN-01, pre-registered) \[Exact\].\*\* The model treats a film as a homogeneous layer with bulk constants. Real gold films near 3–10 nm can be discontinuous at percolation \[Cited: Hövel, Gompf & Dressel 2010\], and even continuous ultrathin films carry interface layers \[Cited: Kossoy et al. 2015\].  
721:\- its noble gas, peeled, runs along a horizontal line;  
732:\!\[\*\*Figure 17.\*\* Two cuts of one onion. (a) The onion of Figure 8 to $Z=56$: each row's neutral atoms take their first steps on the diagonal edge, and its noble gas peeled runs along a horizontal line; dotted lines join equal electron counts. (b) Second differences of $\\ln IE$ along the two cuts, with every NIST grade (post-hoc); the gold triangles mark the four all-measured points of the registered test.\](fig\_two\_cuts.png)  
1273:\!\[\*\*Figure 26.\*\* The nuclear onion. Left: every measured nucleus peeled by neutron pairs, aligned by the neutrons remaining; colour is τ\_N = 2 artanh Γ\_N. The six magic numbers are the six ridges. Right: the peel step at N = 20, 28, 32 and 34 as a function of Z; each closure is strongest near where it was discovered and fades away from it.\](fig\_nuclear\_onion.png)  
1553:1\. \*\*Records are vectors.\*\* On atoms, shape carries family and level carries response, and inside each step the Thomas–Fermi envelope carries the scale of the middle of the peel while the residual carries the family. On knots, topology, loading and geometry vary independently. On polymers, one topology change moves viscosity but not absorption.  
```

### corpus-notes/offset.md (80957 B, 184 lines): NOT read in full; all black-hole lines verbatim

```
HEADER: # OFFSET — "The Offset Belongs to the Boundary: Boundary log-odds and the cosmological-constant problem" (Jeromie N. Beasley; cover byline "Jeromie N. Beasley"), September 2026 · Complete edition v31
157:- 152 distinct named statements incl. supporting lemmas: 53 original finite/Fock core, 30 OffsetEndpoint, 8 EndpointProgress, 28 transfer/compression/band modules, 20 LaurentBoundary, 13 BoundaryModel; root module's 14 foundational statements separate; "Counts describe formal declarations, not independent discoveries." Bundles: lean/ (139-statement baseline), lean_boundary/ (concrete matrix add-on; recompiles 20 inherited). Modules with SHA-256 listed: Offset, OffsetFock, OffsetEndpoint, EndpointProgress, EndpointTransfer, FiniteCovariance, BandObstruction, LaurentBoundary (lean), BoundaryModel (lean_boundary). Baseline revision 10efd332626e1f861fc74082b7f67dd135712e5e; tested PR merge reference 33a4d0a02486c553445852e5c9969852fad881c3: core run 34041636876, endpoint 34041636870, moduli 34041636884 all passed ("not a claim that the branch was merged"). Add-on lean_boundary/verification/report.json: 13 new + 20 inherited, per-statement axiom audits, independent leanchecker; two false controls fail with goal False; LaurentBoundary copy SHA-256 f0d07124...; Lean 4.33.0, mathlib db584cd6d46c92f209a44c0f1c829460d327499d; axiom allowlist propext, Classical.choice, Quot.sound; direct add-on run used disclosed launcher compatibility shim (no proof logic modified). "This manuscript build checks source hashes, theorem counts, and the supplied execution evidence. It does not claim a fresh local Lean compilation or a new combined GitHub workflow."
```

### corpus-notes/iqgt.md (36472 B, 132 lines): NOT read in full; all black-hole lines verbatim

```
HEADER: # IQGT / Grassmannian paper, v7.3 (FULL READ)
106:Tensor needs "no local eigenvector gauge, no Berry connection and no coordinate chart on parameter space". Inequality's control is relative. Friction connected to irreversibility "through an explicit, tested bath weight rather than an assumed proportionality". Refraction: "Snell-type law ... invites more interpretation than it can carry. The law is Clairaut's relation ... its content lies in the identification of the index". Rigidity pattern compared (structure only, "nothing in this paper depends on that manuscript") to unrefereed OpenAI 2026a Penrose-inequality preprint. OPEN list: non-abelian sector needs Stiefel bundle lift; transport through a fold needs kernel vector field/Ehresmann connection (no general rule); whether index law survives when gap closes exactly (projector undefined) "not determined here"; mean Uhlmann curvature dipole not evaluated spectrally; full nonlinear orbital magnetisation tensor not derived; frame-free readout-tail direction.
```

### corpus-notes/matter_at_a_scale.md (18734 B, 54 lines): NOT read in full; all black-hole lines verbatim

```
HEADER: # "Matter at a Scale: Zero, Span, and the Logarithm Between Them" — v5 (FULL READ)
38:- 4.2 Three scale-free ratios [H]: (i) relative departure from normality Δ²_F/‖K‖²_F (dilation-invariant; gas at rest zero; star = matter held off the normal manifold by throughput; black hole = pinned at a wall that never answers); (ii) census occupancy against geometric cap; (iii) which records cross walls: "Metric-protected amplitude dies at a rigidity wall as 1/√2λ; integer-protected phase crosses." "What a piece of matter is, durably, is the set of its integer records — windings, signatures, channel counts". Closing: "Matter has no absolute size and needs none: it is a gap, a boundary, a held distance from equilibrium, and a set of integers ... with a single logarithm, Eq. (2), keeping honest account of the one place scale sneaks back in."
```

### corpus-notes/colour_selects_leader.md (21169 B, 63 lines): NOT read in full; all black-hole lines verbatim

```
HEADER: # Colour Selects the Leader — PARTIAL READ (the paper itself is not on Drive)
57:"prior-art searches (split, contraction pairing, cycle identity); PhenoCam fit; calibrated gray decay; recorded instruments; Bisognano-Wichmann; branchial-fate test; Lean general equality case; Elizabeth's own mixer and the six deep-dive calls (his)." Left out on purpose: Rule 30 Problem 1 proofs and Problem 2 (grey); Koide/primes/Penrose/opposite connection energy (21 Oct ledger); Jason's Galilean-variance tests; black-hole/Smith-chart/photon-ring material (light paper); formula pictures and videos; six-bin metamer toy and hypersurface index example.
```

### corpus-notes/price_of_a_direction_v4.md (5309 B, 16 lines): NOT read in full; all black-hole lines verbatim

```
HEADER: # price_of_a_direction_v4 (fileId 10EYgIrdm8sslP7iNFt-mzqwm0drSf5Ok) — READ IN FULL (19 pp: all prose, claims table, all scripts A.1-A.5, Appendix B, refs; nothing truncated)
15:## Scripts: KAKEYA-CENSUS-01, -02, KAKEYA-BULGE-01, -02R, FIG-KAK-02 (all listed, "# SCRIPT:" headers). Companion refs [16] FOFT v2.2, [17] Directional Transport Geometry, [18] suns v1.4, [19] Beyond the Event Horizon v2.
```

### corpus-notes/screen_prog_04.md (11542 B, 44 lines): NOT read in full; all black-hole lines verbatim

```
HEADER: # SCREEN-PROG-04 (28 Oct 2026) - "Electron Screening in Metal Deuterides: Measurement Systematics, Evolving Target State, and an Experimental Arbitration Protocol"
31:7.5 Performance table (combined ratio error / two equal independent yields, local sigma(Ue) eV): 1%: 2.94/4.16; 2%: 5.88/8.31; 3%: 8.82/12.47; 5%: 14.69/20.78; 10%: 29.39/41.56. 240 eV contrast / 7.23 ~ 33; 100 eV ~ 14 ("local contrast-to-error ratios... not discovery significances").
```

### corpus-notes/twotrees.md (52783 B, 149 lines): NOT read in full; all black-hole lines verbatim

```
HEADER: # Two Trees in One Ball: Norm Ladders, Peel Steps and Knot Boosts (Jeromie Beasley)
78:- Honesty notes (his): relator loop closes for every representation by definition, "the closing checks the numbers, it is not a discovery". Content is Thm 6.2 and the real-curve boost lengths. Free-vs-one-relator contrast "is true by algebra; Figure 5 illustrates it rather than proving a deeper link." "A knot is what a tree of boosts looks like when its steps are tied back on themselves."
```

### 2.3.8 Reader's pointers for the verbatim blocks above (no judgement; where to look)

- False positives of the regex (no black-hole content): v21.md l.384, 721, 732, 1273, 1553 ("horizontal", "discontinuous", "discovered", "viscosity"); screen_prog_04.md l.31 ("discovery"); twotrees.md l.78 ("discovery"); offset.md l.157 ("discoveries"); koide.md l.48, l.69; votkp_v29.md l.172, 237 ("viscosity", "discovered"). v21.md is a markdown copy of a VOTKP v2.1 paper text (escaped markdown); it has no black-hole passage by this regex.
- Version labels of the black-hole paper met in these notes: "Beyond the Event Horizon v2 21860392" (dirac_gigantefermion.md l.72, Zenodo ID list); "'Beyond the Event Horizon: Operator Decoupling at the Rigidity Wall', v2" (suns_v1_5.md l.17); "Beyond the Event Horizon v2" (price_of_a_direction_v4.md l.15); "Beyond the Event Horizon: What Survives at a Rigidity Wall, v10" (nonnormality.md l.98, l.124 ref [33]; koide.md l.77); "Beyond the Event Horizon: What Survives at a Rigidity Wall, edition 10.1" (neutrinos.md l.82, ref [BH] of When the Neutrinos Leave). bh.md l.2 says "no v10_1 found by title search" on Drive.
- Statements where a companion paper limits or withdraws a black-hole claim, in the source's words: gravity.md l.107 "Beyond the Event Horizon ('Horizon and record questions. Physical horizon/projector wall equivalence is not retained.')"; dirac_gigantefermion.md l.59 "17.2 Schwarzschild local-symbol control: horizon with positive projector metric and open gap; older shape-space/Kerr 'boundary isomorphism' claims not retained as theorems."; l.77 Master Claim Lineage v1.0 (25 Sep 2026): items marked FALSE include "projector metric = spacetime metric; horizon = metric wall"; item marked OPEN: "black-hole no-hair shape-space isomorphism"; l.87 "This paper retracts as universal: UPG inverse-smallest-eigenvalue refraction index, and the 'boundary isomorphism'/horizon claims"; governing principle l.77: "A later omission does not kill an earlier branch. Only an actual mathematical contradiction or external factual contradiction earns FALSE."; koide.md l.76 "Black-hole and Penrose (signed-lapse fold, Schur complements, ISCO marginal generator; 'A horizon need not be a projector wall; static spacetime twist zero does not establish operator normality')".
- Lean cross-reference: weight_between.md l.62 lists a "fifth (fermion record 1-2C = tanh(x/2)) event-horizon-lean EventHorizon/Edition10.lean tanh_half_log, fermion_smith [UNCONFIRMED LEAN]"; l.115 "event-horizon-lean (earlier audit commit 7dd6164) names UNCONFIRMED." (Both names do exist in the file as read in Part 1: `tanh_half_log` Edition10.lean l.108, `fermion_smith` l.183, at HEAD 7dd6164. I record the presence of the names only.)
- matter_at_a_scale.md l.38 ([H]): "black hole = pinned at a wall that never answers".
- colour_selects_leader.md l.57 and colour_v12.md l.133: "black-hole/Smith-chart/photon-ring material" recorded as left out of the colour paper on purpose ("(light paper)").
- neutrinos.md: the neutrino paper is a separate paper ("When the Neutrinos Leave: Decoupling History and the Threshold for Primordial Black Hole Formation"); its black-hole content is primordial black hole formation thresholds in McCormick's code; it cites the BH paper as [BH] "edition 10.1".
- what_russell_saw.md l.22-23: ISCO p_eff = 3 at 6GM/c^2 "8.9 km for the Sun's mass, 12.4 km for 1.4 solar masses"; table (check_horizon_v1): photon sphere 3GM/c^2; Kerr ergosphere; accretion efficiency 5.7% / 42.3%; Hawking T 6.2e-8 K for one solar mass. Lean theorem names incl. `gr_effective_steepness`, `isco_is_russell` (in what-russell-saw-lean, not read here).

## 2.4 matter-disk/leads/

Files: LEADS_identities_v1.md (33,731 B, 329 lines), LEADS_matter_down_v1.md (33,932 B, 283 lines), identity_checks_01.py (6,831 B), identity_checks_02.py (1,410 B).

leads/LEADS_identities_v1.md black-hole lines (regex also includes event.horizon|fermion.record):
```
21:| Light / Black Hole | Schur–Cayley S_b = (Z_b−1)(Z_b+1)⁻¹; Smith reflection (z−1)/(z+1) |
90:- Fermion record (BH §7): Γ = tanh(ħω/2kT) = 1/√2 at ħω/kT = 2 ln(1+√2) = 1.7627. A thermal fermion mode at that temperature sits on the Schottky line. Gas §8 (ideal helium): the same value for the stage ratio n_q/n_{q+1}.
```

leads/LEADS_matter_down_v1.md black-hole lines (regex also includes event.horizon|fermion.record):
```
```

leads/identity_checks_01.py black-hole lines (regex also includes event.horizon|fermion.record):
```
```

leads/identity_checks_02.py black-hole lines (regex also includes event.horizon|fermion.record):
```
```

LEADS_identities_v1.md context, lines 1-9 and 78-96 verbatim (the lead that uses the BH fermion record):
```
# Leads v1: exact identities that join Jeromie Beasley's papers

Lead-finder output, 3 Nov 2026. Read-only on the corpus; nothing in his files was edited. Check scripts: `identity_checks_01.py`, `identity_checks_02.py` in this folder (numpy/scipy, a few seconds). All numbers below are from those runs.

Grades: **[A]** proven by algebra (I wrote the steps out; a script also agrees), **[N]** numerically checked only, **[C]** conjectured (the check is named but not passed or not run).

## Coverage, stated plainly

The corpus-notes folder is 1.35 MB. I read these in full: README, CLAIMS, `offset_speed_limit.md`, `offset_speed_limit_v1_1.md`, `cone.md`, `upg.md`, `twotrees.md`, `nonnormality.md`, `ladder.md`, and `weight_between.md` through section 3.5, `light.md` and `gravity.md` for their abstracts and the sections quoted below, and `bh.md` sections 4 and 5. The rest (`atlas_v7`, `votkp_v29`, `v21`, `iqgt`, `koide`, `neutrinos`, `matter_at_a_scale`, `dirac_gigantefermion`, `present_keeps`, `what_transport_keeps`, and the small ones) I searched by keyword but did not read line by line. Every lead below rests on his notes of the papers, not on the PDFs. Where an identity needs a paper equation I did not see, it is marked.
...
L77+1: 
L77+2: **(b) Algebra.** Let the step be the ratio of the two rails (the natural peel step for a rail pair): z = λ₊/λ₋ = λ₊². Then by L2:
L77+3: - Γ(z) = sin ψ, and K = 1/sin²ψ = 1/Γ(z)². So K = 2 ⇔ Γ(z)² = ½ ⇔ z = 3+2√2 ⇔ ψ = 45°.
L77+4: - Same Γ as a census level: Γ = tanh(τ/2) with τ = ln z: cosh τ = (1+Γ²)/(1−Γ²) = 3, i.e. cosh²(τ/2) = 2; occupation ν = (1−1/√2)/2 = sin²(π/8) = 0.14645; 4λ = 1 − Γ² = ½, λ = ⅛ (half the maximum ¼).
L77+5: - τ = 2 ln(1+√2) = arccosh 3 = 1.76275 = Two Trees' ρ = 1.7627471740.
L77+6: - Per-level inverse census S_ν = 1/λ = 4cosh²(τ/2) = 4/(1−Γ²); at the line S_ν = 8.
L77+7: 
L77+8: **(c) Check.** ν = 0.146446609406726 = sin²(π/8) to 1e−16; cosh τ = 3.0000000; z = 5.828427; sech(ln z) = 1/3; λ = 0.125. `identity_checks_01.py`.
L77+9: 
L77+10: **(d) Borrow.**
L77+11: - Matter-disk: the exit law has the same constant as the Schottky line, so Two Trees' proof (planes touch at infinity at equality, boundary circles of angular radius π/4) is the geometric picture of "K = 2": eigenvectors at 45°. Two Trees' v2 report gives cap radius α with cos α = Γ; here cos φ = ρ, the same role.
L77+12: - Caution, stated once: the matter-disk exit is a statement about a band average ⟨K⟩, the Schottky line is a statement about one step. The per-k identity K(k) = 2 ⇔ Γ_k² = ½ is exact; whether ⟨K⟩ = 2 is also a Schottky statement for some ping-pong action is **[C]**.
L77+13: - Fermion record (BH §7): Γ = tanh(ħω/2kT) = 1/√2 at ħω/kT = 2 ln(1+√2) = 1.7627. A thermal fermion mode at that temperature sits on the Schottky line. Gas §8 (ideal helium): the same value for the stage ratio n_q/n_{q+1}.
L77+14: 
L77+15: ---
L77+16: 
L77+17: ## L4. The same transcendental number 4 ln(1+√2) = 3.5254943481 appears in the rails paper and in Two Trees **[A][N]**
L77+18: 
L77+19: **(a) Sides.**
```
READ STATUS of leads/: LEADS_identities_v1.md lines 1-30 and 78-96 read; the rest NOT read. LEADS_matter_down_v1.md, identity_checks_01.py, identity_checks_02.py NOT read (no black-hole term by regex). The leads file itself says it read 'bh.md sections 4 and 5' only and that 'Every lead below rests on his notes of the papers, not on the PDFs.'

## 2.5 matter-disk/paper/ and scripts/ : hit files (black-hole passages read in full with their sections; rest of each file NOT read)

Files: paper/matter_then_on_down_v1.tex (24,093 B), _v2.tex (26,209 B), _v3.tex (41,919 B), paper/v4/p1_size_ledger.tex (24,350 B), p2_chart_atom_gas_nucleus.tex (23,838 B), p3_records.tex (36,616 B), paper/review_v3_full_review.html (284,217 B; tags stripped to 35,006 chars of text), scripts/fig04_reflection_chart.py (4,393 B), scripts/s14_v4_coverage.py (8,727 B).

Version comparison for the black-hole content (only that content was compared):
- v1, v2, v3 (.tex): the ONLY black-hole item is a reference-list entry: "J.~Beasley, \emph{Beyond the Event Horizon}, edition 10 (2026)." (v1 l.191; v2 l.205; v3 l.207). (The regex hit at l.77/77/79 is "disconnected", a false positive.)
- v4 (three part files) ADDS whole black-hole-derived sections that v1-v3 do not hold:
  - p1_size_ledger.tex l.71 "One block, many jobs": "The same positive square of an off-diagonal block appears wherever a space is cut \grade{T}\grade{S} (\emph{Beyond the Event Horizon}, ed.~10, §5.4). For an orthogonal projector P=[[C,B],[B†,C']], C−C²=BB† and Tr(C²−C)=−Tr BB† ≤ 0: the boundary census of Light Keeps the Ledger and the negative quadratic form of the gravity edition. For a Hamiltonian H=[[A,B],[B†,D]], the memory kernel K(t)=Be^{−iDt}B† has footprint K(0)=BB† ..., and PH²P−(PHP)²=PHQHP=BB† is exit and return. ... These are the same functional on different operators and different cuts. They are not one quantity".
  - p2_chart_atom_gas_nucleus.tex section "The disk as a reflection chart" (l.26-70), reproduced verbatim below.
  - p3_records.tex l.224: "The black-hole paper sorts walls by what the spectrum does along a physical path (ed.~10, §8). At a \emph{spectral} wall a real pair turns complex: the unfolding coordinate is real on one side and imaginary on the other, and the Jordan block at the wall is a property of the operator in every frame. At a \emph{geometric} wall the spectrum stays real on both sides, and the Jordan block lives only in a folded chart \grade{S}. Opened matter's exit is spectral: on σ_x+iγσ_z the eigenvalues ±√(1−γ²) turn imaginary at γ=1, the left–right overlap collapses as √(1−γ²), and the Petermann factor is (1−γ²)^{−1}. At such a point a single eigenprojector grows like |A_{12}|/gap while the pair projector, its contour trace (count 2) and the trace-log ledger stay exact (ed.~10 §4; in its two-mode ringdown model the single excitation factors reach 391 with nearly opposite phases while their sum stays fixed) \grade{V}\grade{S}."
  - p3_records.tex l.235 (end): "The black-hole paper's orientation sign, invisible to the Gram observer and kept by the oriented cover, is one such case \grade{S}." (inside a passage graded \grade{H} for "the broader reading, that across the author's programme what survives a wall's involution is the even part and what is lost is the odd part").
  - p3_records.tex claims table l.256-257: "Schur–Cayley boundary: passive inside, matched load at centre & \grade{T}; horizon \grade{S}"; "Hawking fermion record τ=ħω/k_BT_H, Γ=tanh(ħω/2k_BT_H) & \grade{T}\grade{V}; reading \grade{H}".
  - p3_records.tex references l.288 "J.~Beasley, \emph{Beyond the Event Horizon: What Survives at a Rigidity Wall}, edition 10 (2026)."; l.299 "K.~S.~Thorne, R.~H.~Price and D.~A.~Macdonald (eds.), \emph{Black Holes: The Membrane Paradigm}, Yale (1986)."
  Grade letters used in v4: \grade{T}, \grade{V}, \grade{H}, \grade{S} (the README legend defines [T] proved, [V] verified numerically with controls, [C] conjecture, [H] reading; \grade{S} is not defined in the lines I read; in context it marks structural/sourced items, e.g. "\grade{S} (sourced; ed.~10 §5.2)").

p2_chart_atom_gas_nucleus.tex lines 26-70 verbatim:
```
\section{The disk as a reflection chart}\label{sec:reflection}
The Smith chart was built for reflection. The black-hole paper of the author (\emph{Beyond the Event Horizon}, ed.~10, §§5, 7, 8) places three boundary readings on the same disk, and each lends the matter coordinate a meaning it did not have from occupations alone. They are different normalised impedances on one chart; their relative positions are not a physical identification (Figure~\ref{fig:reflection}).

\subsection{A step in spectral gap reflects with the peel coordinate}
On a projector family with pullback metric $g=a(y)\,dx^2+b(y)\,dy^2$ ($a=g_\parallel$, $b=g_\perp$), a wave $\psi=e^{ipx}u(y)$ of the Laplace–Beltrami operator at frequency $\omega$ conserves the Clairaut constant $C=a\sin^2\theta$ and carries the admittance $Y=\omega\sqrt{a-C}=\omega\sqrt{g_\parallel}\cos\theta$. At a step $(a_1,b_1)\to(a_2,b_2)$,
\begin{equation}
\Gamma=\frac{\sqrt{a_1-C}-\sqrt{a_2-C}}{\sqrt{a_1-C}+\sqrt{a_2-C}},\qquad \sqrt{a_2-C}\to i\sqrt{C-a_2}\ \text{when}\ C>a_2,
\label{eq:step}
\end{equation}
so $g_\perp$ drops out, and $|\Gamma|=1$ exactly beyond the geodesic turning point $a_2=C$ \grade{T} (ed.~10, eqs.~47–49). At normal incidence $C=0$ and $\Gamma=\tanh(\tfrac12\ln\sqrt{a_1/a_2})$. When the index is set by the spectral gap at fixed coupling, as on the IQGT family $\Sigma=\cos3x\,\sigma_x+\sin3x\,\sigma_y+2.5y\,\sigma_z$ where $g_\parallel\Delta^2=9$ \grade{T} (\emph{Intrinsic QGT}, §8.6), $\sqrt{g_\parallel}\propto1/\Delta$ and
\begin{equation}
\Gamma=\frac{\Delta_2-\Delta_1}{\Delta_2+\Delta_1}=\tanh\Big(\tfrac12\ln\frac{\Delta_2}{\Delta_1}\Big):
\label{eq:gapstep}
\end{equation}
the peel coordinate, now as the reflection of a wave at a change of gap \grade{T}. Script \texttt{s13} solves the matching problem directly (continuity of $u$ and $u'$ for $u''+\omega^2n^2u=0$, $n=1/\Delta$) on 200 random steps and recovers \eqref{eq:gapstep} to $3.3\times10^{-16}$ \grade{V}. The black-hole paper's own sharp-step matching reproduces \eqref{eq:step} to $1.7\times10^{-11}$ on 400 random steps, 89 beyond the turning point. Its preregistered Richardson gate for smooth steps failed (residual $7.4\times10^{-4}$ against $10^{-5}$), and the first-order limit was then tested directly with its own condition. A polar stratum is a perfect mirror there, $|r|=1$ to $2\times10^{-16}$ \grade{V}\grade{S}.

So the atom's peel and a gap step are one formula: successive removal thresholds are ratios of gaps measured from the continuum, and $\Gamma$ is what a wave crossing from one gap to the next would see reflected.

\subsection{The centre is a matched load; the inside is passive}
\begin{proposition}[Schur–Cayley boundary; ed.~10, Prop.~13]\label{prop:schurcayley}
Let $L$ be passive, $\mathrm{Herm}\,L=\tfrac12(L+L^*)\ge0$, split into boundary $b$ and interior $i$ with $L_{ii}$ invertible. The boundary impedance $Z_b=L_{bb}-L_{bi}L_{ii}^{-1}L_{ib}=W^*LW$, $W=\begin{pmatrix}I\\-L_{ii}^{-1}L_{ib}\end{pmatrix}$, has $\mathrm{Herm}\,Z_b=W^*(\mathrm{Herm}\,L)W\ge0$, and $S_b=(Z_b-I)(Z_b+I)^{-1}$ satisfies
\[
I-S_b^*S_b=4(WV_b)^*(\mathrm{Herm}\,L)(WV_b)\ge0,\qquad V_b=(Z_b+I)^{-1},
\]
so $\|S_b\|\le1$, with $S_b=0$ exactly for the matched load $Z_b=I$. No normality is assumed. \grade{T}
\end{proposition}
\begin{proof}
$W^*LW=L_{bb}-L_{bi}L_{ii}^{-1}L_{ib}-L_{bi}L_{ii}^{-1}L_{ib}+L_{bi}L_{ii}^{-1}L_{ii}L_{ii}^{-1}L_{ib}=Z_b$, and taking Hermitian parts commutes with the congruence. With $S_b=(Z_b-I)V_b$, $I-S_b^*S_b=V_b^*[(Z_b+I)^*(Z_b+I)-(Z_b-I)^*(Z_b-I)]V_b=2V_b^*(Z_b+Z_b^*)V_b=4V_b^*(\mathrm{Herm}\,Z_b)V_b$, and substitute $\mathrm{Herm}\,Z_b$.
\end{proof}
The inside of the disk is the passive boundary; the centre is the load that returns nothing; the rim is total reflection. Through the membrane paradigm the stretched horizon has surface resistivity $4\pi$ in Gaussian units, the impedance of empty space $\mu_0c=376.73\,\Omega$, so normalised by the vacuum impedance the horizon surface is $Z_b=1$, $S_b=0$: the centre of the chart \grade{S} (sourced; ed.~10 §5.2). The match belongs to the horizon surface, not to the hole seen from far away: the potential barrier outside reflects long-wavelength radiation. Matter's unbound nuclei (§\ref{sec:nucleus}) lie outside the rim, beyond what any passive boundary can reach.

\subsection{The outside record of a Hawking fermion pair}
\begin{proposition}[the fermion record; ed.~10, eqs.~38–39]\label{prop:hawking}
For a Dirac pair $\cos r|00\rangle+e^{i\phi}\sin r|11\rangle$ with $\tan^2r=e^{-\hbar\omega/k_BT_H}$, the outside occupation is $C=\sin^2r$, and
\[
\tau=\log\frac{\det(I-C)}{\det C}=\log\frac{P(\mathrm{empty})}{P(\mathrm{full})}=\frac{\hbar\omega}{k_BT_H},\qquad \Gamma=1-2C=\tanh\frac{\hbar\omega}{2k_BT_H},
\]
for every pair phase $\phi$; for independent modes $\tau=\sum_k\hbar\omega_k/k_BT_H$. \grade{T}
\end{proposition}
\begin{proof}
The partial trace over the inside mode removes the coherence and leaves occupation $\sin^2r$, independent of $\phi$. Then $(1-C)/C=\cot^2r=e^{\hbar\omega/k_BT_H}$; take logs and apply Proposition~\ref{prop:bridge}.
\end{proof}
Script \texttt{s13} takes the partial trace at six frequencies and seven phases and recovers both identities to $5\times10^{-16}$ \grade{V}. The identity is the logarithm of a Boltzmann factor; what it adds is the reading. The outside record is the matter offset of §\ref{sec:ledger}: it sits at $\Gamma=\tanh(\hbar\omega/2k_BT_H)$, reaches the centre where the matched horizon sits only at zero frequency, and particle–hole exchange $C\mapsto1-C$ sends $\Gamma\mapsto-\Gamma$. It fixes only the ratio $\omega/T_H$, never an absolute scale, which is §\ref{sec:size}'s zero and span again; and the phase $\phi$ that decides what the pair does next never enters it, which is Proposition~\ref{prop:joint}'s lesson at a horizon \grade{H}\grade{S}. The construction needs $0<C<I$, so it holds for fermion modes; the bosonic pair has no full state.

\begin{figure}[!htbp]\centering
```
(Figure caption, p2 l.72: "Left: one disk carrying three boundary readings: the matched load at the centre, total reflection on the rim, the Hawking fermion record tanh(ħω/2k_BT_H) (red, labelled by ħω/k_BT_H) and the reflection at a step in spectral gap tanh(½ ln Δ2/Δ1) (green, labelled by Δ2/Δ1). Right: the single curve Γ=tanh(ε/2) with four readings of the rapidity marked at their real values.")
Numbers held here: s13 recovers gap step to 3.3e-16 on 200 random steps; s13 partial trace "to 5×10⁻¹⁶" (bh.md l.92 gives "to 3e-16" for the paper's own check V10-PUSH and BH-OFFSET-15 "to 6e-16": these are different scripts).

scripts/fig04_reflection_chart.py black-hole lines: l.2 "# Left: one Smith disk carrying the boundary readings that Beyond the Event Horizon (ed. 10) places on it:"; l.14 annotation "centre: matched load / Z_b=I, S_b=0 returns nothing / (horizon surface resistance = Z_0)"; l.17 label "fermion record of a Hawking pair: Γ=tanh(ħω/2k_BT_H)"; l.40 "Hawking fermion record: ε=ħω/k_BT_H=1"; l.51 prints "Hawking points". Rest of script not read.
scripts/s14_v4_coverage.py l.62-65 (a coverage checklist of strings that must appear in the v4 paper): "# Beyond the Event Horizon ed. 10 bridges": ('bh','gap step'), ('bh','Clairaut step'), ('bh','Schur-Cayley'), ('bh','membrane resistivity','376.73'), ('bh','fermion record'), ('bh','off-diagonal block family','PHQHP'), ('bh','spectral vs geometric walls','Two kinds of wall'), ('bh','polar mirror','perfect mirror'), ('bh','ringdown 391','391'). Rest of script not read.
paper/review_v3_full_review.html: the only regex hit in its stripped text is the word "discovery" (false positive). No black-hole passage. Not otherwise read.


## 2.6 votkp-lean__claude_votkp-research-20261110/research/2026-11-10/ : the five hit files

No hit file exists under research/2026-11-11 of this branch (the hit list has none there).
NOTE ON THE HIT LISTS: the lists were built with a loose pattern. Several listed files hold no black-hole passage at all (the match was a substring such as "whole", "discovery", "hidden"). Where a full read found none, that is said.

### 2.6.1 records/READ_RECORD_06_NONNORMALITY_v15_PAPER_20261110_v1.md (21,636 B, 147 lines, READ IN FULL)

What it is: "Read record 06 — Non-Normality Is Connection Energy, and its opposite: the v15 PAPER (94 pages)". Source: Drive file "nonnormality_connection_energy_complete_v1 (1).pdf" (30 Oct 2026), "whose Part 1 is the 94 pages of v15 as published (Zenodo 23787997)". Header l.3: "**CORRECTED BY v16 (21-22 October): see READ_RECORD_07. Equal books is not the wall outside real traceless 2x2; the flow statement is now a theorem; 47 not 162 Koide preimages; two different coupling blocks B. Read 07 before using anything below.**"
Black-hole / four-body-wall passages (verbatim, with line):
- l.80: "Jordan block [[-b, mu],[0,-b]] grows transiently iff |mu| > 2b; critical damping sits at kappa = 2."
- l.82: "Orbit: [[0,1],[-kappa^2,0]] nilpotent at the ISCO (r = 6M, L^2 = 12M^2)."
- l.83: "Four-body transport: discriminant = 4q(T), a quadratic form with determinant 16 w1 w2 w3 >= 0; (81) normal iff trace-free parts of t and w parallel; at the coplanar wall the Gram-chart block is nilpotent but in the Bures metric the eigenprojector norm stays 1 and the wall is at FINITE distance arcsin x_0. (82) ||P_lambda|| g -> |c|; log det = 2 log lambda with no reference to eigenvectors."
- l.98: "Smith chart (99): Z_b = Schur complement; I - S_b* S_b = 4 (WV_b)*(Herm L)(WV_b). Positive ratio on the real diameter, w = tanh(tau/2); unit-modulus eigenvalue ON THE CIRCLE. Horizon = matched load at the centre; Sun's trapped modes on the circle. The half-plane map (z - i)/(z + i) and the disk map (z-1)/(z+1) must not be mixed."
- l.102-104 "## 12. Penrose and the two books": "Exact: on the isotropic Schwarzschild slice psi = 1 + a/rho, lambda = (1 - a/rho)/(1 + a/rho) = tanh((1/2) log(rho/a)); (107) (1 + lambda)psi/2 = 1, (1 - lambda)psi/2 = a/rho; the inversion rho -> a^2/rho swaps the sheets = the sign flip that swaps the books." "Structural: fold (108) ds^2 = dX^2/(4c^2 X) = d lambda^2/c^2, X = lambda^2. Reissner-Nordstrom r_+ r_- = Q^2, tau_+ = -tau_-. 'A Killing horizon has its kernel along the stratum, while the coplanar wall has it across.' Ring floors tie at d = pi with a corner."
- l.93: "(95) tau = log(det(I-C)/det C) = sum tau_nu_j. C - C^2 = BB*". l.91: "(93) fermion edge: d_i = 1 - nu, d_j = nu: E_- = (1 - 2 nu)^2, E_+ = 1, tau_nu = log((1-nu)/nu) = 2 artanh(1 - 2 nu)."
- l.129 (App C): "G10 single eigenprojector norm times gap tends to 2 at the wall while the pair projector and det stay."
- l.62: "Climb or swap: around one exceptional point eigenvalues swap in pairs; normal form [[0,1],[delta,0]] swaps after one loop, returns after two."
Everything else in the file is the non-normality paper's own content (two energies E_-/E_+, Born reading, sector flip, relaxation flow, graph primes, Frobenius edge, Koide, records) and a list "What v15 gives the vacuum-disk puzzle — read off the text, UNTESTED unless marked" (7 items).
Lean note l.121: "Appendix B: ... 163 declarations, 17 false controls. NOT formalised: equality case of (22), quarter turn (11), projector forms (25), odd floor (19), ring maximum (38), bow tie (39)."

### 2.6.2 records/READ_RECORD_07_CONNECTION_ENERGY_v16_CANDIDATE_AND_CORPUS_REVIEW_20261110_v1.md (8,049 B, 54 lines, READ IN FULL)

"Read record 07 — Connection Energy v16 candidate, its corrections to v15, and the Corpus Review. ... Record made 10 November 2026." Its own coverage statement (l.6-7) lists what it read and did not read.
BLACK-HOLE PASSAGE (l.42, under "Ledger rows LEFT OUT of v15 that touch the knot work"): "S42/S139: the refraction law R1 sin^2(theta1) = R2 sin^2(theta2) of the black-hole paper is UNDER AUDIT (the sin -> sin^2 step). IQGT's g_par sin^2(theta) = const with index sqrt(g_par) is Snell squared and is not that law; the two must not be merged."
Other passages touching the BH paper's objects:
- l.10 (v16 correction 1): "EQUAL BOOKS IS NOT THE WALL. ... Nilpotence at balance holds ONLY in the real traceless 2x2 family."
- l.19 (correction 7): "TWO DIFFERENT B's. For a spectral projector Pi: C - C^2 = B_Pi B_Pi*. The Hamiltonian block B_H = PHQ governs the compression defect PH^2P - (PHP)^2 and the hidden memory. Scaling H leaves Pi unchanged and scales B_H. Rank(B_H) does not bound the number of fractional occupations". (Compare bh.md l.81, BH ed.10 sec 5.4, which lists (a) C−C²=BB† and (c) PH²P−(PHP)²=BB† in one list, and matter-disk v4 p1 l.71 "They are not one quantity".)
- l.22 (correction 10): "Penrose: algebra kept; the fold is leading order only."
- l.31: "REVERSALS MUST BE NAMED, they are different operations: sector sign; transpose; complex conjugation; complement P -> 1 - P; sheet inversion; lambda -> -lambda; lambda -> 1/lambda; knot mirror".
- l.33: "Critical damping does not minimise finite-tolerance settling: 2% settling time 3.755841 at zeta = 0.8 against 5.833922 at zeta = 1."
- l.34: "Version history: the IQGT constant-one operator-norm subspace estimate needs stronger spectral-separation hypotheses ... Directional's old universal negative trace-log correction for a skew perturbation is false (correct: nonnegative)."
- l.38: "S155: the old claims for 8_19 = T(3,4) — Alexander polynomial '3 - 5t + 3t^2' and a hyperbolic volume — are FALSE (a torus knot has no hyperbolic volume)." (bh.md l.69 gives 8_19 Alexander t^6-t^5+t^3-t+1 and "no volume".)
- l.46: "T3 climb or swap: with generic gains all moving Hashimoto eigenvalues lie in ONE monodromy orbit; swaps are typical, climbs (cycles of length >= 3) a minority".

### 2.6.3 records/READ_RECORD_08_VOTKP_v2_0_20261110_v1.md (6,806 B, 37 lines, READ IN FULL)

"Read record 08 — VOTKP v2.0 (6 October 2026), read in full". NO black-hole or horizon passage in this file. Items that overlap BH ed.10 objects: l.7 "5.5 transfer silence iff B D^j C = 0 for j < q, sharp" (the "finite silence certificate" of bh.md l.82); l.18 "A reduction that discards has an associator: (x*y)*z - x*(y*z) = P[x(I-P)(yz) - (I-P)(xy)z]" (bh.md l.93 eq 40); l.12 "Thm 8.1 Gamma_k = tanh(tau_k/2)"; l.11 film/Smith composition.

### 2.6.4 equation-file-entries/EQUATION_FILE_ENTRY_20261110_open_question_tests_v1.md (2,233 B, 25 lines, READ IN FULL)

"Entries for '00 — RTOE Master Index and Proof Ledger' — 10 November 2026 (second set)". Five entries A-E on knots (silent double walls, never-turning knots, vacuum bowl, dielectrics, torus roots) with statuses "FAILED-DIVERTED", "PARTLY", "COMPUTED". NO black-hole or horizon passage.

### 2.6.5 round5/READ_RECORD_11_YANG_MILLS_LEAN_20261110_v1.md (38,982 B, 220 lines): NOT read in full

Byte-identical (cmp) to github/yang-mills-lean/research/window_wall_2026_11_10/READ_RECORD_11_YANG_MILLS_LEAN_20261110_v1.md. A tight search (black hole, horizon, Hawking, Schwarzschild, Kerr, Penrose, event) finds NO black-hole passage. The only near hits are "hypersurface" (l.67, l.71: "Jeromie's own draft (what_the_hypersurface_keeps.md, 8 Sept): four instances (UPG winding, offset paper Tr K_A with Theorem 10, FOFT Catalan G vs ledger pi^2/6, Kakeya GL2(Z) orbit)...") and "whole" (l.118, 202, 203). Lines 67, 71, 118, 181, 202, 203 read; the rest not read.


## 2.7 votkp-lean__claude_sm-ball-20261111/research/2026-11-12-november-gather/ : STORED OUTPUTS OF THE BLACK-HOLE CHECK SCRIPTS

README.md of the gather (read in full): "# November folder gather, 12 November 2026. Scripts, outputs and Lean files taken from the zips and loose files of the November Drive folder that were not byte-for-byte on any repository, kept in their original folders under `recovered_only_on_drive/`. `RECOVERED_FILES_LEDGER_20261112.csv` lists every recovered file with its checksum, its `# SCRIPT:` name, and either its repository location or 'ONLY ON DRIVE'. Nothing here was rerun in this pass. Private third-party material is not included."

FOUND BEYOND THE HIT LIST: the folder recovered_only_on_drive/neutrino/unz/reading_notes/review/bh_agent/ holds 28 stored log files of black-hole check scripts (fresh_checks/: 20 logs; v10_fresh_checks/: 8 logs; 27,294 bytes in all). Only two of them (bh_isco_cube_17.py.log, bh_petrov_06.py.log) were on the hit list. ALL 28 WERE READ IN FULL and are reproduced verbatim below (lines longer than 400-500 characters are cut at that width in this copy: only bh_core_02 C7 eigenvalue rows and the isco warning are affected by wrapping, none by cutting, as far as displayed). These are logs written by a reviewing agent's re-runs ("fresh checks") found inside a neutrino reading-notes zip on Drive; the scripts themselves (.py) are NOT in this folder, only the .log outputs. I ran nothing.

Also in the same review folder (names only, not read): audit_archive_completion.py, audit_research_record_coverage.py, build_reading_packet.py, extract_nonnormality.py, extract_research_record.py, qa_learning_record.py, colour_checks/leader_fresh.log, iqgt_agent/, votkp_agent/.

### 2.7.1 review/archive_replay/blackhole_independent_checks.py (2,257 B, 56 lines, READ IN FULL, not run)

Docstring: "Independent checks of formulas printed in Beasley BH v2 (August 2026). This is a new audit script, not an edit to the author's originals."
What it asserts symbolically (sympy): (1) with G = [[(1/w1+1/w2)/8, (1/w1-1/w2)/(8√3)],[same, (1/w1+1/w2+4/w3)/24]], w3 = 1-w1-w2, and A = [[t1+t2-(t1-t2)(w1-w2), ((t1-t2)-(t1+t2-2t3)(w1-w2))/√3],[√3(t1-t2)w3, 2t3+w3(t1+t2-2t3)]]: `G*A - A.T*G == 0` ("physical_adjoint_residual"); (2) at w1=1/2, w2=3/10, t=(2,1,13/10) the Euclidean commutator A A^T − A^T A is nonzero; (3) radial metric along weights [a(1-q), (1-a)(1-q), q]: Σ (dw/dq)²/(4w) = 1/(4q(1-q)); 'finite_boundary_path_length': 'arcsin(sqrt(q0)); 0 < q0 < 1'; (4) oscillator position v0 sin(ωt)/ω; (5) at w1=7/10, w2=3/10 (w3=0), t=(2,1,13/10): A − (13/5)I is nonzero with square zero ("jordan_nilpotent_square"). 'scope': 'Formula checks only; no black-hole simulation or empirical gravity validation.' Output path named: analysis/sun_blackholes/blackhole_independent_checks.json (that JSON is not in this folder).
NOTE: the block A in this script (labelled "BH v2 (August 2026)") is entry-for-entry the same as `block` in event-horizon-lean Basic.lean and as Thm 3 in bh.md l.40 (edition 10).

### 2.7.2 review/archive_replay/check_retention_model.py (2,369 B, 44 lines, READ IN FULL, not run)

Retention model L = [[-(k+a), b],[a, -b]]; asserts transfer function T(z) = k(z+b)/(z²+(k+a+b)z+kb), T(0)=1, mean dwell (1+a/b)/k, T(b=0) = k/(z+k+a); six symbolic assertions; plot title "The return channel separates delayed release from permanent retention"; figure note "Conditional two-stock model; a = κ = 1. No astronomical data fitted."; output folder name 'output/sun_blackholes'. (Matches bh.md l.82 eq 36 and App B Laplace form.)

### 2.7.3 review/extract_archive.py (1,901 B, 34 lines, READ IN FULL, not run)

An HTML-to-text splitter. Black-hole relevance: its input path is "/workspace/scratch/4ea79d7a2197/upload/BLACK_HOLE_OLD_CHATS_AND_MATH_20261014(1).html" (a file name: "BLACK_HOLE_OLD_CHATS_AND_MATH_20261014"); it writes curated.txt, detail_NNN.txt and manifest.json under review/archive_parts (not present here).

### 2.7.4 matter/unz/Matter_Review_Sources_and_Checks/code/russell_controls.py (1,018 B, 12 lines, READ IN FULL, not run)

l.10: `out['schwarzschild_circular_r5']={'E2':(1-2/5)**2/(1-3/5),'L2_over_M2':5**2/(5-3),'radial_epicyclic_ratio_squared':1-6/5,'exact_circular_exists':True,'stable':False}` (Schwarzschild circular orbit at r=5: epicyclic ratio squared 1−6/5 = −1/5, unstable). l.11: 'P1_vs_thermal_origin': P1_reflection (2/π−1/√3)/(2/π+1/√3) vs 'tanh_thermal_at_zero': 0.

### 2.7.5 bh_agent/fresh_checks/ : 20 logs, verbatim

--- bh_bell_11.py.log (1132 B)
```
PASS E1 outside half is exactly thermal and blind to the pair phase off-diagonal 0.0e+00, phase change 3.5e-18
   r=0.1: CHSH = 2.0385848200  formula 2 sqrt(1+tanh(2r)^2) = 2.0385848200
   r=0.3: CHSH = 2.2701737708  formula 2 sqrt(1+tanh(2r)^2) = 2.2701737708
   r=0.7: CHSH = 2.6712151100  formula 2 sqrt(1+tanh(2r)^2) = 2.6712151100
   r=1.2: CHSH = 2.8054348865  formula 2 sqrt(1+tanh(2r)^2) = 2.8054348865
PASS E2 CHSH above 2 at every squeezing, matching the formula 
   omega/T_H =  0.5: squeezing r = 1.0423, CHSH = 2.785688
   omega/T_H =    1: squeezing r = 0.7034, CHSH = 2.673161
   omega/T_H =    2: squeezing r = 0.3860, CHSH = 2.383254
   omega/T_H =    5: squeezing r = 0.0823, CHSH = 2.026418
   omega/T_H =   10: squeezing r = 0.0067, CHSH = 2.000182
PASS E3 same local record, opposite futures imbalances +0.531186, -0.531186; sin(2gt) = 0.531186
PASS A1 anomaly flux equals the thermal flux (reproduction) flux = 1/(768*pi*M**2), T_H = 1/(8*pi*M)
PASS A2 associator and compression defect identities max error 1.1e-14
PASS A3 one-way books close only with the flux a x counted dx/dt = P - kappa x - a x
ALL PASS
```
--- bh_core_02.py.log (3050 B)
```
C1 matrix of A in E1..E5 (rows a, cols b), with w2 = 1 - w1 - w3:
   A[11] claim residual: 0
   A[22] claim residual: 0
   A[12] claim residual: 0
   A[21] claim residual: 0
   A[33] claim residual: 0
   A[44] claim residual: 0
   A[55] claim residual: 0
   shape-shear coupling entries: {0}  shear off-diagonal: {0}
C2 A21 at w3=0: 0
C3 min discriminant over 20000 interior samples: 2.886e-04
C4 (A11 - A22) at w3=0 = -2*(t1*w1 - t1 - t2*w1 + t3)  ; claim residual: 0
C5 joint point: w1-w2 = 0.3999999999999999, A12 at wall = 0.484974
C5a one loop in w3: swapped=True; two loops: returned=True
C5b discriminant winding per loop: 1.000000
C5c ledger log det(cI+A_pair): start 2.561913986149+0.000000000000j, after loop 2.561913986149-0.000000000000j, drift 1.13e-20, max step 3.64e-08
C5d Riesz pair projector: Tr = 2.000000000000; drift after loop 2.45e-18; half-loop differs by 6.66e-16 (moves, but returns)
C5e one loop in fold coordinate sigma3 (w3 = sigma3^2, encircles w3 twice): swapped=False
     sigma3=+0.02: eigenvalues [2.58174952 2.61841048], |cos angle between eigenvectors| = 0.997147
     sigma3=-0.02: eigenvalues [2.58174952 2.61841048], |cos angle between eigenvectors| = 0.997147
     gap / |sigma3| at sigma3 = 1e-2, 1e-3, 1e-4: [np.float64(1.83303464), np.float64(1.83303032), np.float64(1.83303028)]  (constant => gap linear in sigma3, square-root in w3)
C6 ledger table t=(2,1,1.3), w1-w2=0.4 (joint point):
   w3=  1e-02: pair [2.51032667 2.69367333], count 2, Tr P_pair 2.000000000000, ledger log det(1+A) 2.562330546753, ||P_single||*gap = 0.502311
   w3=  1e-03: pair [2.57121656 2.62918344], count 2, Tr P_pair 2.000000000000, ledger log det(1+A) 2.561913986149, ||P_single||*gap = 0.486706
   w3=  1e-04: pair [2.59085483 2.60918517], count 2, Tr P_pair 2.000000000000, ledger log det(1+A) 2.561872320543, ||P_single||*gap = 0.485147
   w3=  1e-06: pair [2.59908368 2.60091672], count 2, Tr P_pair 2.000000000000, ledger log det(1+A) 2.561867737220, ||P_single||*gap = 0.484976
   w3=  0e+00: pair [2.6 2.6], count 2, Tr P_pair 2.000000000000, ledger log det(1+A) 2.561867690924, ||P_single||*gap = nan
   |A12| at wall = 0.484974  (individual projector norm x gap -> |A12|)
C7 T=G^-1 at w3=1e-6: relative asymmetry of G-metric * A = 1.10e-22  (0 => self-adjoint => diagonalisable, no Jordan block)
     w3=1e-02: |eigenvalues| = [  4.2308   4.4211 101.6667 102.5641 198.0404]  (x w3: [0.0423 0.0442 1.0167 1.0256 1.9804])
     w3=1e-04: |eigenvalues| = [4.16730000e+00 4.33420000e+00 1.00016667e+04 1.00025006e+04
 1.99980004e+04]  (x w3: [4.0000e-04 4.0000e-04 1.0002e+00 1.0003e+00 1.9998e+00])
     w3=1e-06: |eigenvalues| = [4.16670000e+00 4.33330000e+00 1.00000167e+06 1.00000250e+06
 1.99999800e+06]  (x w3: [0. 0. 1. 1. 2.])
C8 t=0.1: ||exp(-Jt)|| = 0.789975240034, formula 0.789975240034
C8 t=1.0: ||exp(-Jt)|| = 0.094436407453, formula 0.094436407453
C8 t=3.0: ||exp(-Jt)|| = 0.000804747797, formula 0.000804747797
   growth ratio kappa = |mu|/b = 0.1865 (transient growth above 1 needs kappa > 2)
RESULT PASS
```
--- bh_drift_symmetrize_02.py.log (254 B)
```
exact drift: e^{-psi} L e^{psi} - [-Δ + (Q+|∇psi|^2-Δpsi)] = 0
rotational drift, first-order coefficients after conjugation: -2*y - 2*Derivative(psi(x, y), x) , 2*x - 2*Derivative(psi(x, y), y)
curl of (-y,x) = 2  (nonzero => no psi can remove both)
```
--- bh_ep_spinor_04.py.log (1030 B)
```
H1  Q(sigma3) = (sigma3**2 + 21)/25   Q(0) = 21/25   A12 = 7*sqrt(3)/25
    u.v - 2 sigma3^2 sqrt(Q) p = 0    residue of a at the wall = 1/2
H2  one w3 loop: M = [[0j, -1.0594j], [-0.9441j, 0j]]   M[0,1]*M[1,0] = (-1.0001-0j)
    M1^2 = [[(-1.0001-0j), -0j], [-0j, (-1.0001-0j)]]   two loops = [[(-1.0001-0j), -0j], [-0j, (-1.0001+0j)]]   four loops = [[(1.0002+0j), (-0+0j)], [(-0+0j), (1.0002-0j)]]
    one sigma3 loop = [[(-1.0001+0j), -0j], [-0j, (-1.0001-0j)]]   control (loop off the wall point) = [[(1-0j), 0j], [0j, (1+0j)]]
    off the joint condition t3=1.25: small sigma3 loop = [[(1+0j), (-0+0j)], [(-0+0j), (1+0j)]]
IV  B^2 = g1 g2: True   (B^2)^2 = -I: True   B^8 = I: True
TR  handed part Tr(P+[dP/dsigma3, dP/ddelta]) at t=(2,1,1.3), delta=0.4:
    sigma3=+-0.1: -27.257764 / +27.257764  sum 0.0e+00   symmetrised operator: 0.0e+00
    sigma3=+-0.2: -6.799872 / +6.799872  sum 0.0e+00   symmetrised operator: 2.5e-12
    sigma3=+-0.4: -1.685527 / +1.685527  sum 0.0e+00   symmetrised operator: 3.7e-13
RESULT PASS
```
--- bh_fold_parallel_01.py.log (408 B)
```
3D: h_NN * N  -> 4*m**2  (expect 4 m^2 = 1/(4 kappa^2), kappa=1/(4m))
3D: h_lam_lam = 16*m**2/(lam**2 - 1)**4 | at lam=0: 16*m**2  (expect kappa^-2 = 16 m^2)
3D: even in lam: True
3D: proper distance ~  4*lam*m + O(lam**2)
4D: h_NN * N -> m/2  (expect 1/(4 kappa^2) = m/2)
4D: h_lam_lam at 0 = 2*m  even: True
Bures: g_ww * w -> 1/4  ; in sigma: g_ss = 1
3D Kruskal Q(0) = sqrt(e): True
4D D*(0) = e/2: True
```
--- bh_isco_10.py.log (2579 B)
```
/workspace/scratch/4ea79d7a2197/review/bh_agent/fresh_checks/bh_isco_10.py:58: IntegrationWarning: The algorithm does not converge.  Roundoff error is detected
  in the extrapolation table.  It is assumed that the requested tolerance
  cannot be achieved, and that the returned result (if full_output = 1) is 
  the best which can be obtained.
  I,_=quad(g,rp,ra,limit=2000,epsabs=1e-12,epsrel=1e-12)
circular orbits: L^2 = r**2/(r - 3)
V''/2 on the circular family = (r - 6)/(r**3*(r - 3))
zeros of V''/2: [6]
PASS I1 simple sign change of V'' at r0 = 6 
   r0=12.00: V''/2 = +3.858025e-04  eigenvalues = 0.00000+0.01964j, 0.00000-0.01964j
   r0= 7.00: V''/2 = +7.288630e-04  eigenvalues = 0.00000+0.02700j, 0.00000-0.02700j
   r0= 6.10: V''/2 = +1.421179e-04  eigenvalues = 0.00000+0.01192j, 0.00000-0.01192j
   r0= 5.90: V''/2 = -1.678982e-04  eigenvalues = 0.01296, -0.01296
   r0= 5.00: V''/2 = -4.000000e-03  eigenvalues = 0.06325, -0.06325
   r0= 4.00: V''/2 = -3.125000e-02  eigenvalues = 0.17678, -0.17678
PASS I2 Jordan block at the ISCO [[0.0, 1.0], [-0.0, 0.0]]
   side outside d=0.01: gap/sqrt(d) = 0.078241  eigenvalues imaginary
   side inside  d=0.01: gap/sqrt(d) = 0.078896  eigenvalues real
   side outside d=0.001: gap/sqrt(d) = 0.078535  eigenvalues imaginary
   side inside  d=0.001: gap/sqrt(d) = 0.078600  eigenvalues real
   side outside d=0.0001: gap/sqrt(d) = 0.078564  eigenvalues imaginary
   side inside  d=0.0001: gap/sqrt(d) = 0.078571  eigenvalues real
   side outside d=1e-05: gap/sqrt(d) = 0.078567  eigenvalues imaginary
   side inside  d=1e-05: gap/sqrt(d) = 0.078568  eigenvalues real
PASS I3 square-root law, imaginary outside and real inside outside -> 0.078567, inside -> 0.078568
unstable circular orbit r_u = 4.697224, E_s^2 = 0.912543520, lam = 0.086060, Omega = 0.163414, Omega/lam = 1.898829
   dE=0.001: periapsis 5.126872, apoapsis 13.1100, azimuth per radial period 16.032207  (whirls ~ 2.552)
   dE=0.0001: periapsis 4.818807, apoapsis 13.4378, azimuth per radial period 20.332523  (whirls ~ 3.236)
   dE=1e-05: periapsis 4.734487, apoapsis 13.4704, azimuth per radial period 24.692552  (whirls ~ 3.930)
   dE=1e-06: periapsis 4.708895, apoapsis 13.4737, azimuth per radial period 29.063022  (whirls ~ 4.626)
   dE=1e-07: periapsis 4.700904, apoapsis 13.4740, azimuth per radial period 33.435010  (whirls ~ 5.321)
   dE=1e-08: periapsis 4.698387, apoapsis 13.4741, azimuth per radial period 37.807195  (whirls ~ 6.017)
PASS I4 whirl law: slope of azimuth vs ln(1/dE) equals Omega/lam slope 1.898773 vs Omega/lam 1.898829
ALL PASS
```
--- bh_isco_cube_17.py.log (542 B)
```
PASS C1 omega_r^2/Omega^2 = 1 - 6M/r, so p = 2 + 6M/r ratio = (r - 6)/r, p = 2 + 6/r, p(6M) = 3
PASS C2 R = -2 N''/N; linear lapse is flat R = -2*Derivative(N(x), (x, 2))/N(x)
PASS C2 Schwarzschild lapse = rho/(4M) near the horizon lapse ~ sqrt(2)/(2*sqrt(M)) sqrt(eps), rho ~ 2*sqrt(2)*sqrt(M) sqrt(eps)
PASS C3 extremal RN: proper distance diverges like -M log(eps); lapse ~ eps/M ~ exp(-rho/M) distance ~ M * log(1/eps)
PASS C4 Lamb: psi'' + (omega^2 - omega_ac^2)/c^2 psi = 0, omega_ac = c/2H; generator nilpotent at the cutoff 
ALL PASS
```
--- bh_knot_08.py.log (1005 B)
```
   N=  50: (2pi/N) log<4_1> = 2.734201   corrected = 2.031316   (Vol = 2.029883)
   N= 100: (2pi/N) log<4_1> = 2.447006   corrected = 2.030236   (Vol = 2.029883)
   N= 200: (2pi/N) log<4_1> = 2.271020   corrected = 2.029971   (Vol = 2.029883)
   N= 400: (2pi/N) log<4_1> = 2.166761   corrected = 2.029905   (Vol = 2.029883)
   N= 800: (2pi/N) log<4_1> = 2.106483   corrected = 2.029889   (Vol = 2.029883)
PASS K1 volume conjecture, figure-eight error at N=800: 5.45e-06
   N= 100: |F|/N^1.5 = 1.000976   arg F = -0.084103 pi
   N= 200: |F|/N^1.5 = 1.000102   arg F = -0.416976 pi
   N= 400: |F|/N^1.5 = 0.999879   arg F = +0.916449 pi
   N= 800: |F|/N^1.5 = 1.000012   arg F = -0.416757 pi
PASS K2 trefoil Kontsevich-Zagier growth N^{3/2} 0.999879 -> 1.000012
PASS K3 4_1 invariant is real (amphichiral) Im/Re = 1.0e-13
PASS K3 trefoil: mirror conjugates, invariant not real F = 729.4725-2733.0380j, mirror = 729.4725+2733.0380j
PASS K3 signatures sigma(4_1)=0, mirror 0; sigma(3_1)=-2, mirror 2
ALL PASS
```
--- bh_knot_14.py.log (1229 B)
```
PASS K1 formula checks: unknot, Jones N=2, trefoil vs Kontsevich-Zagier, h-stability unknot 3.1e-51; Jones 3_1 5.0e-51, 8_19 3.8e-51 (formula gives 8_19 in variable 1/q); |J|/|F| trefoil 3.8e-30; h-stability 6.7e-17
   N= 100: |J_N(8_19)|/N^1.5 = 2.061937   (2pi/N) log|J_N| = 0.479495   arg = +0.373410 pi
   N= 200: |J_N(8_19)|/N^1.5 = 2.914559   (2pi/N) log|J_N| = 0.283284   arg = -0.058535 pi
   N= 400: |J_N(8_19)|/N^1.5 = 0.085823   (2pi/N) log|J_N| = 0.102600   arg = -0.403829 pi
   N= 800: |J_N(8_19)|/N^1.5 = 0.085744   (2pi/N) log|J_N| = 0.059459   arg = +0.922825 pi
PASS K2 8_19 grows like N^{3/2}, no volume 0.085823 -> 0.085744
PASS K3 mirror conjugates 8_19; invariant not real J = 8104.6272-1507.4055j, mirror = 8104.6272+1507.4055j
PASS K4 Alexander, genus, Moser surgeries Delta = t**6 - t**5 + t**3 - t + 1, genus 3; Sigma(2,3,5), Sigma(2,3,7), Sigma(3,4,11), Sigma(3,4,13)
   period test: max|c(N)-c(N+P)| = {8: 2.828468, 12: 1.975873, 16: 0.000104}
   constants by N mod 16 (N = 640..655): [0.0858, 0.9713, 1.1181, 1.3073, 2.0616, 1.6707, 2.6926, 1.8859, 2.9142, 1.8858, 2.6925, 1.6706, 2.0615, 1.3072, 1.118, 0.9714]
PASS K5 the N^{3/2} constant of 8_19 has period 16 in N range 0.0858 to 2.9142
ALL PASS
```
--- bh_lift_05.py.log (1647 B)
```
PASS K1 g A - A^T g = 0 (5x5, symbolic) 
PASS K2 trial 0: g(W,H)=TrH/4 and A=P_W D_T 1.4e-17
PASS K2 trial 1: g(W,H)=TrH/4 and A=P_W D_T 0.0e+00
PASS K2 trial 2: g(W,H)=TrH/4 and A=P_W D_T 0.0e+00
PASS K3 closed form of B at s=0.3 0.0e+00
PASS K3 closed form of B at s=0.05 1.4e-17
PASS K3 closed form of B at s=-0.2 5.6e-17
PASS K3 B(0) = lambda* I on the joint condition [[2.6, -0.0], [-0.0, 2.6]]
PASS K4 complex s-loop, Gram frame holonomy -1.00012-0.00000i
PASS K4 complex s-loop, regular frame holonomy +1.00000+0.00000i
PASS K5 folded weight u2v2/(u.v), branch 0 0.500000000000
PASS K5 folded weight u2v2/(u.v), branch 1 0.500000000000
PASS K6 s=0.1: kinetic norm 1, Euclidean norm*gap kinetic 1.000000000000  Euclid 2.74  Euclid*gap 0.502311
PASS K6 s=0.01: kinetic norm 1, Euclidean norm*gap kinetic 1.000000000000  Euclid 26.47  Euclid*gap 0.485147
PASS K6 s=0.001: kinetic norm 1, Euclidean norm*gap kinetic 1.000000000000  Euclid 264.58  Euclid*gap 0.484976
   |A12| = 0.4849742261192857
PASS K7 real (s,t3) loop around the joint point, regular frame, eigenline orientation -1.000000000  (biorthogonal -1.000248)
PASS K7 real (s,t3) loop around the joint point, Gram frame, eigenline orientation +1.000000000  (biorthogonal +1.000140)
PASS K7 real loop not enclosing it, regular frame, eigenline orientation +1.000000000  (biorthogonal +1.000473)
PASS K7 real loop not enclosing it, Gram frame, eigenline orientation +1.000000000  (biorthogonal +1.110969)
   cone: s=0.001, dt3=0: gap = 1.833030e-03
   cone: s=0, dt3=0.001: gap = 2.000000e-03
PASS K8 real paths: eigenvalues real on both sides of the wall max |Im| = 0.0e+00
ALL PASS
```
--- bh_matched_12.py.log (234 B)
```
R_H = 376.7303135 ohm, Z_0 = mu_0 c = 376.7303135 ohm
PASS M1 horizon resistivity equals the vacuum impedance ratio 1.000000000
PASS M2 zero reflection exactly at the matched value S(1) = 0.0, S(1/2) = -0.3333, S(2) = 0.3333
ALL PASS
```
--- bh_nonnormal_04.py.log (216 B)
```
both anisotropic             ||[A,A^T]||_F = 0.231425
T isotropic                  ||[A,A^T]||_F = 0.000000
W isotropic                  ||[A,A^T]||_F = 0.000000
at the wall, joint point     ||[A,A^T]||_F = 0.332623
```
--- bh_offset_15.py.log (415 B)
```
PASS K1 one pair: outside record Fermi-Dirac, tau = w/T for every phase max off-diagonal 0.0e+00, max |tau - w/T| 5.6e-16
PASS K2 four pairs: tau from covariance = log P(empty)/P(full) = sum w_k/T tau_C = 13.260000000000, tau_Fock = 13.260000000000, sum w/T = 13.260000000000; outside Fock off-diagonal 0.0e+00
PASS K3 the offset is the ratio w/T; a common rescaling leaves it unchanged max change 0.0e+00
ALL PASS
```
--- bh_petrov_06.py.log (1765 B)
```
PASS P1 map Q -> quartic invertible det = 3072
PASS P2 type I (1111): Jordan structure [(np.complex128(-0.406667-0j), [1]), (np.complex128(0.358333-0j), [1]), (np.complex128(0.048333+0j), [1])]
PASS P2 type II (211): Jordan structure [(np.complex128(-0.425+0j), [1]), (np.complex128(0.2125+0j), [2])]
PASS P2 type D (22): Jordan structure [(np.complex128(0.666667+0j), [1]), (np.complex128(-0.333333+0j), [1, 1])] eigenvalue ratio (-2-0j)
PASS P2 type III (31): Jordan structure [(np.complex128(0j), [3])]
PASS P2 type N (4): Jordan structure [(np.complex128(-0+0j), [2, 1])]
P3  split a double star of type II by delta
    delta=0.1: gap=8.000000e-02  gap/delta=0.800000  gap/sqrt(eps)=1.600000
    delta=0.01: gap=8.000000e-03  gap/delta=0.800000  gap/sqrt(eps)=1.600000
    delta=0.001: gap=8.000000e-04  gap/delta=0.800000  gap/sqrt(eps)=1.600000
    delta=0.0001: gap=8.000000e-05  gap/delta=0.800000  gap/sqrt(eps)=1.600000
PASS P3 gap linear in star separation (II) gap/delta -> 0.800000
P4  split both double stars of type D by delta
    delta=0.1: gap=2.500000e-03  gap/delta^2=0.250000  gap/delta=0.025000
    delta=0.01: gap=2.500000e-05  gap/delta^2=0.250000  gap/delta=0.002500
    delta=0.001: gap=2.500000e-07  gap/delta^2=0.250000  gap/delta=0.000250
PASS P4 gap quadratic in star separation (D) gap/delta^2 -> 0.250000
PASS P5 Kerr r=2.5, th=0.4: type D, ratio (1,1,-2) [(np.complex128(0.021115+0.019957j), [1, 1]), (np.complex128(-0.042231-0.039913j), [1])]
PASS P5 Kerr r=1.9, th=1.2: type D, ratio (1,1,-2) [(np.complex128(0.065438+0.027524j), [1, 1]), (np.complex128(-0.130876-0.055048j), [1])]
PASS P5 Kerr r=6.0, th=2.8: type D, ratio (1,1,-2) [(np.complex128(0.002152-0.000733j), [1, 1]), (np.complex128(-0.004304+0.001467j), [1])]
ALL PASS
```
--- bh_qnm_13.py.log (1797 B)
```
   eta=1e-01: gap=9.165e-01  |B+|=1.569e+00  |B-|=1.032e+00  |B+|*gap=1.437879  B++B-=0.560000-0.050000j  arg(B+/B-)=+0.957974 pi
   eta=1e-02: gap=2.835e-01  |B+|=4.200e+00  |B-|=3.664e+00  |B+|*gap=1.190892  B++B-=0.560000-0.050000j  arg(B+/B-)=+0.986201 pi
   eta=1e-03: gap=8.947e-02  |B+|=1.264e+01  |B-|=1.211e+01  |B+|*gap=1.131171  B++B-=0.560000-0.050000j  arg(B+/B-)=+0.995620 pi
   eta=1e-04: gap=2.828e-02  |B+|=3.939e+01  |B-|=3.885e+01  |B+|*gap=1.114009  B++B-=0.560000-0.050000j  arg(B+/B-)=+0.998614 pi
   eta=1e-05: gap=8.944e-03  |B+|=1.240e+02  |B-|=1.234e+02  |B+|*gap=1.108750  B++B-=0.560000-0.050000j  arg(B+/B-)=+0.999562 pi
   eta=1e-06: gap=2.828e-03  |B+|=3.914e+02  |B-|=3.909e+02  |B+|*gap=1.107104  B++B-=0.560000-0.050000j  arg(B+/B-)=+0.999861 pi
PASS K1 single excitation factors grow like |coupling|/gap |B+|*gap -> 1.107104 against |u.N v| = 1.106345; |B+| = 3.914e+02 at eta=1e-6
PASS K2 B+ + B- = u.v (pair projector) and opposite phases u.v = 0.560000-0.050000j; arg(B+/B-) = +0.999861 pi
   nilpotent check: |N0^2| = 0.0e+00, u.N0.v = -0.240000+1.080000j
   eta=1e-02: max|h| = 1.058211   max|single mode term| = 4.200e+00
   eta=1e-04: max|h| = 1.040295   max|single mode term| = 3.939e+01
   eta=1e-06: max|h| = 1.040120   max|single mode term| = 3.914e+02
   two-mode sum vs Jordan: 5.07e-04 at eta=1e-4, 5.06e-06 at eta=1e-6 (gap ratio 10)
PASS K3 pair sum bounded through the EP; Jordan form t e^{-i w0 t} at the EP max|h| = 1.0582; exact-vs-Jordan 1.8e-15; modes(eta=1e-6)-vs-Jordan 5.1e-06
PASS K4 contour integral equals the waveform, at and beside the EP max rel err 2.8e-13
PASS K5 one loop exchanges the pair, two restore it; ledger single-valued after 1 turn |w-w_-| = 0.0e+00, after 2 |w-w_+| = 0.0e+00; ledger change 0.0e+00, 0.0e+00
ALL PASS
```
--- bh_qutrit_18.py.log (1143 B)
```
PASS Q1 F_Q = 4 g (so F_Q = 8 x shape kinetic energy at unit inertia) F_Q/g over 200 random curves: 3.999999999988 .. 4.000000000002
PASS Q2 wall distance arcsin sqrt(eps) = Bures angle arccos sqrt(F) max difference 3.0e-14
PASS Q3 mirror pair: fidelity 1, cover distance 2 arcsin|sigma3| > 0 F = 0.999999999999994, sign det X = -1 vs +1, cover distance on the fold path 2 arcsin|sigma3| = 0.2327
PASS P1 disk potential: min over orientation of sum m z^2 = w3 = sigma3^2 (frequency nu exactly) max |min - w3| 2.2e-16; Jacobi identity 0.0e+00
   grav: dV/dw3 at the wall over 400 planar configurations: min +1.8926, max +53472.1508, fraction stiffening (>0) 1.000
   coul: dV/dw3 at the wall over 400 planar configurations: min -53472.1508, max -1.8926, fraction stiffening (>0) 0.000
PASS P2 measured: equal-mass gravity stiffens toward coplanarity at every sampled planar configuration; like charges do the opposite square control dU/dw3 = 1.82842699 vs 2 sqrt2 - 1 = 1.82842712; transverse omega = sqrt(2 dU/dw3) = 1.912290 (G = m = I = 1)
PASS C1 cone slope closed form 2|t1-t2| sqrt(1-delta^2) 1.833030278 vs measured 1.833030278
ALL PASS
```
--- bh_shadow_07.py.log (1849 B)
```
zeta = -1:  L(zeta) = (4.0 + 0.0j)
   1-|q| =  1e-2:  |f| =  1.04112e+19   |b| =  1.04112e+19   f-(-1)^k b = (3.96113346 + 0.0j)
   1-|q| =  3e-3:  |f| =  8.96272e+60   |b| =  8.96272e+60   f-(-1)^k b = (3.988106103 + 0.0j)
   1-|q| =  1e-3:  |f| = 1.80128e+180   |b| = 1.80128e+180   f-(-1)^k b = (3.996011929 + 0.0j)
   1-|q| =  3e-4:  |f| = 1.74648e+597   |b| = 1.74648e+597   f-(-1)^k b = (3.998801078 + 0.0j)
PASS S1 zeta = -1: f and b blow up |f| 1.04e+19 -> 1.75e+597
PASS S2 zeta = -1: f-(-1)^k b -> L(zeta) Richardson (3.9999999 + 0.0j); raw error 0.00399 -> 0.0012
zeta = i:  L(zeta) = (0.0 + 4.0j)
   1-|q| =  1e-2:  |f| =     346204.0   |b| =     346208.0   f-(-1)^k b = (0.07052610774 + 3.82286692j)
   1-|q| =  3e-3:  |f| =   1.6589e+16   |b| =   1.6589e+16   f-(-1)^k b = (0.02302477682 + 3.942353953j)
   1-|q| =  1e-3:  |f| =  1.67771e+46   |b| =  1.67771e+46   f-(-1)^k b = (0.007886708938 + 3.98027346j)
   1-|q| =  3e-4:  |f| = 4.65059e+150   |b| = 4.65059e+150   f-(-1)^k b = (0.00238963484 + 3.994025019j)
PASS S1 zeta = i: f and b blow up |f| 3.46e+5 -> 4.65e+150
PASS S2 zeta = i: f-(-1)^k b -> L(zeta) Richardson (2.1982687e-6 + 3.9999947j); raw error 0.0212 -> 0.00644
zeta = e^(i pi/3):  L(zeta) = (-2.0 - 3.464101615j)
   1-|q| =  1e-2:  |f| =      958.595   |b| =      962.074   f-(-1)^k b = (-1.703124438 - 3.112779117j)
   1-|q| =  3e-3:  |f| =   7.51328e+7   |b| =   7.51328e+7   f-(-1)^k b = (-1.895583573 - 3.340418061j)
   1-|q| =  1e-3:  |f| =  2.20807e+21   |b| =  2.20807e+21   f-(-1)^k b = (-1.963167616 - 3.420459263j)
   1-|q| =  3e-4:  |f| =  8.09702e+67   |b| =  8.09702e+67   f-(-1)^k b = (-1.98870893 - 3.450721387j)
PASS S1 zeta = e^(i pi/3): f and b blow up |f| 959.0 -> 8.1e+67
PASS S2 zeta = e^(i pi/3): f-(-1)^k b -> L(zeta) Richardson (-1.9999547 - 3.4640476j); raw error 0.0571 -> 0.0175
ALL PASS
```
--- bh_spine_09.py.log (713 B)
```
PASS S1 C - C^2 = BB^dagger and Tr(C^2 - C) = -Tr BB^dagger max error 6.7e-16
PASS S2 K(0) = BB^dagger = PH^2P - (PHP)^2 = PHQHP max error 1.4e-14
PASS S3 A = P_W D_T P_W; P D_T^2 P - A^2 = P D_T Q D_T P, rank one, kinetic-positive error 4.9e-15, ranks {np.int64(1)}, min eigenvalue -1.4e-16
PASS S4 G*JG = I - S*S = 4(WV)* Herm L (WV), ||S|| <= 1 error 2.4e-15, max ||S|| 0.9011
PASS S5 Q = g + (i/2) Omega >= 0, |Omega_12| <= 2 sqrt(det g) min slack 1.02e-03
PASS S6 exterior signal independent of hidden rate and state; P(X+QYQ)P = PXP spread 9.5e-15
PASS S7 retention: escaped fraction 1, mean residence (1+a/b)/kappa; b=0 keeps a/(kappa+a) mean = (a + b)/(b*kappa), retained(b=0) = E0*a/(a + kappa)
ALL PASS
```
--- bh_wall_03.py.log (1039 B)
```
C9 D(w3) coefficients [w3^2, w3^1, w3^0]:
     (t1 + t2 - 2*t3)**2
     -2*(dl*t1**2 - 2*dl*t1*t3 - dl*t2**2 + 2*dl*t2*t3 - t1**2 + 6*t1*t2 - 4*t1*t3 - t2**2 - 4*t2*t3 + 4*t3**2)
     (dl*t1 - dl*t2 - t1 - t2 + 2*t3)**2
    sampled 50000 (t, delta): roots inside the physical segment: 0; largest real root seen: 1.998e+00
    D at the wall (w3=0) = (dl*t1 - dl*t2 - t1 - t2 + 2*t3)**2   -> zero exactly on the joint condition
    slope dD/dw3 at w3 = 0 on the joint condition: -4*(dl - 1)*(dl + 1)*(t1 - t2)**2
C10 Schur-Cayley: max identity error 5.86e-15; max ||S|| over 200 passive samples 0.945022
     matched load Z = I gives S = [0. 0. 0. 0.]
C11 k=0.0: projector metric g_kk at N=1: 0.249999999975; at N=1e-8: 0.249999999975; exact m^2/(4(k^2+m^2)^2) = 0.250000000000
C11 k=0.7: projector metric g_kk at N=1: 0.112607540199; at N=1e-8: 0.112607540199; exact m^2/(4(k^2+m^2)^2) = 0.112607540201
     local proper-time gap 2 sqrt(k^2+m^2) stays open; coordinate gap 2 N sqrt(k^2+m^2) -> 0 is the lapse, not the projector
RESULT PASS
```
--- bh_wall_check.py.log (634 B)
```
K1 Kendall w=(0.7,0.3) sectional 4.0000000
K1 Kendall w=(0.5,0.5) sectional 4.0000000
K1 Kendall w=(0.9,0.1) sectional 4.0000000
K2 shape metric in sigma coords:
 [[1. 0. 0.]
 [0. 1. 0.]
 [0. 0. 1.]]
K3 eps=0.1 length 0.32175055 arcsin sqrt 0.32175055
K3 eps=0.01 length 0.10016742 arcsin sqrt 0.10016742
K3 eps=0.0001 length 0.01000017 arcsin sqrt 0.01000017
K4 w3=0.01: sectional K(E2,V)=5.48044 K(E4,V)=4.93415 K(E5,V)=6.75797
K4 w3=0.001: sectional K(E2,V)=5.59820 K(E4,V)=6.22501 K(E5,V)=7.55863
K4 w3=0.0001: sectional K(E2,V)=5.61019 K(E4,V)=6.43034 K(E5,V)=7.65566
K4 growth ratio 1e-2 -> 1e-4: 1.3032312615736628
RESULT PASS
```

### 2.7.6 bh_agent/v10_fresh_checks/ : 8 logs, verbatim

--- bh_noncommute_check.py.log (66 B)
```
g(AH,K)= 0  g(H,AK)= -2/15
diag T control: g(AH,K)= 0  g(H,AK)= 0
```
--- bh_stiff_19.py.log (589 B)
```
PASS S1 closed form = finite-difference lift max rel diff 4.0e-06
PASS S2 square 1.828427124746188 vs 1.828427124746190
PASS S3 rhombus sign change k* = 0.144557 (1/k* = 6.9177); stiffness at k=1 +1.828427, k=0.2 +0.6651, k=0.1 -1.0801
   exact rhombus formula at k* : -3.1086244689504383e-15  and at k=0.5: 1.642573002183047 1.6425730021830462
PASS S4 negative stiffness exists away from collisions min found -7.5253 with min pair distance 0.0500
PASS S5 rhombus root from (1+k^2)(1+k)^2 = 64k^2 k* = 0.144556694814
   fraction of 20000 Gaussian flat shapes that stiffen: 1.0000
ALL PASS
```
--- photon_ring_wall.py.log (313 B)
```
photon orbit r = 3*M ; generator eigenvalues +- L/(9*M**2) (affine), real: unstable wall
Lyapunov rate (coordinate time) = sqrt(3)/(9*M) ; orbital rate = sqrt(3)/(9*M)
echo demagnification per half orbit gamma = pi -> factor 0.0432139 ; delay = 3*sqrt(3)*pi*M
PASS: reproduces gamma = pi and delay 3 sqrt(3) pi M
```
--- rs02c_realization.py.log (647 B)
```
(1) two-level family: max error in a=k^2 sin^2(beta)/4, b=beta'^2/4, g_xy=0 over 50 draws: 1.6e-09
   m +0.00 -> +1.00: gaps 2.0000 -> 2.8284; Gamma(n=sqrt g_par) = +0.17157288; tanh(0.5 ln(gap2/gap1)) = +0.17157288
   m +0.50 -> +2.00: gaps 2.2361 -> 4.4721; Gamma(n=sqrt g_par) = +0.33333333; tanh(0.5 ln(gap2/gap1)) = +0.33333333
   m -1.00 -> +3.00: gaps 2.8284 -> 6.3246; Gamma(n=sqrt g_par) = +0.38196601; tanh(0.5 ln(gap2/gap1)) = +0.38196601
   m +0.20 -> +0.25: gaps 2.0396 -> 2.0616; Gamma(n=sqrt g_par) = +0.00535093; tanh(0.5 ln(gap2/gap1)) = +0.00535093
(2) max |a*gap^2 - 9| = 2.7e-09; max |Gamma - peel| = 8.7e-13
Realization: PASS
```
--- rs03c_linear_limit.py.log (479 B)
```
theta 10: |r - Gamma|/(omega w) = 0.0747, 0.0746, 0.0746, 0.0746  at omega w = 0.01, 0.005, 0.0025, 0.00125
theta 25: |r - Gamma|/(omega w) = 0.1054, 0.1053, 0.1053, 0.1053  at omega w = 0.01, 0.005, 0.0025, 0.00125
theta 31: |r - Gamma|/(omega w) = 0.1807, 0.1818, 0.1823, 0.1826  at omega w = 0.01, 0.005, 0.0025, 0.00125
theta 60: |r - Gamma|/(omega w) = 0.0992, 0.1029, 0.1048, 0.1057  at omega w = 0.01, 0.005, 0.0025, 0.00125
RS03C: PASS (first-order convergence to Gamma)
```
--- sine_guard_check.py.log (95 B)
```
max |det - (g_par - C)| = 1.6e-11;  max (|Omega(V,dx)| - 2 sqrt(det)) = 3.1e-15 (must be <= 0)
```
--- v10_corrections_check.py.log (1393 B)
```
C1 non-commuting T: g(AH,K) - g(H,AK) = +0.133333 (magnitude 2/15 = 0.133333); diagonal T, 200 random pairs: 1.4e-14  APPLY
C1b Jacobian of the normalised flow = A(H) - 2Tr(TG)H symbolically: YES
C2 Gaussian curvature of the eigenvalue block at three points: [1.0000000000000007, 0.9999999999999999, 0.9999999999999996]  APPLY (round, not flat)
C3 real-qubit Bures = (1/4)(dchi^2 + sin^2 chi dphi^2), chi in [0, pi/2): max dev 2.0e-15; boundary circle length pi  APPLY
C4 rank of P_W D_T Q_W D_T P_W: anisotropic 1, isotropic 0  APPLY (rank at most one)
C5 rotation frame change adds oint = -6.283185 (exp = 535.5, not 1)  APPLY (claim false in general)
C5b diagonal F: extra term = share-weighted dlog F_i: YES
C6 ||P+||^2 = 1 + (b-c)^2/g^2 on 500 random real matrices: max dev 3.6e-14  APPLY
C7 s, F_Q (SLD), 8K: 0.1: 4.040404, 4.040404; 0.01: 4.000400, 4.000400; 0.001: 4.000004, 4.000004; 0: 0.000000, 4.000000  APPLY (full rank only)
C8 quartic coefficient -3*sqrt(2)/2 - 3/4 = -2.8713; at sigma3 = 0.3 exact rise 0.1420008842 vs harmonic 0.1645584412; energy 0.1420 reaches sigma3 = 0.3000, harmonic bound says 0.2787  APPLY (at most is false)
C9 at N = 0 the symbol is zero (every vector an eigenvector); the N > 0 projector is constant, so its limit exists  APPLY

SUMMARY: C1 apply, C1b apply, C2 apply, C3 apply, C4 apply, C5 apply, C5b apply, C6 apply, C7 apply, C8 apply, C9 apply
```
--- v10_push_others.py.log (1031 B)
```
P1 photon ring, nonlinear orbit: growth per radian 0.999983 (exact 1) -> per half orbit e^pi, echo factor 0.043216
   opposite, charged hole Q = 0.5 M: growth per radian 0.968095 (formula 0.968119), echo factor 0.047770  PASS
   half-orbit delay pi/Omega = 16.324194 M against 3 sqrt3 pi M = 16.324194 M
P2 sine guard: Gram identity max dev 2.8e-14; two-level max(|Omega| - bound) = 4.7e-15 (median slack 0.0e+00: equality), three-level -7.8e-05 (median slack 0.37: strict)  PASS
P3 fermion offset is a Smith coordinate: symbolic yes; partial trace over 6 frequencies x 7 phases max dev 2.8e-16; Gamma = 0 only at omega = 0  PASS
P4 compression D(X) = PXP: Hermitian P idempotent 7.8e-16, self-adjoint 0.0e+00; oblique Riesz P (norm 1.44) idempotent 0.0e+00, NOT self-adjoint (0.94)  PASS
P5 tip and tail, 2000 trials each: max DK ratio 0.904 (must be <= 1); tight cluster: median vector turn 73.72 deg vs subspace 0.272 deg; wide split (opposite): vector turn 2.653 deg  PASS

SUMMARY: P1 pass, P2 pass, P3 pass, P4 pass, P5 pass
```

### 2.7.7 What these logs add or change against bh.md (both are GitHub-side records of the same checks)

- bh_nonnormal_04: "both anisotropic ||[A,A^T]||_F = 0.231425; T isotropic 0.000000; W isotropic 0.000000; at the wall, joint point ||[A,A^T]||_F = 0.332623". (bh.md l.43 gives 0.2314; the wall value 0.332623 is held only in this log.)
- bh_core_02 C3 "min discriminant over 20000 interior samples: 2.886e-04" (bh.md l.45: "min 2.9e-4 over 2e4"); C5c ledger at w3=1e-3: 2.561913986149 (row not in bh.md's table); C6 extra row w3=1e-03 "||P_single||*gap = 0.486706"; C7 eigenvalues x w3 -> [0, 0, 1, 1, 2]; C8 ||exp(-Jt)|| values 0.789975240034, 0.094436407453, 0.000804747797; kappa = 0.1865.
- bh_wall_03 C10: "max identity error 5.86e-15; max ||S|| over 200 passive samples 0.945022" (compare bh.md l.78 "2.4e-15 ... 0.901" from BH-SPINE-09, bh_spine_09 log "error 2.4e-15, max ||S|| 0.9011", and atlas B175 "6e-15 ... 0.950"): three different sample runs, three different maxima.
- bh_wall_03 C11: projector metric g_kk = 0.249999999975 (k=0) and 0.112607540199 (k=0.7) at N=1 and N=1e-8.
- bh_wall_check K4: sectional K(E2,V), K(E4,V), K(E5,V) = 5.48044/4.93415/6.75797 (w3=0.01), 5.59820/6.22501/7.55863 (0.001), 5.61019/6.43034/7.65566 (0.0001); growth ratio 1.3032 (bh.md l.34: "5.61, 6.43, 7.66 at w3=1e-4 ... factor 1.30").
- bh_ep_spinor_04 H1: "Q(sigma3) = (sigma3**2 + 21)/25, Q(0) = 21/25, A12 = 7*sqrt(3)/25" (= 0.484974); monodromy matrices; "off the joint condition t3=1.25: small sigma3 loop = identity".
- bh_isco_10: full table r0 = 12, 7, 6.1, 5.9, 5, 4; r_u = 4.697224, E_s^2 = 0.912543520, lam = 0.086060, Omega = 0.163414; whirl table dE = 1e-3 ... 1e-8 (whirls 2.552 ... 6.017). The log opens with a scipy IntegrationWarning ("The algorithm does not converge. Roundoff error is detected in the extrapolation table") and still ends "ALL PASS".
- bh_qnm_13: |B+| = 3.914e+02 at eta = 1e-6 (the "391"); |B+|*gap -> 1.107104 against |u.N v| = 1.106345; u.v = 0.560000-0.050000j; arg(B+/B-) = +0.999861 pi; contour max rel err 2.8e-13.
- bh_knot_14: the sixteen constants by N mod 16 listed in full: [0.0858, 0.9713, 1.1181, 1.3073, 2.0616, 1.6707, 2.6926, 1.8859, 2.9142, 1.8858, 2.6925, 1.6706, 2.0615, 1.3072, 1.118, 0.9714]; period test max|c(N)-c(N+P)| = {8: 2.828468, 12: 1.975873, 16: 0.000104}.
- bh_bell_11: CHSH at r = 0.1, 0.3, 0.7, 1.2 and at omega/T_H = 0.5, 1, 2, 5, 10; anomaly flux 1/(768 pi M^2), T_H = 1/(8 pi M).
- bh_offset_15: max |tau - w/T| 5.6e-16; tau_C = tau_Fock = 13.260000000000.
- bh_stiff_19 (v10): S4 "negative stiffness exists away from collisions min found -7.5253 with min pair distance 0.0500"; "fraction of 20000 Gaussian flat shapes that stiffen: 1.0000"; k* = 0.144556694814.
- v10_corrections_check: eleven items C1...C9 each ending "APPLY", with notes "(round, not flat)", "(rank at most one)", "(claim false in general)", "(full rank only)", "(at most is false)". These are corrections the log says to apply; bh.md shows the edition-10 text already carrying each of them tagged "CHECKED V10-CORRECTIONS" (l.31, l.39, l.42, l.44, l.60, l.73, l.74, l.131).
- v10_push_others: P1 photon ring nonlinear growth per radian 0.999983, echo factor 0.043216; charged Q = 0.5M: 0.968095 (formula 0.968119), echo factor 0.047770; half-orbit delay 16.324194 M; P2-P5.
- photon_ring_wall: "echo demagnification per half orbit gamma = pi -> factor 0.0432139; delay = 3*sqrt(3)*pi*M".
- rs02c_realization: gap step Gamma values 0.17157288, 0.33333333, 0.38196601, 0.00535093; "max |a*gap^2 - 9| = 2.7e-09".
- rs03c_linear_limit: first-order ratios (0.0746, 0.1053, 0.1826, 0.1057 at omega w = 0.00125).
- bh_noncommute_check prints "g(AH,K)= 0  g(H,AK)= -2/15"; v10_corrections C1 prints "+0.133333 (magnitude 2/15)"; bh.md l.42 "g_W(AH,K)-g_W(H,AK)=2/15".
Logs whose check names do not appear in bh.md's Appendix B list: bh_noncommute_check, sine_guard_check, rs02c_realization (bh.md lists "RS-02/03/03b/03c" generally).
Logs for checks named in bh.md but ABSENT from this folder: BH-N-01, BH-SUNLADDER-16b, RS-01/RS-01B, RS-03/RS-03b (the failed Richardson gate), BH-FIGS-*.


### 2.7.8 RECOVERED_FILES_LEDGER_20261112.csv (437,801 B): NOT read in full; rows naming black-hole files read

Header row: `group,path,file,kind,script_name,bytes,sha,status,repo_location,private`.
Rows that name black-hole material (path | kind | bytes | status):
- neutrino/unz/reading_notes/review/black_hole_reading.md | data/doc | 23852 | sha 5aa011a24ec8ac033ce34b57b11e74b4898060cf | ONLY ON DRIVE. **This file is listed in the CSV but is NOT present in the repo folder** (find shows no copy anywhere under github/ or github_branches/). It is a 23.8 KB black-hole reading note that exists only on Drive (inside the neutrino reading_notes zip).
- neutrino/unz/reading_notes/review/archive_replay/analysis/sun_blackholes/blackhole_independent_checks.json | data/doc | 596 | sha c1cbaaa3ae93db26c3ad737b069dd7987e548de5 | ONLY ON DRIVE (not present in repo folder).
- neutrino/unz/reading_notes/review/archive_replay/output/sun_blackholes/retention_checks.json | data/doc | 525 | ONLY ON DRIVE (not present in repo folder).
- neutrino/unz/reading_notes/review/bh_agent/davis_kahan_counterexample.json | data/doc | 564 | ONLY ON DRIVE (not present in repo folder).
- neutrino/unz/reading_notes/review/archive_replay/blackhole_independent_checks.py | script | 2257 | sha 6b90fc362bf6efb6437310851cf5160756fbc7ce | ONLY ON DRIVE (present; 2.7.1).
- the 28 bh_agent logs, each "output ... ONLY ON DRIVE" (present; 2.7.5-2.7.6).
- neutrino/.../v4_runs/trisect_v2.py | script "NU-V4-TRISECT-V2 trisection in which only a detected horizon ('BH') or 'dispersed' moves the bracket." | SAME ON REPO (neutrino paper code; primordial-black-hole runs, separate paper).
Rows 635-638 (k3_ep_crossing, k4, k6 scripts) matched only through neutrino text; they are neutrino-paper checks.
The gather keeps scripts, outputs and Lean files; "data/doc" rows such as black_hole_reading.md were logged but not committed.


## 2.8 votkp-lean__claude_sm-ball-20261111 : other hit files (black-hole passages only; rest of each file NOT read)

Method for this and the following sections: every occurrence of the tight term list (black hole(s), horizon(s), Hawking, Schwarzschild, Kerr, ISCO, photon ring/sphere, ringdown, Penrose, quasinormal, QNM, membrane paradigm, Bekenstein, rigidity wall, event horizon) was pulled with 300-550 characters of context on each side and read. Format: `[file:line @char] passage`. Passages are verbatim cuts (they may start or end mid-sentence).

### 2.8.1 research/2026-11-12-november-gather/recovered_only_on_drive/knots/txt/AtlasCards3D.js (101,675 B)

Card B207 source (lines 290, 521-560):
- l.290: `/* ---------- B207: Schwarzschild in isotropic radius rho, a = M/2 ---------- */`
- l.521 hero: 'The doubled Schwarzschild slice reads as the two books of one scalar edge.'
- l.523 prose: 'Bunting and Masood-ul-Alam proved uniqueness of static black holes by doubling the time-symmetric slice with the two conformal factors ((1 ± V)/2)⁴. On Schwarzschild the lapse is exactly the reflection coefficient of one scalar edge whose ends carry 1 and Γ = a/ρ, so the two sheets are the two books of that edge: the parallel book closes at the horizon, where Γ = 1 and V = 0, and the inversion that swaps the sheets is the sector flip that swaps the books. The identities are exact; reading the doubling as a ledger is the interpretation.'
- l.524 carry: 'The Schwarzschild time-symmetric slice in isotropic radius ρ, mass M = 2a, and its lapse V.'
- l.527 closed: 'At the horizon ρ = a: Γ = 1, V = 0, E− = 0 (a parallel edge) and the two sheets meet.'
- l.528 links: builds 'B189 ... · B186 ...', pairs 'B199 (one wall where the trace form vanishes, ISCO among them)', feeds 'B176 (the outside half is thermal)'.
- l.546 label 'horizon ρ = a, V = 0, E− = 0'; l.560 check rows ['200 radii: V = r, sheet + flat, inversion flips V', ...], ['horizon ρ = a: V, E−', ..., '0, 0'].
(Disagreement inside this file: l.290 comment says "a = M/2"; l.524 says "mass M = 2a". These are the same relation. No disagreement.)

### 2.8.2 research/2026-11-11-standard-model-ball/evening-reads/NOTES_12_VOTKP_V29_PAGES_056_110.md (112,466 B): one passage

l.335: "Structural comparison: Prop 19.3 is the non-rigid side of a pattern whose rigid side appears in the spacetime Penrose inequality (OpenAI 2026c, 'an unrefereed manuscript produced by an OpenAI model'): invariant mass of initial data obeying the dominant energy condition is bounded below by minimum enclosing area, m >= sqrt(A_min/16 pi); equality, under stated horizon hypotheses, reconstructs the whole exterior as a slice of Schwarzschild (its Theorems 2.2 and 10.2); two numbers fix a geometry. Here the full scalar record fixes no projector path. ... 'The comparison is structural: the metric here is the intrinsic metric of a retained spectral projector, not a spacetime metric, and neither result is derived from the other.'"
Files on the hit list in the same folder tree with NO tight match (not read): evening-reads/NOTES_11_VOTKP_V29_PAGES_001_055.md, votkp_reads/READ_A4.md, READ_A6.md, READ_B1.md, paper/votkp_v3_1/code/closure_reports/REPORT_ledger.md, research/2026-11-14-balls-mixer/v4/REPORT.md, v4/checks/v4_expected.py.

### 2.8.3 research/2026-11-13-space-step/T14_dirac_time/NOTES.md (111,438 B) and research/2026-11-11-standard-model-ball/atlas/ATLAS_B97_B207_READ_20261111_v1.md (38,484 B): all passages

```
[research/2026-11-13-space-step/T14_dirac_time/NOTES.md:33 @578] ctral history ledgers; §9 one flow/common time; §10 hidden-sector memory; §11 light/boundary/path inheritance (11.3 Elemental Peeling); §12 thermodynamics cost of an arrow (12.1 memory engine, 12.6 friction on projector rotations); §13 knots; §14 connection energy; §15 Maxwell–Dirac gate; §16 Gigantefermion; §17 geometry/gravity/horizons; §18 working definition; §19 negative controls; §20 falsification; §21 theorem programme T1–T10; §22 tower and well; §23 memory-dependent stability model; §24 Great Winding/CCC; §25 open; §26 synthesis; App A–G. 

[research/2026-11-13-space-step/T14_dirac_time/NOTES.md:189 @35] ## §17 Geometry, gravity, horizons, hair (L2500-2640) 

[research/2026-11-13-space-step/T14_dirac_time/NOTES.md:193 @14] - 17.2 horizon negative control: Schwarzschild local-symbol control has physical horizon while local projector metric positive and gap open: "gravitational horizon !== projector-metric degeneracy." Older shape-space/Kerr "boundary isomorphism" claims "not retained as theorems." 

[research/2026-11-13-space-step/T14_dirac_time/NOTES.md:195 @62] - 17.4 no-hair open analogy; 17.5 far-from-equilibrium horizon thermodynamics: "No identification with the finite projector ledger is made here." 

[research/2026-11-13-space-step/T14_dirac_time/NOTES.md:205 @428] ersal time"); 19.2 naive oriented projector scalar Tr((2P-I) dot P)=0 ("Do not use this as oriented memory"); 19.3 K(0)=BB^dag does not determine K(t) ("Do not call local projector speed the full memory"); 19.4 weak-value overreach; 19.5 Rice–Mele phase-law control ("Do not infer relativity from one attractive square-root identity"); 19.6 horizon control; 19.7 8_19 not hyperbolic; 19.8 Maxwell–Dirac seed. 

[research/2026-11-13-space-step/T14_dirac_time/NOTES.md:246 @449] eeps 22543487; Companion-Matrix Projector Diagnostic 21799194; Price of a Direction 21918464; Spectral Stress 21855787; FOFT 21860370; Offset Belongs to the Boundary v31 22555919; Light Keeps the Ledger 22124938; Matter at a Scale 22019893; Non-Normality Is Connection Energy v7 22804072; Ledger Outlives the Metric 22088625; Beyond the Event Horizon v2 21860392; Transient Structure at Solar Rigidity Interfaces 22013524; Non-normal fracture operator 22811901; 5D Spectral Anatomy 20818169; Spectral Stability Across Obstruction Interfaces 20834719; The Square Case 21855591). Also Elemental Peeling combined manuscript and revision 2; "Peeling Cascades and What They Leave Behind". A.6 conceptual origin: Relational Atlas of Memory, Obstruction, and Becoming (book); early Spectral Memory Papers I–IV. "provenance map, not a claim that every unrelated file in the author's Drive is part of Dirac 

[research/2026-11-13-space-step/T14_dirac_time/NOTES.md:274 @189] - F rows (more): "Electron as knot of memory — OPEN / central hypothesis"; "Projector metric = spacetime metric — FALSE. Different objects; continuum/covariant bridge needed."; "Horizon = metric wall — FALSE"; "Gravity from response geometry — OPEN. Need Lorentz signature, source action, conservation, Newtonian/PPN/lensing tests."; "Cosmogenesis mu=mu_0-chi W — OPEN / hypothesis. Source explicitly labels it model choice, not derived."; "Equatorial holonomy -1 as half the unit monopole flux — SURVIVES"; "Spacing between levels as structure — SURVIVES as the gap–coupling law. Section 6.2: a gap enters only through coupled pairs."; "Rate is weight — OPEN as a reading; identities proved. Section 9.4: geometry is blind to sH+cI; offset speed limit dot tau_off^2 <= 4 g S."; "Hidden-sector memory in a physical system — SURVIVES in simulated neutrino transport. Section 10.5; 

[research/2026-11-13-space-step/T14_dirac_time/NOTES.md:277 @618] it: Rate is weight" v1.1 (26 Oct 2026); "The Weight Between and the Exit Line" v4 (4 Nov 2026); "When the Neutrinos Leave" v5.1 (Nov 2026); "VOTKP: The Vector of Traits Kept under Peeling" v2.9 (13 Oct 2026), Zenodo 10.5281/zenodo.23340757, lib votkp-lean; S. McCormick preprint "Free-streaming neutrinos raise the threshold for primordial black hole formation" (2026) code Zenodo 10.5281/zenodo.23808375. 

[research/2026-11-13-space-step/T14_dirac_time/NOTES.md:302 @241] | S5 08:19 | maybe doesn't conduct: like a ground or the vacuum | "vacuum" absent. Nearest: §12.6 "ground-state projector at zero temperature ... lies between the smallest and the largest value of 2c(Delta_n)Delta_n times g"; §17.2 horizon control with open local gap. | Not in this paper. | 

[research/2026-11-13-space-step/T14_dirac_time/NOTES.md:323 @429]  amplitude both decay with constant 2, e-fold 1/2; equality of pass lengths only at z* = 6.2691 (T8) | PART | §6.2: "a spacing that no perturbation bridges contributes nothing, however small it is"; "the empty spacing between levels is part of the structure ... the denominator of every pair term". §17.2 "local spectral gap open" next to a horizon. §9.4 "geometry of change != seconds". Dirac's gap = energy-level spacing; T8's gap = coordinate distance from cut surface to rim. Different objects. "Never closes" for the Smith-coordinate gap: NO. | 

[research/2026-11-11-standard-model-ball/atlas/ATLAS_B97_B207_READ_20261111_v1.md:91 @70] | B173 | Majorana stars fix the Jordan form of the Weyl operator; Kerr is type D. | theorem | yes | Majorana stars fix the Jordan form of the Weyl operator; Kerr type D splits quadratically. | 

[research/2026-11-11-standard-model-ball/atlas/ATLAS_B97_B207_READ_20261111_v1.md:93 @71] | B175 | A boundary that returns nothing is a matched load; the horizon is one. | theorem | yes | Eliminated passive interior: I−S*S = 4(WV)*Herm L(WV); matched load S=0; membrane horizon is one. | 

[research/2026-11-11-standard-model-ball/atlas/ATLAS_B97_B207_READ_20261111_v1.md:94 @38] | B176 | The outside half of a Hawking pair is thermal and blind to the pair; its offset is ω/T H . | theorem | yes | Outside Hawking mode thermal, blind to pair phase; CHSH=2√(1+tanh²2r); fermion offset τ=ω/T_H. | 

[research/2026-11-11-standard-model-ball/atlas/ATLAS_B97_B207_READ_20261111_v1.md:95 @17] | B177 | The ISCO is a spectral wall: a Jordan block where gravity reaches the inverse cube. | theorem | yes | ISCO: wobble generator M²=−½V″I; oscillation outside 6M, growth inside, nilpotent at 6M; ω_r²/Ω²=3−p. | 

[research/2026-11-11-standard-model-ball/atlas/ATLAS_B97_B207_READ_20261111_v1.md:96 @208] | B178 | Climb or swap: how loops permute a family of exceptional points labels the family. | measured | yes | (measured) Loops around a family of EPs: swap family (dynamo) vs climb family (near-extremal Kerr). | 

[research/2026-11-11-standard-model-ball/atlas/ATLAS_B97_B207_READ_20261111_v1.md:97 @18] | B179 | A horizon’s static base and the coplanar wall share one fold normal form; only κ differs. | reading | yes | (reading) Horizon static base and coplanar wall share the fold normal form ds²=dX²/(4c²X); only κ differs. | 

[research/2026-11-11-standard-model-ball/atlas/ATLAS_B97_B207_READ_20261111_v1.md:117 @93] | B199 | One wall where the trace form vanishes: the spinning key, critical damping, the ISCO. | theorem | yes | Real traceless 2×2: T²=qI; q>0 growth, q<0 turning, q=0 & T≠0 Jordan wall; key, critical damping, ISCO, prime companion. | 

[research/2026-11-11-standard-model-ball/atlas/ATLAS_B97_B207_READ_20261111_v1.md:125 @34] | B207 | The doubled Schwarzschild slice reads as the two books of one scalar edge. | reading | yes | (reading) Doubled Schwarzschild slice: (1±λ)/2 are book half-amplitudes, λ=tanh(½log ρ/a); inversion ρ→a²/ρ swaps books. | 

[research/2026-11-11-standard-model-ball/atlas/ATLAS_B97_B207_READ_20261111_v1.md:155 @81] - **B177.** "oscillation outside, growth inside, a nilpotent at r = 6M". The ISCO is the orbit wall with the same three-way split. 

[research/2026-11-11-standard-model-ball/atlas/ATLAS_B97_B207_READ_20261111_v1.md:186 @68] - **B179** limits the massless/extremal end: "At an extremal horizon proper distance diverges logarithmically and the lapse is exponential in it: there is no fold." 

[research/2026-11-11-standard-model-ball/atlas/ATLAS_B97_B207_READ_20261111_v1.md:195 @140] | (c) | Real traceless 2×2: sign of q decides growth/turning/Jordan (B199). The unitary commutator wall at eigenvalue −1 (B128). The ISCO wall (B177). κ = 2 (B122). The (√2 ± 1)⁴ root is recorded (B149). | The boost commutator written as a B199 generator (its trace form q as the books' signed difference E⁻ − E⁺), to check that q = 0 lands at Γ² = ½. | 

[research/2026-11-11-standard-model-ball/atlas/ATLAS_B97_B207_READ_20261111_v1.md:208 @54] 6. **B177 and B179 keep the orbit wall and the horizon apart.** B177 says "This is the orbit family’s generator, not the horizon; the horizon is a geometric fold (B179)." A "wall" reading must say which kind it means: a spectral wall (Jordan) or a fold. 

```

Pointers: T14 NOTES l.193 (notes on the Dirac Time paper sec 17.2): "horizon negative control: Schwarzschild local-symbol control has physical horizon while local projector metric positive and gap open: 'gravitational horizon !== projector-metric degeneracy.' Older shape-space/Kerr 'boundary isomorphism' claims 'not retained as theorems.'"; l.274 Master Claim Lineage rows: "Projector metric = spacetime metric — FALSE. Different objects; continuum/covariant bridge needed."; "Horizon = metric wall — FALSE"; l.246 Zenodo list incl. "Beyond the Event Horizon v2 21860392". ATLAS read l.208: "B177 and B179 keep the orbit wall and the horizon apart. B177 says 'This is the orbit family's generator, not the horizon; the horizon is a geometric fold (B179).'"; l.186 B179: "At an extremal horizon proper distance diverges logarithmically and the lapse is exponential in it: there is no fold."


### 2.8.4 paper/votkp_v3_2/code/atlas_map/ : CARD_INDEX.md (19,540 B), ATLAS_REPORT_1.md (47,815 B), ATLAS_REPORT_2_all_cards.md (44,898 B): all passages

```
[paper/votkp_v3_2/code/atlas_map/CARD_INDEX.md:18 @61] B14 | L4 → L7 | reading | The budget is written on horizons. 

[paper/votkp_v3_2/code/atlas_map/CARD_INDEX.md:177 @90] B173 | L7 → L2 | theorem | Majorana stars fix the Jordan form of the Weyl operator; Kerr is type D. 

[paper/votkp_v3_2/code/atlas_map/CARD_INDEX.md:179 @91] B175 | L3 → L7 | theorem | A boundary that returns nothing is a matched load; the horizon is one. 

[paper/votkp_v3_2/code/atlas_map/CARD_INDEX.md:180 @58] B176 | L5 → L7 | theorem | The outside half of a Hawking pair is thermal and blind to the pair; its offset is ω/TH. 

[paper/votkp_v3_2/code/atlas_map/CARD_INDEX.md:181 @37] B177 | L2 → L7 | theorem | The ISCO is a spectral wall: a Jordan block where gravity reaches the inverse cube. 

[paper/votkp_v3_2/code/atlas_map/CARD_INDEX.md:183 @38] B179 | L3 → L7 | reading | A horizon’s static base and the coplanar wall share one fold normal form; only κ differs. 

[paper/votkp_v3_2/code/atlas_map/CARD_INDEX.md:203 @113] B199 | L3 → L3 | theorem | One wall where the trace form vanishes: the spinning key, critical damping, the ISCO. 

[paper/votkp_v3_2/code/atlas_map/CARD_INDEX.md:211 @54] B207 | L3 → L7 | reading | The doubled Schwarzschild slice reads as the two books of one scalar edge. 

[paper/votkp_v3_2/code/atlas_map/CARD_INDEX.md:222 @53] W5 | L3 → L7 | reading | One disc holds the horizon's load and the neutrino boundary. 

[paper/votkp_v3_2/code/atlas_map/ATLAS_REPORT_1.md:70 @90]  Linked fromsame form asB175A boundary that returns nothing is a matched load; the horizon is one.same form asB189One scalar edge is one reflecting step.same form asB198At a good prime the Frobenius edge keeps ap² and erases its sign; the twist count keeps it. 

[paper/votkp_v3_2/code/atlas_map/ATLAS_REPORT_1.md:104 @55]  Linked frompairs withB176The outside half of a Hawking pair is thermal and blind to the pair; its offset is ω/TH.same form asB198At a good prime the Frobenius edge keeps ap² and erases its sign; the twist count keeps it.pairs withB204The boundary sets the sign of the offset: it flips when the two residuals trade places. 

[paper/votkp_v3_2/code/atlas_map/ATLAS_REPORT_1.md:111 @63]  A boundary that returns nothing is a matched load; the horizon is one. 

[paper/votkp_v3_2/code/atlas_map/ATLAS_REPORT_1.md:115 @304] minate the interior of any passive operator and the boundary impedance inherits passivity, with no normality assumed. Its Cayley map is a contraction, and the deficit is exactly the interior’s dissipation pulled back to the boundary. Zero reflection is the matched load Zb = I. The membrane horizon carries a surface resistivity equal to the impedance of empty space, so in this calculus it returns nothing. 

[paper/votkp_v3_2/code/atlas_map/ATLAS_REPORT_1.md:117 @49]  2CheckLii and Zb + I invertible. For the horizon: the membrane description, RH = 4π/c with BH = EH × n. 

[paper/votkp_v3_2/code/atlas_map/ATLAS_REPORT_1.md:119 @108]  Closed whenNo reflection is not full absorption, and an impedance says nothing about causality; the horizon reading is structural. 

[paper/votkp_v3_2/code/atlas_map/ATLAS_REPORT_1.md:121 @35]  Linked frompairs withB179A horizon’s static base and the coplanar wall share one fold normal form; only κ differs.fed byB90The clock exponent says whether a system is open.same form asB189One scalar edge is one reflecting step.contrastsB207The doubled Schwarzschild slice reads as the two books of one scalar edge. 

[paper/votkp_v3_2/code/atlas_map/ATLAS_REPORT_1.md:124 @20]  ReferenceBlack Hole v8.4 · §4.2, Proposition 13 · membrane resistivity from Damour; Thorne, Price and Macdonald · BH-SPINE-09, BH-MATCHED-12 

[paper/votkp_v3_2/code/atlas_map/ATLAS_REPORT_1.md:128 @30]  The outside half of a Hawking pair is thermal and blind to the pair; its offset is ω/TH. 

[paper/votkp_v3_2/code/atlas_map/ATLAS_REPORT_1.md:132 @42]  Trace the inside partner out of a Hawking pair and the outside mode is exactly thermal, whatever phase sits on the pair. The pair itself beats the CHSH bound at every frequency, so no locally carried record could reproduce it. For a fermion pair the outside record has an exact zero point: its log-odds of empty against full is ω/TH for every pair phase. 

[paper/votkp_v3_2/code/atlas_map/ATLAS_REPORT_1.md:133 @18]  1CarryOne Hawking mode of frequency ω at temperature TH, and the two-mode pair (bosonic, or the Dirac pair cos r|00⟩ + eiφ sin r|11⟩). 

[paper/votkp_v3_2/code/atlas_map/ATLAS_REPORT_1.md:140 @20]  ReferenceBlack Hole v8.4 · §5, Proposition 14 and eq. (offset) · CHSH value from Chen et al. 2002 · BH-BELL-11, BH-OFFSET-15 

[paper/votkp_v3_2/code/atlas_map/ATLAS_REPORT_1.md:186 @139]  Linkssame form asB97A threshold ratio is a Smith coordinate.same form asB175A boundary that returns nothing is a matched load; the horizon is one.extendsB98The atom and the film share an addition law. 

[paper/votkp_v3_2/code/atlas_map/ATLAS_REPORT_1.md:187 @233]  Linked frombuilt on byB198At a good prime the Frobenius edge keeps ap² and erases its sign; the twist count keeps it.built on byB203The book ratios fix the route; the signs fix the endpoint.same form asB207The doubled Schwarzschild slice reads as the two books of one scalar edge. 

[paper/votkp_v3_2/code/atlas_map/ATLAS_REPORT_1.md:203 @103]  Linksbuilds onB199One wall where the trace form vanishes: the spinning key, critical damping, the ISCO.pairs withB197The triangle’s first prime keeps the cubic record that both books erase.builds onB191A constant is invisible to the connection energy; the opposite records it. 

[paper/votkp_v3_2/code/atlas_map/ATLAS_REPORT_1.md:315 @21] Across the black-hole paper, the connection-energy paper and the neutrino ledger the same split appears: readings even under the wall's involution survive it, readings odd under it sum to zero there. The books, the metric determinant, fidelity and the contour count are even; the signature, the curvature's sign, the orientation on the cover, the direction an edge runs and the third-order Bargmann invariant are odd. The ledger's about-half is, on this reading, an even quantity read on one clock. The sentence is a map of the land; none of the four tests of this atlas proves the link between the two halves. 

[paper/votkp_v3_2/code/atlas_map/ATLAS_REPORT_1.md:323 @34] REFERENCE Beyond the Event Horizon v10 §4.2, §6 · Connection Energy v16 §11 · the old atlas  ·  LINKS carried from B174, B71, B172, B180, B202, B203, B206, B35; feeds W5 

[paper/votkp_v3_2/code/atlas_map/ATLAS_REPORT_1.md:337 @247] - NOT ON A CARD. Cards with a disc: B98 ("The real atomic walk carries a hyperbolic distance... a film map needs a conjugate in the denominator before it is a disk isometry"), B175 and W5 (the Smith disc for a boundary, "one disc holds the horizon's load and the neutrino boundary"), B190 (the duality disc P^2 + V^2 <= 1). None carries a fixed centre of a loop, a Poincare radius, the point (3,2,2,0), 1/sqrt 2 or ln(3 + 2 sqrt 2). Ingredient held: the hyperbolic length of a rung is the rapidity (B98, B189, B203: "Lrec = 2 Sum |rj| = 2 Sum artanh sqrt(E-j/E+j)"). 

[paper/votkp_v3_2/code/atlas_map/ATLAS_REPORT_2_all_cards.md:17 @41] B14 (1) The budget is written on horizons: S/k = A/4 l_P^2; photon gas s/k = (4 pi^2/45)(kT/hbar c)^3. (2) reading; Atlas v5 (Egan-Lineweaver). (3) No: the only "radiation" is photon-gas entropy; no radiation pressure. 

[paper/votkp_v3_2/code/atlas_map/ATLAS_REPORT_2_all_cards.md:93 @150] B90 (1) The clock exponent says whether a system is open: Hermitian -> 1, non-Hermitian -> 1/2 (arc length ~ dist^(n/2)); the lapses 1/2 Schwarzschild, 1 extremal. (2) theorem; Gravity Ledger Ed. 6 Prop 17. (3) No (a "1/2" exponent, not the Gamma^2 = 1/2 wall). 

[paper/votkp_v3_2/code/atlas_map/ATLAS_REPORT_2_all_cards.md:169 @114] B174 (1) A mirror-fixed object keeps only its even readings: <K>_N(q^-1) = conj <K>_N(q). (2) measured; Black Hole v8.4 sec 3.6 Prop 12. (3) No. 

[paper/votkp_v3_2/code/atlas_map/ATLAS_REPORT_2_all_cards.md:170 @122] B180 (1) Fisher information is eight times the shape kinetic energy: F_Q = 4 g(G-dot, G-dot) = 8K. (2) theorem; Black Hole v8.4 sec 3.8. (3) No. 

[paper/votkp_v3_2/code/atlas_map/ATLAS_REPORT_2_all_cards.md:171 @160] B181 (1) Gravity holds a flat configuration flat: omega^2 = d^2V/d sigma3^2 = 2 dV/dw3, square: dU/dw3 = 2 sqrt2 - 1, omega = 1.912290. (2) measured; Black Hole v8.4 sec 3.7. (3) No (an unrelated 2 sqrt2 - 1). 

[paper/votkp_v3_2/code/atlas_map/ATLAS_REPORT_2_all_cards.md:175 @176] B182 (1) Delay is not trapping: x-dot = P - (kappa + a)x + b y, y-dot = a x - b y; mean residence (1 + a/b)/kappa; at b = 0 a share a/(kappa + a) stays. (2) theorem; Black Hole v8.4 sec 4.5 (BH-SPINE-09). (3) No (a two-compartment return; "limits do not commute" at b -> 0 is the Jordan-like double root but no formula for R6). 

```

Pointers:
- VERSION LABEL "Black Hole v8.4" with its own section numbers, as the atlas cards' reference line: B175 "Reference Black Hole v8.4 · §4.2, Proposition 13 · membrane resistivity from Damour; Thorne, Price and Macdonald · BH-SPINE-09, BH-MATCHED-12" (ATLAS_REPORT_1 l.124); B176 "Reference Black Hole v8.4 · §5, Proposition 14 and eq. (offset) · CHSH value from Chen et al. 2002 · BH-BELL-11, BH-OFFSET-15" (l.140); B174 "measured; Black Hole v8.4 sec 3.6 Prop 12"; B180 "theorem; Black Hole v8.4 sec 3.8"; B181 "measured; Black Hole v8.4 sec 3.7"; B182 "theorem; Black Hole v8.4 sec 4.5 (BH-SPINE-09)" (ATLAS_REPORT_2 l.169-175).
  In bh.md (edition 10) the same results sit at: Prop 13 in §5.2; Prop 14 in §7.1; Prop 12 in §4.6; Fisher F_Q = 8K in §4.8; stiffness in §4.7; delay-is-not-trapping in §5.5. So v8.4 and v10 share proposition numbers 12, 13, 14 but section numbers differ (v8.4 §3.6/§4.2/§5 vs v10 §4.6/§5.2/§7.1). Recorded as a version difference.
- ATLAS_REPORT_1 l.315-323 (card W-series, "reading"): "Across the black-hole paper, the connection-energy paper and the neutrino ledger the same split appears: readings even under the wall's involution survive it, readings odd under it sum to zero there. ... The sentence is a map of the land; none of the four tests of this atlas proves the link between the two halves." "REFERENCE Beyond the Event Horizon v10 §4.2, §6 · Connection Energy v16 §11 · the old atlas".
- CARD_INDEX l.222: "W5 | L3 → L7 | reading | One disc holds the horizon's load and the neutrino boundary."
- B14 source line: "reading; Atlas v5 (Egan-Lineweaver)". B90: "theorem; Gravity Ledger Ed. 6 Prop 17".


### 2.8.5 paper/votkp_v3_0 ... v3_3 : VOTKP_ELEMENTAL_PEELING_PAPER_v3_x_20261112.html (8.9 MB, 9.8 MB, 9.8 MB, 9.8 MB): passages only

Each of the four HTML files has the same three tight matches, and the extracted passages are byte-identical across v3.0, v3.1, v3.2, v3.3 (compared by cmp after removing the file label). No version adds, drops or changes black-hole text. None of the four mentions "Event Horizon" or the black-hole paper by name. The rest of these files was NOT read.
Passages (from v3_3; line numbers are that file's):
```
[paper/votkp_v3_3/VOTKP_ELEMENTAL_PEELING_PAPER_v3_3_20261112.html:580 @17240]  zero-temperature Gibbs state are different preparations and cannot be substituted for one another.</p> <p><strong>A structural comparison.</strong> Proposition 19.3 is the non-rigid side of a pattern whose rigid side appears in the spacetime Penrose inequality [Cited: OpenAI 2026c, an unrefereed manuscript produced by an OpenAI model]. There the invariant mass of initial data obeying the dominant energy condition is bounded below by the minimum enclosing area, <span class="math inline">\(m\ge\sqrt{A_{\min}/16\pi}\)</span>, and equality, under its stated horizon hypotheses, reconstructs the whole exterior as a slice of Schwarzschild spacetime (its Theorems 2.2 and 10.2): two numbers fix a ge

[paper/votkp_v3_3/VOTKP_ELEMENTAL_PEELING_PAPER_v3_3_20261112.html:927 @96] <li><code>Observer</code> (7): Theorem 3.1 in all five parts, with the Cayley–Hamilton horizon.</li> 

[paper/votkp_v3_3/VOTKP_ELEMENTAL_PEELING_PAPER_v3_3_20261112.html:968 @757] ly charged ions, Phys. Rev. Research (2025), <a href="https://arxiv.org/abs/2504.11237">arXiv:2504.11237</a>: the <span class="math inline">\(n\)</span>-before-<span class="math inline">\(n+1\)</span> filling order.</li> <li>OpenAI, Spacetime Penrose inequalities: enclosing area, charge, and rigidity, OpenAI Math Release preprint, 5 October 2026 (OpenAI 2026c), a manuscript produced by an OpenAI model, not refereed: Theorems 2.2 and 10.2 read at source; cited for the structural comparison of §19.</li> </ul> 

```
(l.927 "Cayley–Hamilton horizon" is the predictive-quotient horizon of the Observer Lean module, not a black-hole horizon.)

## 2.9 votkp-lean__claude_moving-matrix-of-balls/research/moving-matrix-of-balls/ : hit files (passages only; rest NOT read)

### 2.9.1 swarm-notes/matter_notes.md (61,257 B) and swarm-notes/disk_notes.md (48,782 B)

matter_notes.md is "Reader notes: 'Matter, Then On Down' (matter_then_on_down_v4.pdf)", Drive file 1jDy6nD8DAOaxZmMETbEBFgCKMMGlzOPP, "all 86 printed pages read"; paper date "4 November 2026 Edition 4". Lines 1-20 read plus all tight-match passages:
```
[matter_notes.md:17 @425]  Beasley, draft v3, 3 November 2026)". Script s14 says v4 source is 110,959 characters against v3's 41,821, and that v4 merges v3 + the "formal edition" (Matter, Gases and VOTKP: Formal Research Edition, 3 Nov 2026, prepared with OpenAI tools) + "review" items + bridges from Beyond the Event Horizon ed. 10 + new figures. 

[matter_notes.md:32 @390] hart; 2.2 The weight between; 2.3 Stability and a certified count; 2.4 What the local record cannot say; 2.5 Number variance and mutual information; 2.6 The speed of the record; 2.7 Warm matter). 3 One chart for all of it. 4 The disk as a reflection chart (4.1 gap step; 4.2 matched load; 4.3 Hawking fermion pair). 5 The atom. 6 Gas (6.1 One neutral state; 6.2 The gas carries the peel back). 7 The nucleus. 8 Present records and later responses (8.1 to 8.4). 9 Opened matter (9.1 opened chain; 9.2 where it leaves the disk; 9.3 offset as the exit's clock; 9.4 two kinds of wall). 10 The even and odd halves. 11 What is proved, what is measured, what is open. Appendices A, B, C. 

[matter_notes.md:113 @50] - Two kinds of wall (from Beyond the Event Horizon ed. 10, section 8): spectral wall: a real pair turns complex; the unfolding coordinate is real on one side and imaginary on the other; the Jordan block at the wall is a property of the operator in every frame. Geometric wall: spectrum stays real on both sides; the Jordan block lives only in a folded chart. 

[matter_notes.md:235 @79] 16. Gap step reflects with the peel coordinate, eqs (5),(6). [T][V]; black-hole-paper sharp-step and polar-mirror checks [V][S]. 

[matter_notes.md:236 @88] 17. Prop 4.1 Schur-Cayley boundary: passive inside, matched load at centre. [T]; horizon = centre of chart [S] ("sourced; ed. 10 section 5.2"). 

[matter_notes.md:237 @20] 18. Prop 4.2 Hawking fermion record tau = hbar omega/k_B T_H, Gamma = tanh(hbar omega/2 k_B T_H). [T][V]; the reading (fixes only omega/T_H, phase never enters) [H][S]. 

[matter_notes.md:256 @69] 37. Two kinds of wall; opened matter's exit is spectral [S]; ringdown numbers [V][S]. 

[matter_notes.md:258 @60] 39. "What survives a wall is the even half." [H]; black-hole orientation sign case [S]. 

[matter_notes.md:265 @235] Appendix A "does not prove": the [V] numerical statements; the two inputs of A.2; the Saha equation; the 1/Z coefficients and Thomas-Fermi law cited in VOTKP; the IQGT relation g_par Delta^2 = 9; the membrane resistivity of the horizon; NUBASE2020 and NIST data. These are "outside inputs". 

[matter_notes.md:296 @67] - Gap-step matching: 200 random steps, 3.3e-16 (s13 K5). Black-hole paper's sharp-step matching: 1.7e-11 on 400 random steps, 89 beyond the turning point. Its preregistered Richardson gate for smooth steps FAILED (residual 7.4e-4 against 1e-5). Polar stratum |r| = 1 to 2e-16. 

[matter_notes.md:297 @9] - Horizon: surface resistivity 4 pi in Gaussian units = impedance of empty space mu_0 c = 376.73 ohm; normalised Z_b = 1, S_b = 0. [S] 

[matter_notes.md:298 @9] - Hawking record check: six frequencies, seven phases, 5e-16. Fig 3 points: hbar omega/k_B T_H = 0.25, 0.5, 1, 2, 4, 8 -> Gamma = 0.124353, 0.244919, 0.462117, 0.761594, 0.964028, 0.999329. Gap ratios Delta_2/Delta_1 = 1/8, 1/4, 1/2, 3/4 -> Gamma = -0.777778, -0.6, -0.333333, -0.142857. 

[matter_notes.md:299 @89] - Fig 3 right, four readings: occupation nu = 0.2 -> eps = 1.386294, Gamma = 0.6; Hawking eps = 1 -> 0.462117; helium eps = ln(I_1/I_0) = 0.794457 -> 0.377575; gap step ratio 2 -> eps = 0.693147, Gamma = 0.333333. 

[matter_notes.md:357 @10] - Ringdown (Beyond the Event Horizon ed. 10, two-mode model): single excitation factors reach 391 with nearly opposite phases while their sum stays fixed. 

[matter_notes.md:375 @171] - Reflection chart: the three boundary readings "are different normalised impedances on one chart; their relative positions are not a physical identification". The horizon match "belongs to the horizon surface, not to the hole seen from far away: the potential barrier outside reflects long-wavelength radiation". Fermion record needs 0 < C < I: "the bosonic pair has no full state". 

[matter_notes.md:385 @12] - Black-hole paper's preregistered Richardson gate for smooth steps failed (7.4e-4 against 1e-5). 

[matter_notes.md:402 @401] ts Kept under Peeling v2.9 (doi 10.5281/zenodo.23340757); The Offset Belongs to the Boundary v31 (doi 10.5281/zenodo.22555919); The Offset Speed Limit v1.1; The Weight Between v2.3; The Angle Between the Rails; A Measured Lorentzian Cone in Non-Hermitian Quantum Geometry v8; Beyond the Event Horizon: What Survives at a Rigidity Wall, edition 10; Intrinsic Quantum Geometric Tensor on the Grassmannian and Spectral Lower Bounds on Dissipation (doi 10.5281/zenodo.20768258); Light Keeps the Ledger research edition 7.2; Matter, Gases and VOTKP: Formal Research Edition 3 Nov 2026 (repository matter-disk/external/gpt_formal_20261103); Physics Atlas v7 (B1 to B207) and Atlas II (W1 to W9) (atlas cards cited in text: W9, B202, B204). 

[matter_notes.md:403 @197] Outside: Calabrese and Cardy 2004; Peschel 2003; Peschel and Eisler 2009; Wolf, Verstraete, Hastings, Cirac 2008; Chang, You, Wen, Ryu 2020; Unsold 1927; Thorne, Price, Macdonald (Membrane Paradigm) 1986; Kondev et al. NUBASE2020; Kramida et al. NIST ASD. 

[matter_notes.md:430 @51] - Walls (Section 9.4, from Beyond the Event Horizon ed. 10 section 8): spectral wall vs geometric wall, definitions in Section 2 of these notes. Opened matter's exit is spectral. "What grows is the non-orthogonality of single levels, and what crosses the rim is the record of the pair." At such a point a single eigenprojector grows like |A_12|/gap while the pair projector, its contour trace (count 2) and the trace-log ledger stay exact. 

[matter_notes.md:452 @53]  - Astrophysical object mentioned: only a black-hole horizon, as a structural comparison [S]: stretched horizon surface resistivity 4 pi (Gaussian) = 376.73 ohm, matched load at the chart centre; Hawking fermion record at Gamma = tanh(hbar omega/2 k_B T_H). 

[disk_notes.md:312 @69] - What belongs to the field and is cited: Ivanov; Schrodinger-Penrose zig-zag; Dirac field with Yukawa coupling; Berry phase; Polyakov loop as confinement order parameter of the SU(3) spin model; conformal geometric algebra Cl(4,1); Kelvin's vortex-atom programme with Tait's knot tables. "they are not extended." 

```
Numbers held here (matter_notes l.298-299, Fig 3 of Matter v4): Hawking record points ħω/k_BT_H = 0.25, 0.5, 1, 2, 4, 8 -> Γ = 0.124353, 0.244919, 0.462117, 0.761594, 0.964028, 0.999329; gap ratios Δ2/Δ1 = 1/8, 1/4, 1/2, 3/4 -> Γ = −0.777778, −0.6, −0.333333, −0.142857; gap step ratio 2 -> Γ = 0.333333.
disk_notes.md l.312 is a citation list containing "Schrodinger-Penrose zig-zag" only; no black-hole passage.


### 2.9.2 swarm-notes/neutrino_notes.md (90,408 B): black-hole lines only

Notes on "What the Neutrino State Must Keep" v6, 11 November 2026 (the neutrino paper; SEPARATE paper). 20 tight matches read. All are either (i) primordial black hole formation in McCormick's GR code, e.g. l.16 title "What the Neutrino State Must Keep: Hidden Angular Structure, the Flux-Shear Link and the Threshold for Primordial Black Hole Formation"; l.66 "Endpoint rule: a run moves the bracket only if it ends in a detected horizon (2M/R >= 1 with U < 0) or disperses"; l.175 "Reproduction: delta = 0.5109, n=3, eps_dec=2 forms a black hole (at eps 6.61), inside McCormick's bracket (0.51074, 0.51109)."; l.298 "McCormick-suggested readout window (neutrino flux and enclosed mass between first maximum and apparent horizon): untested."; or (ii) "horizon" meaning observation/time horizon of a Gramian (l.34, 68, 223, 250, 253, 254, 321, 336, 344, 406, 428), e.g. l.321 "IQGT: one-parameter metric only; parameter is observation horizon, 'not physical motion of a neutrino or quantum Fisher information'". NO passage cites or uses the black-hole paper "Beyond the Event Horizon".

### 2.9.3 Mixer / app files in this branch

Tight matches: Three_Balls_on_the_Field_Mixer_v1_20261115.html (3), v2-one-light/Three_Balls_on_the_Field_Mixer_v2_20261115.html (3), two-balls-linked/Three_Balls_on_the_Field_Mixer_v3_20261115.html (3), two-balls-linked/Two_Balls_Linked_v1_20261115.html (3): passages given in 2.10.3 below (they embed the same app text as lh_app).
No tight match (not read): glued-v2/Moving_Matrix_of_Balls_Glued_v2_20261115.html, glued-v2/src/app_v2.js, glued-v2/src/lh_app.js, series-of-the-ball/The_Series_of_the_Ball_v1_20261115.html, series-of-the-ball/src/app_series.js, solar-field/Solar_Field_v1_20261115.html, solar-field/v2-real-bodies/Solar_Field_v2_20261115.html, solar-v3/Solar_Field_v3_20261116.html, solar-v4/Solar_Field_v4_20261116.html, the three Three_Balls_on_the_Field_Surprise_v1/v2/v3 files.


## 2.10 votkp-lean__claude_light-at-the-hypersurface : hit files

### 2.10.1 research/light-at-the-hypersurface/PLAN_light_at_the_hypersurface.md (42,744 B, 390 lines): lines 1-90 and 305-326 READ; the rest NOT read

"# PLAN: Light at the Hypersurface (Mixer v1). For: Jeromie Beasley. Plan date: 15 Nov 2026." It is a build plan for an interactive mixer ("One Poincaré ball in the peel coordinate. One feed operator: the peel step B(u, r)...").
Its grade vocabulary (sec 1): `LEAN · <theorem name>` ("Lean theorem in his repo. Lean was not re-run in this session"), `PROVED · <paper, theorem>`, `CHECKED · <tol>`, `CARD · Bnn (theorem / reading / conjecture)`, `READING`, `DRIVE`, `DRAWING`, `HYPOTHESIS`.
HOW IT USES THE BLACK-HOLE LEAN REPO (sec 2, models M1-M3), verbatim:
- M1 l.45: "Step amplitudes from continuity `1 + r = t` and flux continuity `Y₁(1 − r) = Y₂ t`: `r = (Y₁ − Y₂)/(Y₁ + Y₂)`, `t = 2Y₁/(Y₁ + Y₂)`. `LEAN · step_matching`, `GH/event-horizon-lean/EventHorizon/Edition10.lean:47`."
- l.46: "Flux balance `r² + (Y₂/Y₁) t² = 1`. `LEAN · flux_balance`, `Edition10.lean:59`."
- l.47: "...also `tanh_half_log` `Edition10.lean:108`".
- l.50: "Reciprocity `Γ₂₁ = −Γ₁₂`. `LEAN · reciprocity`, `Edition10.lean:69`."
- l.51: "Extremes: matched load `Γ = 0` (`LEAN · matched_load`, `:77`); mirror `Γ = 1` when the far admittance is zero (`LEAN · polar_mirror`, `:81`). Horizon as matched load: `CARD · B175 (theorem for the identity; horizon reading structural)`."
- M2 l.63: "Oblique admittance `Y = ω √(a − C)` with `a = g∥` and `C = a₁ sin²θ₁`; the transverse metric drops out. `LEAN · admittance`, `Edition10.lean:35`."
- l.61: "`R₁ sin²θ₁ = R₂ sin²θ₂` ... `CARD · B30 (theorem)`; path witness in the card: conserved to 2e-11, 50° in `R = 1` leaves at 22.5210° in `R = 4`." l.62: "Lean algebra of the squared law: `LEAN · three_body_refraction_is_squared_snell` (`GH/square-case-lean/OperatorFirst/HypersurfaceSquareLineage.lean:155`), `snell_implies_squared_snell` (`:40`); ... `LEAN · refraction_law` (`GH/upg-lean/UPGDiracRefraction.lean:120` ...); barrier `LEAN · turning_barrier` (`:137`)."
- l.68: "Declared identification (`READING`): `a = R = n²` ... This matches `HypersurfaceSquareLineage.lean`'s own header (`g = n²` is a declared model identification, not an identification with a spacetime metric)."
- M3 l.80: "`|Γ|² = 1` when `Y₂ = iκₑ`. `LEAN · total_reflection`, `Edition10.lean:86`. Turning point `a₂ < a₁ s ⇔ a₂/a₁ < s`. `LEAN · turning_point`, `:102`."
- l.83: "Decay rate from the model equation `k² = b ω² (a − C)/a` (docstring of `admittance`): `|k⊥| = ω √(b (C − a₂)/a₂)`, penetration depth `ℓ = 1/|k⊥|`. Chip: `PROVED · Event Horizon Ed. 10 §8.3 (model equation)`."
(All seven Edition10.lean line numbers quoted by the plan (35, 47, 59, 69, 77, 81, 86, 102, 108) match the theorem start lines in the file as read in Part 1.)
Fences (l.317, l.324): "9. B175: the horizon reading is structural. No reflection is not full absorption." "16. Not included: Hawking record as a temperature, photon ring `e^{−π}`, Painlevé–Gullstrand slopes (these live in a declared Schwarzschild model; his intrinsic metric is not to be swapped for a spacetime metric). `light-ledger-lean/Rigidity.lean` (header says not compiled) is not used as law."

### 2.10.2 research/2026-11-07/PATH_NOTES.md (60,807 B): one passage read; rest NOT read

l.38: "§15.2 Einstein addition / radar reading fenced: 'a representation: nothing in the atom moves'. §19.6 Penrose comparison labelled structural, 'not a spacetime metric'." No black-hole passage otherwise. research/2026-11-07/scripts/branch_cut_01.py: no tight match; not read.

### 2.10.3 lh_app_v1.js (54,233 B), lh_app_v2.js (54,850 B) and every mixer HTML that embeds them: passages

```
[votkp-lean__claude_light-at-the-hypersurface/research/light-at-the-hypersurface/lh_app_v1.js:273 @100] const E_B = eye({ id:'B', title:'B · One face is one reflecting step', section:'M1 · Event Horizon Ed. 10; VOTKP Film, Smith', grade: LEAN('step_matching, flux_balance') + LEAN('interface_smith') + LEAN('matched_load, polar_mirror') + CARD('B189 (theorem)') + READ, 
[votkp-lean__claude_light-at-the-hypersurface/research/light-at-the-hypersurface/lh_app_v1.js:283 @103] const E_D = eye({ id:'D', title:'D · Total return and the gap', section:'M3 · card B39; Event Horizon Ed. 10; Film', grade: CARD('B39 (theorem)') + LEAN('total_reflection, turning_point') + LEAN('film_is_oplus') + PROV('Event Horizon Ed. 10 §8.3 (model equation)') + CHK('1e-12'), 
[votkp-lean__claude_light-at-the-hypersurface/research/light-at-the-hypersurface/lh_app_v2.js:273 @100] const E_B = eye({ id:'B', title:'B · One face is one reflecting step', section:'M1 · Event Horizon Ed. 10; VOTKP Film, Smith', grade: LEAN('step_matching, flux_balance') + LEAN('interface_smith') + LEAN('matched_load, polar_mirror') + CARD('B189 (theorem)') + READ, 

[votkp-lean__claude_light-at-the-hypersurface/research/light-at-the-hypersurface/lh_app_v2.js:283 @103] const E_D = eye({ id:'D', title:'D · Total return and the gap', section:'M3 · card B39; Event Horizon Ed. 10; Film', grade: CARD('B39 (theorem)') + LEAN('total_reflection, turning_point') + LEAN('film_is_oplus') + PROV('Event Horizon Ed. 10 §8.3 (model equation)') + CHK('1e-12'), 

```

Mixer HTML files carrying the SAME two eye definitions as lh_app (each has exactly these 3 tight matches, read; nothing else in these 0.7-1.5 MB files was read): Light_at_the_Hypersurface_Mixer_v1_20261115.html, Light_at_the_Hypersurface_Mixer_v2_20261115.html (light-at-the-hypersurface branch); Three_Balls_on_the_Field_Mixer_v1_20261115.html, v2-one-light/Three_Balls_on_the_Field_Mixer_v2_20261115.html, two-balls-linked/Three_Balls_on_the_Field_Mixer_v3_20261115.html, two-balls-linked/Two_Balls_Linked_v1_20261115.html (moving-matrix-of-balls branch); research/2026-11-16/flock_of_balls/Flock_of_Balls_on_the_Field_Mixer_v1_20261116.html, research/2026-11-16/flock_breakdown_film/Flock_of_Balls_on_the_Field_Mixer_v2_20261116.html (votkp-research-20261110 branch).
The text in each: eye B "B · One face is one reflecting step", section 'M1 · Event Horizon Ed. 10; VOTKP Film, Smith', grade LEAN('step_matching, flux_balance') + LEAN('interface_smith') + LEAN('matched_load, polar_mirror') + CARD('B189 (theorem)') + READ; eye D "D · Total return and the gap", section 'M3 · card B39; Event Horizon Ed. 10; Film', grade CARD('B39 (theorem)') + LEAN('total_reflection, turning_point') + LEAN('film_is_oplus') + PROV('Event Horizon Ed. 10 §8.3 (model equation)') + CHK('1e-12'). No version of these mixers changes this text.
No tight match (not read): paper/votkp_vacuum_disk_v1/votkp_vacuum_disk_v1.html and .md, research/light-at-the-hypersurface/surprise/Light_at_the_Hypersurface_Surprise_v1.html, two-trees/paper/Two_Trees_in_One_Ball_v4.html.

## 2.11 votkp-lean__claude_votkp-research-20261110/research/2026-11-16/ : flock files

Hit files: flock_breakdown_film/BRIEF.md (5,197 B), L1_peel_face_smith.md (43,332 B), L2_ball_geometry_turns_rim.md (51,613 B); passages below read, rest NOT read. No tight match (not read): Flock_Breakdown_v1_20261116.html, Flock_Breakdown_v2_20261116.html, W_watch_phase1.md, Flock_of_Balls_on_the_Field_White_v1/v2 html. Mixer v1/v2: see 2.10.3.
```
[BRIEF.md:25 @32] - `/home/claude/gh/event-horizon-lean/` (`EventHorizon/Edition10.lean`), `/home/claude/gh/nonnormality-connection-energy-lean/`, 

[L1_peel_face_smith.md:11 @151] Lean status, stated once for the whole report. `grep -rn "sorry"` over `votkp-lean/VOTKP/*.lean`, `votkp-lean/two-trees/lean/*.lean` and `event-horizon-lean/EventHorizon/*.lean` finds the word only in header comments ("no sorry") and README badges; no proof uses it. No `axiom` or `native_decide` in the five files of this lineage. Imports: `Edition10.lean` imports Mathlib only (line 24); `Smith.lean` Mathlib only (line 21); `Film.lean` imports `VOTKP.Smith` (line 20); `Directed.lean` imports Mathlib and `VOTKP.Smith` (lines 21–22); `ThinFilm.lean` Mathlib only (line 16). So no theorem below has a `sorry` anywhere in its dependency inside these repositories. The repositories' READMEs state that every push is built against Lean v4.34.1 and Mathlib v4.34.1 with a kernel replay and an axiom audit (`votkp-lean/README.md:72–77`, `event-horizon-lean/README.md:56–58`). Lean is not installed on this machine, so the build was **not re-run here: untested locally**; what was done here is reading each statement and the grep. 

[L1_peel_face_smith.md:11 @852] P.Smith` (line 20); `Directed.lean` imports Mathlib and `VOTKP.Smith` (lines 21–22); `ThinFilm.lean` Mathlib only (line 16). So no theorem below has a `sorry` anywhere in its dependency inside these repositories. The repositories' READMEs state that every push is built against Lean v4.34.1 and Mathlib v4.34.1 with a kernel replay and an axiom audit (`votkp-lean/README.md:72–77`, `event-horizon-lean/README.md:56–58`). Lean is not installed on this machine, so the build was **not re-run here: untested locally**; what was done here is reading each statement and the grep. 

[L1_peel_face_smith.md:27 @43] - **Ed10** = `/home/claude/gh/event-horizon-lean/EventHorizon/Edition10.lean` 

[L1_peel_face_smith.md:108 @103] - **Grade.** LEAN · matched_load, LEAN · polar_mirror. The sentence "this is the class of the horizon" (docstring :75–76) is a reading; atlas card B175 carries it (grade: theorem for the identity, per PLAN:51). 

[L1_peel_face_smith.md:126 @175] - **Grade.** LEAN · admittance for the identity. The model equation k² = bω²(a − C)/a is in the docstring (:32–34) and is graded in PLAN:83 as "PROVED · Event Horizon Ed. 10 §8.3 (model equation)". 

[L2_ball_geometry_turns_rim.md:64 @79] | B175 | 5297 | "A boundary that returns nothing is a matched load; the horizon is one." Claim: "I − Sb*Sb = 4(WVb)* Herm L (WVb) Zb = Lbb − LbiLii⁻¹Lib = W*LW · Sb = (Zb − I)(Zb + I)⁻¹ the power not returned is interior dissipation, pulled back". Closed when: "No reflection is not full absorption, and an impedance says nothing about causality; the horizon reading is structural." | theorem (the plan's chip "theorem for the identity; horizon reading structural" matches the card's own closing line) | `external_kernel_mapped` to `light-ledger-lean/LightBridges/Boundary.lean`; scope "no horizon or general-relativistic boundary realization." | 

[L2_ball_geometry_turns_rim.md:65 @367] | B182 | 5482 | "Delay is not trapping: a slow return and no return differ only in the limit." Claim: "ẋ = 𝒫 − (κ + a)x + by, ẏ = ax − by mean residence (1 + a/b)/κ for b > 0 · at b = 0 a share a/(κ + a) stays the limits t → ∞ and b ↓ 0 do not commute". Closed when: "This is a conditional energy model, not a simulation of a star or a black hole." | theorem | `not_mapped_in_audited_scope`. | 

[L2_ball_geometry_turns_rim.md:176 @315] - Grade: LEAN · film_is_oplus for the composition (it is a definitional identity, `rfl`); CHECKED · 1e-12 for the flux; "exact for a plane-parallel gap of width w" (plan line 84) and "the faces here are parallel only along their common perpendicular" (plan §6 item 15). The decay rate is `PROVED · Event Horizon Ed. 10 §8.3 (model equation)` in the plan; not re-opened here. 

```
L1_peel_face_smith.md ("L1 — The peel step, the face, Smith addition and layers ... Report written 16 Nov 2026") quotes these Edition10.lean statements with line numbers, each matching the file as read in Part 1: Ed10:108 tanh_half_log; Ed10:47 step_matching; Ed10:59 flux_balance; Ed10:69 reciprocity; Ed10:77 matched_load; Ed10:81 polar_mirror; Ed10:86 total_reflection; Ed10:102 turning_point; Ed10:35 admittance; Ed10:183 fermion_smith.
L1 l.11: "Lean is not installed on this machine, so the build was **not re-run here: untested locally**; what was done here is reading each statement and the grep." L1 l.108: "The sentence 'this is the class of the horizon' (docstring :75–76) is a reading; atlas card B175 carries it (grade: theorem for the identity, per PLAN:51)."
L2 l.64: card B175 Lean mapping: "`external_kernel_mapped` to `light-ledger-lean/LightBridges/Boundary.lean`; scope 'no horizon or general-relativistic boundary realization.'"; l.65 card B182: "`not_mapped_in_audited_scope`".

## 2.12 votkp-lean hit files with NO black-hole passage on a tight search, by branch (not read beyond the search)

Already named in 2.6, 2.8, 2.9, 2.10, 2.11. In addition none of the hit files sits in votkp-lean__main or votkp-lean__claude_votkp-research-20261107.
Total hit-list files in hits_votkp.txt: 98. With real black-hole passages: the matter-disk notes/papers (2.1-2.5), READ_RECORD_06/07 (2.6), the november-gather files (2.7), AtlasCards3D.js, NOTES_12, T14 NOTES, ATLAS read, atlas_map reports, VOTKP v3.0-3.3 (Penrose comparison only), matter_notes, PLAN, lh_app v1/v2, eight mixer HTMLs, BRIEF/L1/L2.


---

# PART 3. neutrinos-leave-lean branches and nonnormality-connection-energy-lean (black-hole passages only)

The neutrino papers are SEPARATE papers and are kept separate here. Hit list: ledgers/hits_neutrino_nonnormal.txt (70 files, all in neutrinos-leave-lean branch checkouts; none of the 70 is inside nonnormality-connection-energy-lean). NONE of the 70 files was read in full. For every .tex file each citation of the black-hole paper was pulled with context and read; the HTML files are builds of the same texts (their match counts track the tex) and were only counted.

## 3.1 How the neutrino paper line cites the black-hole paper

Every main-line version carries exactly one item, a reference-list entry, and no in-text \cite{BH} was found by search in the files checked (v3, v5.2, v12):
`\bibitem{BH} J.~Beasley, \emph{Beyond the Event Horizon: What Survives at a Rigidity Wall}, edition 10.1 (2026).`
Locations: claude-joint-paper-memory/paper/neutrinos_leave_v3.tex l.199; neutrinos_leave_v3_1.tex l.199; fable-audit-lean/paper/neutrinos_leave_v4.tex l.239; v4-shear-link-runs/paper/neutrinos_leave_v4_1.tex l.255; neutrinos_leave_v5.tex l.265; neutrinos_leave_v5_1.tex l.265; neutrinos_leave_v5_2.tex l.268; claude_v6-what-the-state-must-keep/paper/v6/neutrinos_v6.tex l.294; v7/neutrinos_v7.tex l.307; v8/neutrinos_v8.tex l.307; v9/neutrinos_v9.tex l.307; v10/neutrinos_v10.tex l.307; v12/neutrinos_v12.tex l.312.
The label is "edition 10.1" in all thirteen. (bh.md l.2: "no v10_1 found by title search" on Drive; event-horizon-lean names "research edition 10". See Disagreements.)
No citation of the black-hole paper: paper/joint/what_the_present_must_keep_v1_1.tex, the sec_new_*.tex and sec_physics.tex part files, ZENODO descriptions, READMEs, CITATION.cff, PROVENANCE.md, LIMITATIONS.md, FableAudit.lean, swarm reports, card_B1.js, twin_run.py, build scripts, INDEPENDENT_CHECK_REPORT.md. Their "black hole" matches are all primordial-black-hole formation (the neutrino papers' own subject, e.g. titles "When the Neutrinos Leave: Decoupling History and the Threshold for Primordial Black Hole Formation" and "What the Neutrino State Must Keep: Hidden Angular Structure, the Flux-Shear Link and the Threshold for Primordial Black Hole Formation", McCormick's code "PBH_neutrino_simulation", Zenodo doi:10.5281/zenodo.23808375 and 10.5281/zenodo.24129915) and "horizon" there means horizon entry/apparent horizon in the collapse code or an observation horizon. These were counted (table in 3.3), not transcribed.

## 3.2 "The Neutrinos at the Wall" drafts d2 (14 Nov 2026) and d3 (15 Nov 2026): the one neutrino-line paper that USES the black-hole paper in its text

Files: paper/neutrinos_at_the_wall/d2/neutrinos_at_the_wall_d2.tex (40,144 B), d3/neutrinos_at_the_wall_d3.tex (59,385 B), their HTML builds, LEDGER_d1_to_d2.md, LEDGER_d2_to_d3.md (read in full, 3,140 B), watchers/fable_cutlist.md, sonnet_cutlist.md. Reference entry in BOTH drafts (d2 l.312, d3 l.371): "\bibitem{BH} J.~Beasley, \emph{Beyond the Event Horizon: What Survives at a Rigidity Wall}, research edition 10 (2026), Zenodo doi:10.5281/zenodo.21147366; Lean: github.com/dicipler-pixel/event-horizon-lean." Sources list (d2 l.290, d3 l.343): "Fold and survival principles: Beyond the Event Horizon, edition 10 [BH], its proof log v7, and the event-horizon-lean repository (40 theorems)." (A "proof log v7" of the black-hole paper is named here; it is not in any repo I read.)

All passages citing [BH], verbatim (d2 and d3, with tex line and character offset):
```
=== neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/neutrinos_at_the_wall/d2/neutrinos_at_the_wall_d2.tex
[l.45 @188] A wall, in the author's work, is not where something is stored. It is where a memory exerts force: what arrives across it is written in, and nothing written inside can write back~\cite{BH}. The author has met such walls in four-body shape space, in the static base of a horizon, at the innermost stable orbit of a black hole, in the Sun's dynamo, and at an optical threshold~\cite{BH,Light,Suns}. At each of them two things survive exactly, whatever happens to the individual eigenvectors: the contour's ledger and the orientation. \emph{The contour keeps the ledger; the orientation keeps the trace}~\cite{BH}. 

[l.62 @301] where $E^\mp$ are the two books of the link~\cite{VOTKP,Atlas}. Exchanging the ends negates $\Gamma$. A matched link, $z=1$, sits at the centre of the chart. The same coordinate is the reflection coefficient of a wave at a change of spectral gap, $\Gamma=\tanh(\tfrac12\ln\Delta_2/\Delta_1)$~\cite{BH}, and the neutrino transport's flux--shear link $\Gamma_{12}=(r-1)/(r+1)$~\cite{NU10}. 

[l.75 @610] ven\_outside}), and atlas cards B189 and B199~\cite{TwoTrees,Atlas,SMball}. Below $z_w$ a loop of two perpendicular steps closes as a turn: a bound orbit, a spin. Above it the loop climbs and turns: a flyby. On the wall it does neither: a Jordan block, the parabolic case. A black hole carries exactly this kind of wall at its innermost stable circular orbit, where the wobble generator of circular orbits squares to zero and gravity's effective power reaches the inverse cube, $p=2+6M/r=3$~\cite{BH}. 

[l.91 @47] The author sorts walls into two kinds~\cite{BH}. 

[l.97 @34] \begin{theorem}[the fold~\cite{BH}, Theorem 2]\label{thm:fold}\grade{derived there} 

[l.101 @99] What passes a wall of either kind is fixed by two survival principles. Both are proved in~\cite{BH}. 

[l.106 @89] Compression at a wall, $X\mapsto PXP$, is ``rank compression, not destruction''~\cite{BH}. 

[l.179 @82] for every pair phase, a point on the same Smith chart as the wall~\cite{BH,Offset}. A boson record has no ``full'' state and no such offset. Light and the neutrinos are the boson and fermion sides of one thermal record \grade{derived in~\cite{BH}; reading}. At decoupling the typical neutrino ($\hbar\omega\approx3.15\,k_BT$) sits at $\Gamma=0.918$, far out on the chart \grade{derived}. 

[l.221 @352] Boyle, Finn and Turok used this analytic continuation to propose that the universe before the bang is the CPT image of the one after it, a universe/anti-universe pair, with $a(\eta)$ odd~\cite{BFT,BFT2}. The author arrived at the same structure independently, as a theorem about folds in four-body shape space and the static base of a horizon~\cite{BH}. What the author's work adds is what crosses the fold. That is the subject of the rest of this section. 

[l.224 @278] The two survival principles of Section~\ref{sec:wall} apply to any fold. The contour ledger passes unchanged. The orientation passes as a $\mathbb Z_2$ sign that the even observer cannot read. Readings odd under the mirror cancel across it, while even readings survive~\cite{BH}. In the author's words, what passes is ``all that can get compressed and still remain allowed a new rewinding after'' \grade{the author's statement, 14 November 2026}. 

[l.290 @67] \item \textbf{Fold and survival principles:} \emph{Beyond the Event Horizon}, edition~10~\cite{BH}, its proof log v7, and the event-horizon-lean repository (40 theorems). 

[l.312 @12] \bibitem{BH} J.~Beasley, \emph{Beyond the Event Horizon: What Survives at a Rigidity Wall}, research edition 10 (2026), Zenodo doi:10.5281/zenodo.21147366; Lean: github.com/dicipler-pixel/event-horizon-lean. 

=== neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/neutrinos_at_the_wall/d3/neutrinos_at_the_wall_d3.tex
[l.45 @188] A wall, in the author's work, is not where something is stored. It is where a memory exerts force: what arrives across it is written in, and nothing written inside can write back~\cite{BH}. The author has met such walls in four-body shape space, in the static base of a horizon, at the innermost stable orbit of a black hole, in the Sun's dynamo, and at an optical threshold~\cite{BH,Light,Suns}. At each of them two things survive exactly, whatever happens to the individual eigenvectors: the contour's ledger and the orientation. \emph{The contour keeps the ledger; the orientation keeps the trace}~\cite{BH}. 

[l.62 @301] where $E^\mp$ are the two books of the link~\cite{VOTKP,Atlas}. Exchanging the ends negates $\Gamma$. A matched link, $z=1$, sits at the centre of the chart. The same coordinate is the reflection coefficient of a wave at a change of spectral gap, $\Gamma=\tanh(\tfrac12\ln\Delta_2/\Delta_1)$~\cite{BH}, and the neutrino transport's flux--shear link $\Gamma_{12}=(r-1)/(r+1)$~\cite{NU10}. 

[l.75 @830] .1, checked numerically. The Lean repository was not re-run for this paper. Below $z_w$ a loop of two perpendicular steps closes as a turn: a bound orbit, a spin. Above it the loop climbs and turns: a flyby. On the wall it does neither: a Jordan block, the parabolic case. A black hole carries exactly this kind of wall at its innermost stable circular orbit, where the wobble generator of circular orbits squares to zero and gravity's effective power reaches the inverse cube, $p=2+6M/r=3$~\cite{BH}. 

[l.104 @47] The author sorts walls into two kinds~\cite{BH}. 

[l.110 @34] \begin{theorem}[the fold~\cite{BH}, Theorem 2]\label{thm:fold}\grade{derived there} 

[l.114 @99] What passes a wall of either kind is fixed by two survival principles. Both are proved in~\cite{BH}. 

[l.119 @89] Compression at a wall, $X\mapsto PXP$, is ``rank compression, not destruction''~\cite{BH}. 

[l.194 @82] for every pair phase, a point on the same Smith chart as the wall~\cite{BH,Offset}. A boson record has no ``full'' state and no such offset. Light and the neutrinos are the boson and fermion sides of one thermal record \grade{derived in~\cite{BH}; reading}. At decoupling the typical neutrino ($\hbar\omega\approx3.15\,k_BT$) sits at $\Gamma=0.918$, far out on the chart \grade{derived}. A chemical potential shifts the offset of every pair by the same amount, $\tau=(\hbar\omega-\mu)/k_BT$; in the cosmological literature this is the degeneracy $\xi=\mu/k_BT$. Section~\ref{sec:fold} shows it is the one neutrino record a hot rebirth cannot erase. 

[l.236 @342] Boyle, Finn and Turok used this analytic continuation to propose that the universe before what they take to be the bang is the CPT image of the one after it, with $a(\eta)$ odd~\cite{BFT,BFT2}. The continuation is theirs. The author's fold theorem was proved for other systems, four-body shape space and the static base of a horizon~\cite{BH}. What the author's work adds is the bookkeeping of what crosses. 

[l.239 @278] The two survival principles of Section~\ref{sec:wall} apply to any fold. The contour ledger passes unchanged. The orientation passes as a $\mathbb Z_2$ sign that the even observer cannot read. Readings odd under the mirror cancel across it, while even readings survive~\cite{BH}. In the author's words, what passes is ``all that can get compressed and still remain allowed a new rewinding after'' \grade{the author's statement, 14 November 2026}. 

[l.343 @67] \item \textbf{Fold and survival principles:} \emph{Beyond the Event Horizon}, edition~10~\cite{BH}, its proof log v7, and the event-horizon-lean repository (40 theorems). 

[l.371 @12] \bibitem{BH} J.~Beasley, \emph{Beyond the Event Horizon: What Survives at a Rigidity Wall}, research edition 10 (2026), Zenodo doi:10.5281/zenodo.21147366; Lean: github.com/dicipler-pixel/event-horizon-lean. 

=== neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/neutrinos_at_the_wall/d3/watchers/fable_cutlist.md
[l.24 @157] - Fix: withdraw Prediction 2 and Tests row 7; report G as a negative result. The survival-principle sentence (lines 104, 224) can stay as a statement of [BH], not as a neutrino prediction. Card N2 also says "odd readings cancel". 

```

Further black-hole lines of d3 (grep black hole / static base / innermost), verbatim:
```
34:A record carried across this wall is physical. In S.~McCormick's general-relativistic collapse code, two neutrino states identical in density, flux, stress and every metric quantity, differing only in hidden angular structure planted at decoupling, have black-hole thresholds up to $5.5\times10^{-3}$ apart. In a Gaussian universe, at the planted amplitude, that changes the number of black holes near $4\times10^4\,M_\odot$ by 5--47\%, with a sign set by the record's orientation; a record of random orientation still raises it, by up to 8\%. The planted amplitude is engineered, half of each cell's positivity margin, and only that amplitude was run.
36:Finally, the author's fold theorem, proved for four-body shape space and the static base of a horizon, has a counterpart in the radiation era. Cosmic time is the even observable and the conformal scale factor the signed one, so the apparent beginning is a fold at finite distance, and the path continues through it to the mirror. What crosses depends on how hot the passage is. A hot rebirth erases any record that collisions act on directly: an angular record keeps $10^{-4}$ of itself from $3$\,MeV and $10^{-145}$ from $10$\,MeV. Through a cold fold a few per cent returns, with no even/odd rule. What no collision can erase is a conserved charge. For the neutrinos that is the lepton asymmetry, the author's offset $\mu$: collisions keep each flavour's number, oscillations keep the total, and the electron sea's thermal potential holds the flavour split while it is hot, though full three-flavour treatments share the asymmetry among the flavours before nucleosynthesis. A universe that recurs through such folds can hand the neutrinos a common chemical potential at decoupling, which helium and $N_{\rm eff}$ measure.
45:A wall, in the author's work, is not where something is stored. It is where a memory exerts force: what arrives across it is written in, and nothing written inside can write back~\cite{BH}. The author has met such walls in four-body shape space, in the static base of a horizon, at the innermost stable orbit of a black hole, in the Sun's dynamo, and at an optical threshold~\cite{BH,Light,Suns}. At each of them two things survive exactly, whatever happens to the individual eigenvectors: the contour's ledger and the orientation. \emph{The contour keeps the ledger; the orientation keeps the trace}~\cite{BH}.
51:\item a record carried across it changes how many black holes form (Section~\ref{sec:bh}), and a universe that passes through a fold rather than beginning can supply a record, in the one form a hot rebirth cannot erase (Section~\ref{sec:fold}).
75:This is the author's BallJoins J3--J4 and atlas cards B189 and B199~\cite{TwoTrees,Atlas,SMball}. The Lean statements \texttt{line\_ratio} and \texttt{five\_inside\_seven\_outside} cover the ratio identity $(1+\Gamma)/(1-\Gamma)=z$ and the cases $z=5$ (inside) and $z=7$ (outside); the exact threshold is the algebra of Appendix A.1, checked numerically. The Lean repository was not re-run for this paper. Below $z_w$ a loop of two perpendicular steps closes as a turn: a bound orbit, a spin. Above it the loop climbs and turns: a flyby. On the wall it does neither: a Jordan block, the parabolic case. A black hole carries exactly this kind of wall at its innermost stable circular orbit, where the wobble generator of circular orbits squares to zero and gravity's effective power reaches the inverse cube, $p=2+6M/r=3$~\cite{BH}.
106:\item At a \emph{spectral} wall a real pair of eigenvalues turns complex along a physical path, and the Jordan block is present in every frame. Examples: the innermost stable orbit, the Sun's dynamo wave, the optical threshold.
107:\item At a \emph{geometric} wall, or fold, the spectrum stays real on both sides. The block belongs only to the folded chart, and the path passes through to a mirror configuration. Examples: the coplanar wall of four-body shape space, the static base of a horizon.
111:Let an even observable $X$ be the square of a signed coordinate $\lambda$, $X=\lambda^2$. A metric that is regular and even in $\lambda$ reads $ds^2=dX^2/(4c^2X)$ in $X$. Its coefficient diverges at $X=0$, while the distance to the wall is finite and the path continues to $\lambda<0$, the mirror. On four-body shape space $c=1$ and the distance from the wall to $w_3=\varepsilon$ is $\arcsin\sqrt\varepsilon$. On the Schwarzschild static base $c=\kappa$, the surface gravity.
203:\section{What the record does to black holes}\label{sec:bh}
206:McCormick showed that free-streaming neutrinos raise the threshold for primordial black-hole formation, by about $0.235R_\nu$ in the linear compaction, and that the effect fades as decoupling becomes gradual~\cite{McC}. The author ran McCormick's public general-relativistic code to the decoupling surface and changed only the hidden part of the angular intensity~\cite{NU10}. The two matched states agree in their $\ell\le2$ moments to $4\times10^{-16}$, in the lapse and constraints to below $10^{-14}$, and bit for bit in every fluid and metric array. Their thresholds:
217:\subsection{How many black holes}
226:\grade{estimate: standard Gaussian abundance on the measured shifts; Appendix C}. A record invisible to every fluid and metric quantity at decoupling changes the number of black holes by 5--47\% at the planted amplitude. That is about three to eleven times what the flux--shear split does in McCormick's physical collision model~\cite{NU10}. Because $\beta$ is convex in $\delta_c$, a record of random orientation does not average away: it raises the abundance, by 0.3--1.4\% for $\ell=4$, 0.6--3.8\% for $\ell=3$ and 1.2--8.1\% along the Gramian's leading direction, and rarer black holes gain more. Three cautions. McCormick notes that spectral distortions of the microwave background already exclude Gaussian perturbations of this size at these masses; the Gaussian estimate shows the size of the effect, and for heavy-tailed statistics his step is smaller~\cite{McC}. McCormick sets abundance with the linear compaction rather than the compaction peak used here. And the amplitudes are half each cell's positivity margin, chosen for the test; only that amplitude was run, so how the shift, and every number in the table, scales with the size of the record is untested.
229:With $M_H(T)\simeq1.5\times10^5M_\odot(T/\mathrm{MeV})^{-2}$ ($g_*=10.75$) and $\epsilon=1/(aHr_m)\propto1/T$, a scale that reaches $\epsilon_{\rm dec}$ when its collisions switch off crossed the horizon at $T_{\rm dec}\epsilon_{\rm dec}$, so its mass is $M\simeq M_H(T_{\rm dec})/\epsilon_{\rm dec}^2$. The decoupling runs ($\epsilon_{\rm dec}=2$, $T_{\rm dec}\approx1$\,MeV) sit near $4\times10^4M_\odot$, inside the range $10^4$--$10^6M_\odot$ where McCormick's rise of the threshold sets in~\cite{McC}. Supermassive black-hole seeds are proposed in this range~\cite{Dave} \grade{estimate}.
236:Boyle, Finn and Turok used this analytic continuation to propose that the universe before what they take to be the bang is the CPT image of the one after it, with $a(\eta)$ odd~\cite{BFT,BFT2}. The continuation is theirs. The author's fold theorem was proved for other systems, four-body shape space and the static base of a horizon~\cite{BH}. What the author's work adds is the bookkeeping of what crosses.
286:\begin{prediction}[the neutrino step in the black-hole mass function]\label{pred:mf}\grade{H, conditional}
292:Penrose's conformal cyclic cosmology joins aeons through conformal geometry, with the carrier being the conformal structure of the boundary~\cite{CCC}. Steinhardt and Turok's cyclic model joins them through colliding branes~\cite{ST}. Boyle, Finn and Turok's universe is a single CPT pair~\cite{BFT}. Here the carrier is a kept transport sector, and what it carries is fixed by what collisions cannot reach: through a hot passage, a conserved charge, the offset $\mu$; through a passage that stays below about $2$\,MeV, also the hidden record that the door writes into matter. The fold is a theorem of the author's operator geometry, not an input, and what crosses it is fixed by the same survival principles that govern black-hole walls.
303:black-hole step shifted or broadened (conditional on a passage below 2\,MeV) & mass function matches the blank-start step to a few per cent & SMBH-seed demographics; $\mu$-distortion; GW populations\\\bottomrule\end{tabular}\end{center}
310:\item The black-hole shifts are for engineered amplitudes on one profile, in McCormick's relaxation model. A hot rebirth erases an angular record, so a recurrent universe delivers one only through a passage that stayed below about $2$\,MeV or a sealed pocket, neither shown. The idealised radiation fold is not such a passage: its density diverges at $\eta=0$.
318:The neutrinos sit at a wall. Their heaviest mass step lies on the parabolic wall of a pair of equal perpendicular steps, $\Gamma^2=\tfrac12$, within $0.41\sigma$, while every charged step lies far past it. Seen from the rim, the same wall is the step that first sends every light direction outside one $45^\circ$ cap into the opposite one. Their decoupling is a wall in motion, where the kept mode of their transport dies at $\kappa=2k/\pi$ and they let go first. A hidden angular record at decoupling changes how many black holes form, by tens of per cent at the planted amplitude. The apparent beginning of the radiation era is a fold of the clock, and the author's survival principles say what passes through it. A hot passage erases the angular record; what it cannot erase is the lepton asymmetry, the offset $\mu$ the neutrinos carry as fermions. The predictions are concrete:
325:\item if a passage stayed below about $2$\,MeV, a black-hole mass function at the neutrino step that a blank start cannot produce.
382:\bibitem{McC} S.~McCormick, \emph{Free-streaming neutrinos raise the threshold for primordial black hole formation}, v1.1 (2026); code github.com/quasilocal/PBH\_neutrino\_simulation, Zenodo doi:10.5281/zenodo.23808375 and 10.5281/zenodo.24129915.
394:\bibitem{Dave} Dave, Yan, Ilyas and Cai, \emph{Evading the CMB $\mu$-distortion bound on supermassive primordial black hole seeds with non-Gaussian tails}, arXiv:2607.03138 (2026).
```

d2 -> d3 differences in the black-hole-related text (from the passages above and LEDGER_d2_to_d3.md):
- d2 l.221: "The author arrived at the same structure independently, as a theorem about folds in four-body shape space and the static base of a horizon [BH]." d3 l.236: "The continuation is theirs. The author's fold theorem was proved for other systems, four-body shape space and the static base of a horizon [BH]. What the author's work adds is the bookkeeping of what crosses."
- d2 l.75 cites "(... five_inside_seven_outside), and atlas cards B189 and B199"; d3 l.75 adds "The Lean repository was not re-run for this paper."
- LEDGER_d2_to_d3: "**Parity prediction withdrawn.** Experiment G shows no even/odd rule."; "**Black-hole prediction** is now conditional on a passage below about 2 MeV"; "**Black-hole mass corrected** (Fable). M = M_H(T_dec)/eps_dec², about 4e4 M_sun, not 6e5. This is the same inversion as in the v11/v12 physics section, `sec_physics.tex`, which still needs this correction."; "Fold wording. ... 'Bang' is no longer in the author's voice."; under Not changed / open: "The full read of all prior black-hole work (answer 11) was not part of this pass."
- watchers/fable_cutlist.md l.24: "Fix: withdraw Prediction 2 and Tests row 7; report G as a negative result. The survival-principle sentence (lines 104, 224) can stay as a statement of [BH], not as a neutrino prediction."
What these drafts attribute to the black-hole paper (their words): walls where "nothing written inside can write back"; "The contour keeps the ledger; the orientation keeps the trace"; Γ = tanh(½ ln Δ2/Δ1) as reflection at a change of spectral gap; ISCO wall with p = 2+6M/r = 3; two kinds of wall (spectral: ISCO, Sun's dynamo wave, optical threshold; geometric: coplanar wall of four-body shape space, static base of a horizon); "theorem [the fold [BH], Theorem 2] \grade{derived there}" with ds² = dX²/(4c²X), c = 1 on shape space (distance arcsin√ε), c = κ on the Schwarzschild static base; "rank compression, not destruction"; fermion record on the Smith chart "\grade{derived in [BH]; reading}"; odd readings cancel across the mirror, even survive.

## 3.3 Match counts for all 70 neutrino hit files (cite = "Beyond the Event/Event Horizon/[BH]/rigidity wall"; bh-pbh = black hole/PBH/primordial; horizon)

```
0 cite / 8 bh-pbh / 0 horizon : neutrinos-leave-lean__claude-joint-paper-memory/CITATION.cff
0 cite / 3 bh-pbh / 0 horizon : neutrinos-leave-lean__claude-joint-paper-memory/PROVENANCE.md
0 cite / 4 bh-pbh / 0 horizon : neutrinos-leave-lean__claude-joint-paper-memory/README.md
0 cite / 8 bh-pbh / 1 horizon : neutrinos-leave-lean__claude-joint-paper-memory/paper/joint/what_the_present_must_keep_v1_1.html
0 cite / 9 bh-pbh / 1 horizon : neutrinos-leave-lean__claude-joint-paper-memory/paper/joint/what_the_present_must_keep_v1_1.tex
2 cite / 19 bh-pbh / 4 horizon : neutrinos-leave-lean__claude-joint-paper-memory/paper/neutrinos_leave_v3.html
2 cite / 19 bh-pbh / 4 horizon : neutrinos-leave-lean__claude-joint-paper-memory/paper/neutrinos_leave_v3.tex
2 cite / 19 bh-pbh / 4 horizon : neutrinos-leave-lean__claude-joint-paper-memory/paper/neutrinos_leave_v3_1.html
2 cite / 19 bh-pbh / 4 horizon : neutrinos-leave-lean__claude-joint-paper-memory/paper/neutrinos_leave_v3_1.tex
0 cite / 3 bh-pbh / 2 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/cards/source_v9/card_B1.js
0 cite / 1 bh-pbh / 0 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/cards/source_v9/twin_run.py
0 cite / 1 bh-pbh / 0 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/neutrinos_at_the_wall/d2/LEDGER_d1_to_d2.md
5 cite / 22 bh-pbh / 9 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/neutrinos_at_the_wall/d2/The_Neutrinos_at_the_Wall_d2_2026-11-14.html
5 cite / 22 bh-pbh / 9 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/neutrinos_at_the_wall/d2/neutrinos_at_the_wall_d2.tex
0 cite / 3 bh-pbh / 0 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/neutrinos_at_the_wall/d3/LEDGER_d2_to_d3.md
5 cite / 23 bh-pbh / 12 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/neutrinos_at_the_wall/d3/The_Neutrinos_at_the_Wall_d3_2026-11-15.html
5 cite / 24 bh-pbh / 12 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/neutrinos_at_the_wall/d3/neutrinos_at_the_wall_d3.tex
1 cite / 1 bh-pbh / 3 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/neutrinos_at_the_wall/d3/watchers/fable_cutlist.md
0 cite / 2 bh-pbh / 1 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/neutrinos_at_the_wall/d3/watchers/sonnet_cutlist.md
13 cite / 39 bh-pbh / 32 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/v10/What_the_Neutrino_State_Must_Keep_v10_2026-11-13.html
13 cite / 41 bh-pbh / 32 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/v10/What_the_Neutrino_State_Must_Keep_v10_art_2026-11-13.html
0 cite / 5 bh-pbh / 0 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/v10/ZENODO_DESCRIPTION_v10.txt
0 cite / 2 bh-pbh / 0 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/v10/art/build_art_html.py
0 cite / 4 bh-pbh / 0 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/v10/art/check_same_text.py
2 cite / 28 bh-pbh / 10 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/v10/neutrinos_v10.tex
0 cite / 3 bh-pbh / 0 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/v10/sec_new_door.tex
0 cite / 1 bh-pbh / 0 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/v10/sec_new_mcc.tex
13 cite / 51 bh-pbh / 33 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/v12/What_the_Neutrino_State_Must_Keep_v12_2026-11-14.html
13 cite / 53 bh-pbh / 33 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/v12/What_the_Neutrino_State_Must_Keep_v12_art_2026-11-14.html
0 cite / 2 bh-pbh / 0 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/v12/code/v12/build_art_html.py
2 cite / 31 bh-pbh / 10 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/v12/neutrinos_v12.tex
0 cite / 9 bh-pbh / 1 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/v12/sec_physics.tex
13 cite / 37 bh-pbh / 32 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/v6/What_the_Neutrino_State_Must_Keep_v6_2026-11-11.html
2 cite / 28 bh-pbh / 10 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/v6/neutrinos_v6.tex
0 cite / 1 bh-pbh / 0 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/v6/sec_new_mcc.tex
0 cite / 1 bh-pbh / 3 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/v6/swarm/A1_stage/REPORT.md
0 cite / 7 bh-pbh / 1 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/v6/swarm/A2b_decisive/REPORT.md
0 cite / 1 bh-pbh / 0 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/v6/swarm/A3_instrument/REPORT.md
0 cite / 1 bh-pbh / 2 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/v6/swarm/A4_restart/REPORT.md
0 cite / 2 bh-pbh / 0 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/v6/swarm/BRIEF.md
13 cite / 39 bh-pbh / 32 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/v7/What_the_Neutrino_State_Must_Keep_v7_2026-11-13.html
0 cite / 5 bh-pbh / 0 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/v7/ZENODO_DESCRIPTION_v7.txt
2 cite / 28 bh-pbh / 10 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/v7/neutrinos_v7.tex
13 cite / 39 bh-pbh / 32 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/v8/What_the_Neutrino_State_Must_Keep_v8_2026-11-13.html
0 cite / 5 bh-pbh / 0 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/v8/ZENODO_DESCRIPTION_v8.txt
2 cite / 28 bh-pbh / 10 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/v8/neutrinos_v8.tex
0 cite / 1 bh-pbh / 0 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/v8/sec_new_mcc.tex
13 cite / 39 bh-pbh / 32 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/v9/What_the_Neutrino_State_Must_Keep_v9_2026-11-13.html
13 cite / 41 bh-pbh / 32 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/v9/What_the_Neutrino_State_Must_Keep_v9_art_2026-11-13.html
13 cite / 41 bh-pbh / 32 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/v9/What_the_Neutrino_State_Must_Keep_v9_art_r2_2026-11-13.html
0 cite / 5 bh-pbh / 0 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/v9/ZENODO_DESCRIPTION_v9.txt
0 cite / 41 bh-pbh / 0 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/v9/art/INDEPENDENT_CHECK_REPORT.md
2 cite / 28 bh-pbh / 10 horizon : neutrinos-leave-lean__claude_v6-what-the-state-must-keep/paper/v9/neutrinos_v9.tex
0 cite / 1 bh-pbh / 0 horizon : neutrinos-leave-lean__fable-audit-lean/Neutrinos/FableAudit.lean
2 cite / 21 bh-pbh / 4 horizon : neutrinos-leave-lean__fable-audit-lean/paper/neutrinos_leave_v4.tex
0 cite / 1 bh-pbh / 0 horizon : neutrinos-leave-lean__v4-shear-link-runs/LIMITATIONS.md
0 cite / 4 bh-pbh / 0 horizon : neutrinos-leave-lean__v4-shear-link-runs/README.md
12 cite / 31 bh-pbh / 7 horizon : neutrinos-leave-lean__v4-shear-link-runs/paper/neutrinos_leave_v4_1.html
2 cite / 22 bh-pbh / 4 horizon : neutrinos-leave-lean__v4-shear-link-runs/paper/neutrinos_leave_v4_1.tex
12 cite / 29 bh-pbh / 16 horizon : neutrinos-leave-lean__v4-shear-link-runs/paper/neutrinos_leave_v5.html
2 cite / 21 bh-pbh / 10 horizon : neutrinos-leave-lean__v4-shear-link-runs/paper/neutrinos_leave_v5.tex
12 cite / 33 bh-pbh / 16 horizon : neutrinos-leave-lean__v4-shear-link-runs/paper/neutrinos_leave_v5_1.html
0 cite / 3 bh-pbh / 0 horizon : neutrinos-leave-lean__v4-shear-link-runs/paper/neutrinos_leave_v5_1.log
2 cite / 21 bh-pbh / 10 horizon : neutrinos-leave-lean__v4-shear-link-runs/paper/neutrinos_leave_v5_1.tex
13 cite / 32 bh-pbh / 19 horizon : neutrinos-leave-lean__v4-shear-link-runs/paper/neutrinos_leave_v5_2.html
2 cite / 21 bh-pbh / 10 horizon : neutrinos-leave-lean__v4-shear-link-runs/paper/neutrinos_leave_v5_2.tex
0 cite / 4 bh-pbh / 0 horizon : neutrinos-leave-lean__v4-shear-link-runs/paper/zenodo_description_v4_1.txt
0 cite / 4 bh-pbh / 0 horizon : neutrinos-leave-lean__v4-shear-link-runs/paper/zenodo_description_v5.txt
0 cite / 4 bh-pbh / 0 horizon : neutrinos-leave-lean__v4-shear-link-runs/paper/zenodo_description_v5_1.txt
0 cite / 4 bh-pbh / 0 horizon : neutrinos-leave-lean__v4-shear-link-runs/paper/zenodo_description_v5_2.txt
```

## 3.4 github/nonnormality-connection-energy-lean : what it proves that the black-hole paper cites or could cite

READ: README.md (12,324 B) in full; theorem statements of NonNormality/Admissible.lean (234 lines) and NonNormality/Census.lean (113 lines) extracted with their doc-comments (all listed below); theorem NAMES of the other eight modules. NOT READ: proofs, STATEMENTS.md (17,410 B), LIMITATIONS.md (only its "not proved" headings seen), PROVENANCE.md, MATHLIB_FIT.md, FalseControls (17 files), checks/, numerics/, scripts.
A search of every .lean and .md file in this repo for black hole, horizon, ISCO, Schwarzschild, Hawking, Penrose, "matched" finds NOTHING. The repo never mentions the black-hole paper. Last commits: 2026-10-30 (d6016ec "CITATION.cff: date-released 2026-10-30, ORCID").
README headline: "Lean 4 / Mathlib formalization of Jeromie Beasley, *Non-normality is connection energy*, 30 October 2026, Zenodo record 23787997 (v15), concept DOI 10.5281/zenodo.22803572." "Everything is proved with no `sorry`, no warnings and only the three standard axioms". grep for sorry / axiom / native_decide / admit in NonNormality/*.lean: no hit. Lean v4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. "17 false statements that must fail to compile". "Not proved (see LIMITATIONS.md): the ring floors of the scalar-angle model".
Declaration counts by my grep (theorem/lemma; defs): Admissible 14; AntiHolonomy 18 (6 defs); Census 8; Flatten 6; Frobenius 4; Holonomy 17 (5 defs); Opposite 23 (2 defs); Passive 3; SelfCommutator 14 (2 defs); TwoBooks 36 (4 defs). Total 143 theorems/lemmas (other files quote "153 declarations v15" and "163 declarations": colour_v12.md l.165, READ_RECORD_06 l.121; counted differently, see Disagreements).

Main theorems on non-normality / connection energy (README statements, verbatim Lean):
- `norm_sq_selfCommutator_div_eight (hA : IsUnitaryConnection G A) (hD : ∀ i, (D i).IsHermitian) : ‖(diagonal D + A) * (diagonal D + A)ᴴ - (diagonal D + A)ᴴ * (diagonal D + A)‖ ^ 2 / 8 = connectionEnergy G A D` ("Identity (1): self-commutator energy = connection energy"; connectionEnergy = (∑ i, ∑ j, if G.Adj i j then ‖D i - A i j * D j * (A i j)ᴴ‖ ^ 2 else 0) / 2).
- `isStarNormal_iff_isParallel (hA) (hD) : IsStarNormal (diagonal D + A) ↔ ∀ i j, G.Adj i j → D i = A i j * D j * (A i j)ᴴ` ("Identity (2): normal ⇔ parallel").
- `parallelSectionsEquivHolonomyFixed (hA) (hG : G.Connected) (i₀ : ι) : parallelSections G A ≃ₗ[ℝ] holonomyFixed G A i₀` ("Identity (3)").
- `norm_sq_selfCommutator_eq (hD) (hA : Aᴴ = -A) : ‖[H, Hᴴ]‖ ^ 2 = 4 * ∑ i, ∑ j, ‖D i * A i j - A i j * D j‖ ^ 2`; `norm_sq_selfCommutator_scalar (d : ι → ℝ) (a) (ha : aᴴ = -a) : ‖[H, Hᴴ]‖ ^ 2 = 4 * ∑ i, ∑ j, ‖a i j‖ ^ 2 * (d i - d j) ^ 2`.
- Opposite energy: `norm_sq_mul_self_sub_conjTranspose_mul_self_div_eight`; `mul_self_eq_conjTranspose_mul_self_iff_isAntiParallel`; budget `connectionEnergy_add_oppositeEnergy_eq_degree : connectionEnergy G A D + oppositeEnergy G A D = 2 * ∑ i, (G.degree i : ℝ) * ‖D i‖ ^ 2`; `eq_zero_of_isStarNormal_of_mul_self_eq`; sum/difference theorems; bipartite swap.
- v11 two books: `selfCommutator_add_smul_one (H) (c : ℝ) : (H + c • 1) * (H + c • 1)ᴴ - (H + c • 1)ᴴ * (H + c • 1) = H * Hᴴ - Hᴴ * H` (a constant is invisible to the self-commutator); `connectionEnergy_trace_split`; `duality_sum_sq` (P² + V² + L² = 1); `scalar_edge_reflection`, `scalar_edge_flux`; `norm_sub_conj_sq_le_norm_add_conj_sq_of_posSemidef` (passive fields); projector fields; `connectionEnergy_doubleCover`; `connectionEnergy_mul_oppositeEnergy`.

Statements that match objects of the black-hole paper (matching is by formula; the repo itself draws no link to the black-hole paper):
- `tanh_half_log_odds {s : ℝ} (h0 : 0 < s) (h1 : s < 1) : Real.tanh (Real.log (s / (1 - s)) / 2) = 2 * s - 1` (the log-odds/Smith identity; BH ed.10 eq 39 has Γ = 1 − 2C = tanh(τ/2) with τ = log((1−C)/C); event-horizon-lean has `tanh_half_log`, `fermion_smith`).
- `four_mul_mul_one_sub (s : ℝ) : 4 * s * (1 - s) = 1 - (2 * s - 1) ^ 2`.
- `compression_defect {P H : Matrix n n ℂ} (hP : Pᴴ = P) (hPP : P * P = P) (hH : Hᴴ = H) : P * H * H * P - (P * H * P) * (P * H * P) = ((1 - P) * H * P)ᴴ * ((1 - P) * H * P)` (BH ed.10 sec 5.4(c) "P H^2 P - (PHP)^2 = PHQHP = BB^dagger" and eq 9 hidden block).
- `reflection_of_idempotent`: (P + P − 1)² = 1. `det_add_eq_det_sub_of_grading`. `transpose_selfCommutator`, `transpose_opposite` (books blind to direction).
- `trace_mul_eq_neg_of_second_order` (second-order overlap), `trace_swap_defect`, `trace_swap_of_odd`.

All 22 statements of Admissible.lean and Census.lean, verbatim with doc-comments:
```
/-- Coupling across the sectors and coupling inside a sector are trace-orthogonal. -/ theorem trace_mul_eq_zero_of_odd_of_even {Γ A B : Matrix n n R} (hΓ : Γ * Γ = 1) (hA : Γ * A * Γ = -A) (hB : Γ * B * Γ = B) : trace (A * B) = 0 
/-- **The admissibility defect.** Reflecting `X = A + B` by the sector sign `Γ` flips the trace form of the cross-sector part exactly; what is left over is twice the trace form of the within-sector part `B`. -/ theorem trace_swap_defect {Γ A B : Matrix n n R} (hΓ : Γ * Γ = 1) (hA : Γ * A * Γ = -A) (hB : Γ * B * Γ = B) : trace ((A + B) * (A + B)) + trace ((Γ * (A + B)) * (Γ * (A + B))) = 2 * trace (B * B) 
/-- **The exact swap.** For coupling only across the sectors, the reflection reverses the trace form. -/ theorem trace_swap_of_odd {Γ X : Matrix n n R} (hΓ : Γ * Γ = 1) (hX : Γ * X * Γ = -X) : trace ((Γ * X) * (Γ * X)) = -trace (X * X) 
/-- A cross-sector `X` anticommutes, after conjugate transpose, with a Hermitian involution. -/ theorem conjTranspose_mul_of_odd {Γ X : Matrix n n ℂ} (hΓh : Γᴴ = Γ) (hΓ : Γ * Γ = 1) (hX : Γ * X * Γ = -X) : Xᴴ * Γ = -(Γ * Xᴴ) 
/-- **The half swap.** The Hermitian part of `Γ * X` is `Γ` times the skew part of `X`. -/ theorem add_conjTranspose_mul_of_odd {Γ X : Matrix n n ℂ} (hΓh : Γᴴ = Γ) (hΓ : Γ * Γ = 1) (hX : Γ * X * Γ = -X) : Γ * X + (Γ * X)ᴴ = Γ * (X - Xᴴ) 
/-- **The half swap, other half.** The skew part of `Γ * X` is `Γ` times the Hermitian part of `X`. -/ theorem sub_conjTranspose_mul_of_odd {Γ X : Matrix n n ℂ} (hΓh : Γᴴ = Γ) (hΓ : Γ * Γ = 1) (hX : Γ * X * Γ = -X) : Γ * X - (Γ * X)ᴴ = Γ * (X + Xᴴ) 
/-- A tangent to the idempotents has no block inside the image of `P`. -/ theorem mul_mul_eq_zero_of_tangent {P V : Matrix n n R} (hP : P * P = P) (hV : P * V + V * P = V) : P * V * P = 0 
/-- The first-order overlap of a curve of idempotents vanishes: `trace (P * V) = 0`. -/ theorem trace_mul_eq_zero_of_tangent {P V : Matrix n n R} (hP : P * P = P) (hV : P * V + V * P = V) : trace (P * V) = 0 
/-- **The second-order overlap.** If `W` is the second-order term of a curve of idempotents through `P` with tangent `V`, then `trace (P * W) = -trace (V * V)`: the overlap bends down exactly by the trace form of the tangent. -/ theorem trace_mul_eq_neg_of_second_order {P V W : Matrix n n R} (hP : P * P = P) (hV : P * V + V * P = V) (hW : V * V + V * V + P * W + W * P = W) : trace (P * W) = -trace (V * V) 
/-- **Linear record from log record.** For a two-outcome split `(s, 1 - s)`, the hyperbolic tangent of half the log-odds is `2 s - 1`. -/ theorem tanh_half_log_odds {s : ℝ} (h0 : 0 < s) (h1 : s < 1) : Real.tanh (Real.log (s / (1 - s)) / 2) = 2 * s - 1 
/-- **Even record.** The census of a two-outcome split is one minus the square of its linear record. -/ theorem four_mul_mul_one_sub (s : ℝ) : 4 * s * (1 - s) = 1 - (2 * s - 1) ^ 2 
/-- **The fixed point of the complement.** Any rule that adds to one over a two-outcome split assigns one half to the balanced split. -/ theorem apply_half_of_complement {F : ℝ → ℝ} (h : ∀ s, F s + F (1 - s) = 1) : F (1 / 2) = 1 / 2 
/-- **Koide as a Born half.** The Koide ratio is `2 / 3` exactly when the Born weight of the square-root vector on the democratic direction is `1 / 2`. -/ theorem koide_iff_born_half {x y z : ℝ} (hs : x + y + z ≠ 0) (hn : x ^ 2 + y ^ 2 + z ^ 2 ≠ 0) : (x ^ 2 + y ^ 2 + z ^ 2) / (x + y + z) ^ 2 = 2 / 3 ↔ (x + y + z) ^ 2 / (3 * (x ^ 2 + y ^ 2 + z ^ 2)) = 1 / 2 
/-- **Koide as a null vector.** The Koide ratio is `2 / 3` exactly when the square-root vector has equal weight along `(1, 1, 1)` and across it: the on-site book equals the hopping book. -/ theorem koide_iff_null {x y z : ℝ} (hs : x + y + z ≠ 0) : (x ^ 2 + y ^ 2 + z ^ 2) / (x + y + z) ^ 2 = 2 / 3 ↔ (x + y + z) ^ 2 / 3 - ((x ^ 2 + y ^ 2 + z ^ 2) - (x + y + z) ^ 2 / 3) = 0 
/-- Transposition negates and transposes the self-commutator. -/ theorem transpose_selfCommutator {n : Type*} [Fintype n] (H : Matrix n n ℂ) : Hᵀ * (Hᵀ)ᴴ - (Hᵀ)ᴴ * Hᵀ = -(H * Hᴴ - Hᴴ * H)ᵀ 
/-- Transposition transposes the opposite operator `H * H - Hᴴ * Hᴴ`. -/ theorem transpose_opposite {n : Type*} [Fintype n] (H : Matrix n n ℂ) : Hᵀ * Hᵀ - (Hᵀ)ᴴ * (Hᵀ)ᴴ = (H * H - Hᴴ * Hᴴ)ᵀ 
/-- For Hermitian `D` and skew-Hermitian `A`, the Hermitian part of `D + A` is `D`. -/ theorem add_conjTranspose_of_skew {n : Type*} {D A : Matrix n n ℂ} (hD : Dᴴ = D) (hA : Aᴴ = -A) : (D + A) + (D + A)ᴴ = D + D 
/-- **Compression.** The square of the compression falls short of the compression of the square by exactly the coupling to the complementary block. -/ theorem compression_defect {n : Type*} [Fintype n] [DecidableEq n] {P H : Matrix n n ℂ} (hP : Pᴴ = P) (hPP : P * P = P) (hH : Hᴴ = H) : P * H * H * P - (P * H * P) * (P * H * P) = ((1 - P) * H * P)ᴴ * ((1 - P) * H * P) 
/-- **A grading makes the determinant even in the coupling.** -/ theorem det_add_eq_det_sub_of_grading {n R : Type*} [Fintype n] [DecidableEq n] [CommRing R] {S D A : Matrix n n R} (hS : S * S = 1) (hD : S * D * S = D) (hA : S * A * S = -A) : det (D + A) = det (D - A) 
/-- The reflection `2 P - 1` of an idempotent is an involution. -/ theorem reflection_of_idempotent {n R : Type*} [Fintype n] [DecidableEq n] [Ring R] {P : Matrix n n R} (hPP : P * P = P) : (P + P - 1) * (P + P - 1) = 1 
/-- The two books of a complex number against `1` add up to `2 + 2 ‖z‖²`. -/ theorem normSq_one_sub_add_normSq_one_add (z : ℂ) : Complex.normSq (1 - z) + Complex.normSq (1 + z) = 2 + 2 * Complex.normSq z 
/-- The difference of the two books of a complex number against `1` is `4 Re z`. -/ theorem normSq_one_add_sub_normSq_one_sub (z : ℂ) : Complex.normSq (1 + z) - Complex.normSq (1 - z) = 4 * z.re 
```

Theorem/lemma names of the other modules:
```
[SelfCommutator] selfCommutator_diagonal_add diagonal_mul_sub_mul_diagonal_apply norm_sq_selfCommutator_eq IsUnitaryConnection.apply_eq_neg_conjTranspose norm_mul_sub_mul_eq_of_mem_unitaryGroup norm_sq_selfCommutator_div_eight connectionEnergy_eq_zero_iff connectionEnergy_nonneg isStarNormal_iff_isParallel IsUnitaryConnection.norm_mul_sub_mul_comm IsUnitaryConnection.norm_sub_conj_comm sum_sum_ite_adj_eq_two_mul_sum_edgeFinset norm_sq_selfCommutator_div_eight_eq_sum_edgeFinset norm_sq_selfCommutator_scalar 
[Holonomy] holonomy_nil holonomy_cons holonomy_append holonomy_concat IsUnitaryConnection.holonomy_mem_unitaryGroup IsUnitaryConnection.holonomy_reverse conj_eq_self_iff_commute IsParallel.eq_conj_holonomy mem_parallelSections_iff mem_parallelSections_iff_connectionEnergy_eq_zero mem_holonomyFixed_iff IsUnitaryConnection.mem_holonomyFixed_iff_commute IsUnitaryConnection.conj_holonomy_eq evalParallel_apply_coe evalParallel_injective IsUnitaryConnection.evalParallel_surjective parallelSectionsEquivHolonomyFixed_apply_coe 
[Flatten] comp_conjTranspose frobenius_norm_comp comp_selfCommutator norm_sq_selfCommutator_comp_div_eight isStarNormal_comp_iff isStarNormal_comp_iff_isParallel 
[Frobenius] frobenius_norm_sq frobenius_norm_sq_eq_re_trace frobenius_norm_unitary_mul frobenius_norm_mul_unitary 
[Opposite] frobenius_parallelogram norm_sq_add_conjTranspose_eq comp_add_conjTranspose comp_sub_conjTranspose eq_zero_of_eq_of_eq_neg mul_self_sub_conjTranspose_mul_self_diagonal_add diagonal_mul_add_mul_diagonal_apply norm_sq_mul_self_sub_conjTranspose_mul_self_eq norm_conj_of_mem_unitaryGroup norm_mul_add_mul_eq_of_mem_unitaryGroup norm_sq_mul_self_sub_conjTranspose_mul_self_div_eight oppositeEnergy_eq_zero_iff oppositeEnergy_nonneg mul_self_eq_conjTranspose_mul_self_iff_isAntiParallel connectionEnergy_add_oppositeEnergy connectionEnergy_add_oppositeEnergy_eq_degree eq_zero_of_isStarNormal_of_mul_self_eq sum_degree_mul_norm_sq_eq_zero_of_isStarNormal_of_mul_self_eq norm_sq_selfCommutator_add_norm_sq_mul_self_sub_div_eight norm_sq_selfCommutator_sub_norm_sq_mul_self_sub_div_eight connectionEnergy_eq_oppositeEnergy_of_bipartite oppositeEnergy_eq_connectionEnergy_of_bipartite IsAntiParallel.eq_conj_holonomy 
[AntiHolonomy] mem_antiParallelSections_iff mem_antiParallelSections_iff_oppositeEnergy_eq_zero mem_twistedHolonomyFixed_iff IsUnitaryConnection.eq_zero_of_mem_twistedHolonomyFixed_of_odd IsAntiParallel.eq_zero_of_odd_loop IsAntiParallel.eq_zero_of_odd_loop_of_connected IsUnitaryConnection.twisted_conj_holonomy_eq evalAntiParallel_apply_coe evalAntiParallel_injective IsUnitaryConnection.evalAntiParallel_surjective antiParallelSectionsEquivTwistedHolonomyFixed_apply_coe isParallel_iff_isAntiParallel_of_bipartite signFlip_apply_of_mem signFlip_apply_of_notMem signFlip_signFlip signFlip_add signFlip_smul signFlip_isHermitian 
[TwoBooks] scalar_edge_reflection scalar_edge_flux mul_eq_half_add_sq_sub_half_sub_sq frobeniusInner_self frobeniusInner_eq_re_trace_mul frobeniusInner_comm frobeniusInner_smul_left norm_sq_add_eq norm_sq_sub_eq norm_sq_smul_real frobeniusInner_sq_le duality_sum_sq duality_le_one doubleCover_edge_core norm_sq_of_projector norm_sub_sq_add_norm_add_sq_of_projector norm_sq_smul_one_add_of_trace_eq_zero norm_sub_conj_trace_split norm_add_conj_trace_split norm_sub_conj_sq_add_norm_add_conj_sq_of_projector selfCommutator_add_smul_one mul_self_sub_conjTranspose_mul_self_add_smul_one mul_self_sub_conjTranspose_mul_self_diagonal_add_smul_one connectionEnergy_trace_split oppositeEnergy_trace_split connectionEnergy_add_oppositeEnergy_of_projector doubleCover_adj doubleCover_adj_imp liftConnection_apply IsUnitaryConnection.liftConnection coverField_true coverField_false coverField_isHermitian sum_sum_prod_bool connectionEnergy_doubleCover connectionEnergy_mul_oppositeEnergy 
[Passive] re_trace_mul_nonneg_of_posSemidef norm_sub_sq_le_norm_add_sq_of_posSemidef norm_sub_conj_sq_le_norm_add_conj_sq_of_posSemidef 
```

Second repo with a near-identical name: github/-connection-energy-lean (README title "Non-Normality Is Connection Energy — Lean proofs"; badges "theorems-20", "sorry-0", paper DOI 10.5281/zenodo.22803572). Only the first 30 lines of its README were read. No black-hole content found by name search; not otherwise read.
The black-hole paper is cited BY the non-normality paper (nonnormality.md l.98, l.124 ref [33] "Beyond the Event Horizon: What Survives at a Rigidity Wall, v10", ISCO as [STRUCTURAL COMPARISON]); the reverse citation (BH ed.10 citing Non-Normality) does not appear in bh.md's list of notable self-references.


---

# PART 4. Other repos (hit list ledgers/hits_other_repos.txt, 40 files). Black-hole passages only; no file here was read in full unless said.

## 4.1 github/dicipler-pixel.github.io (the public site "Atlas Memoriae")

- balls/blackholes.json (78 B, READ IN FULL). Entire content: `{"generated": "2026-11-16T23:21:22Z", "ball": "blackholes", "items": []}`. Structure: three keys (generated timestamp, ball name, items array). The items array is EMPTY: the "blackholes" ball lists no entries.
- balls/unsorted.json (29,360 B; matches read): the black-hole paper sits in the "unsorted" ball instead: `"id": "zenodo-23493466", "kind": "zenodo", "title": "Beyond the Event Horizon: An Operator-First Theory of Persistent Geometry and Black Hole Dynamics", "date": "2026-10-20", "url": "https://doi.org/10.5281/zenodo.23493466", "license": "cc-by-4.0", "badge": "archived", "doi": "10.5281/zenodo.23493466", "balls": ["unsorted"]` (l.292-304); also `"id": "repo-event-horizon-lean"`, url https://github.com/dicipler-pixel/event-horizon-lean (l.642-646). Neutrino titles at l.21 and l.157.
- atlas.json (11,081 B; lines 1-12 and matches read) THEMES.blackholes (l.3-8): `{"title": "Beyond the Event Horizon: What Survives at a Rigidity Wall", "doi": "10.5281/zenodo.21147366"}`, `{"title": "When the Neutrinos Leave: Decoupling History and the Threshold for Primordial Black Hole Formation", "soon": true}`, `{"title": "Lean proofs: Beyond the Event Horizon", "url": "https://github.com/dicipler-pixel/event-horizon-lean", "note": "GitHub · event-horizon-lean"}`, `{"title": "Lean proofs: When the Neutrinos Leave", ...neutrinos-leave-lean}`. l.95: `"blackholes": {"name": "Black holes", "line": "Horizons, rigidity walls, and what survives at the edge."}`. l.111 position `{"px": 1500, "py": 190, "r": 150, "z": -34}`. l.124 ORDER lists "blackholes" second. (The site theme files the neutrino paper under "blackholes", marked "soon": true.) No version label for the black-hole paper in atlas.json.
- index.html (1,253,286 B; matches read): embeds the same THEMES block (l.35-38, 127, 143, 156); l.7 meta description "Atlas Memoriae: research in mathematics and physics by Jeromie Beasley. Black holes, gravity, suns, three bodies, ..."; l.394 hero image alt text 'A figure on a platform in a room of equations, looking out at a black hole, a sun, galaxies and a planet'; l.514 a 3D scene comment "2. BLACK HOLE: horizon, photon ring, Keplerian accretion disk with Doppler beaming, lensed halo"; l.845, 902 lensing code; l.933 embedded feed with the entry `"id": "zenodo-23493466", ... "title": "Beyond the Event Horizon: An Operator-First Theory of Persistent Geometry and Black Hole Dynamics", "date": "2026-10-20", "url": "https://doi.org/10.5281/zenodo.23493466"`; also neutrino records zenodo-24210039 (2026-11-14) and zenodo-23858157 (2026-11-01).
- search-index.json (51,363 B; matches read) l.258-266: id "zenodo-23493466", title as above, date 2026-10-20, and the search text: "beyond the event horizon: an operator-first theory of persistent geometry and black hole dynamics beyond the event horizon: what survives at a rigidity wall jeromie beasley · research edition 10 · october 2026 a black hole carries one wall of each kind. its horizon is a geometric fold: in the right coordinate it is smooth, and nothing breaks there. its innermost stable circular orbit is a spectr" (cut there in the file). l.566-574 repo entry: "event-horizon-lean lean 4 proofs for 'beyond the event horizon': four-body shape space as qutrit bures geometry, the coplanar wall w₃ = 0 where the metric blows up as 1/(6w₃), the triangular transport block, and a nonnegative discriminant away from the wall." l.904 (solar paper description): "...non-normal transport operators whose stress concentrates at rigidity interfaces, previously developed for the four-body shape manifold and its black-hole horizon analogue." l.255 formula-pictures: "yeganeh's black-hole formula taken apart".
- latest.json (6,462 B; matches read): "generated": "2026-11-17T02:01:16Z", "count": 20. Its only black-hole matches are the two neutrino titles (l.21, l.157). The black-hole paper is NOT among the 20 latest items.
- what-russell-saw.html (matches read): section id "horizon", "V · Beyond the horizon" (l.349-359): "Taken near a black hole, several of them read like field notes."; "Inside 6 GM/c² no circular orbit is stable. ... p = 2 + 6GM/(c²r) = 3 at r = 6 GM/c²"; "At 3 GM/c² light itself travels in a circle, the photon sphere. ... released 0.0001 GM/c² outside: 1.83 turns, then escapes".
- compound-eye-collatz.html (1.98 MB; matches read): an embedded eye catalogue with eyes named `ce.horizon.observability` ("What can this observer recover?"), `ce.horizon.two_sided_response` ("Two sides of one boundary pencil"; limits "Schur elimination does not uniquely reconstruct a hidden physical system."), `ce.horizon.oscillator_scaling` ("What actually shrinks?"), `ce.horizon.causal_surface` ("Inside and outside light cones"; limits "No Kerr, quantum interior, singularity continuation or measured interior reconstruction."), `ce.horizon.shape_transport` ("Coordinate norm versus quotient metric"; limits "Metric norms apply only in positive-definite interior. The limiting coordinate transformation is singular."), family "Inside/outside comparison", evidence_class "declared_model_calculation"; `ce.response.kerr` is the optical Kerr response, not a Kerr black hole.
- what-survives-the-peel.html, universal-projector-geometry.html: no tight match; not read.

## 4.2 github/dicipler-pixel/README.md (profile README, 29,755 B; matching lines and the paper table l.70-90 read)

- l.39 repo table: "event-horizon-lean | Lean 4 proofs for 'Beyond the Event Horizon': four-body shape space as qutrit Bures geometry, the coplanar wall w₃ = 0 where the metric blows up as 1/(6w₃), the triangular transport block, and a nonnegative discriminant away from the wall."
- l.72 "All 35 Zenodo records listed here (newest first). Each concept DOI always opens the latest version."
- l.83 paper table row: "*Beyond the Event Horizon: An Operator-First Theory of Persistent Geometry and Black Hole Dynamics* | 2026-10-20 | 10.5281/zenodo.21147366 | event-horizon-lean".
- l.76: "*When the Neutrinos Leave: ...* | 2026-11-01 | 10.5281/zenodo.23825908 | neutrinos-leave-lean".

## 4.3 github/relational-atlas-lean/atlas/

- coverage/zenodo_record.json (8,875 B, READ IN FULL). It is the Zenodo API record of THE ATLAS, not of the black-hole paper: "id": 23590925, "conceptrecid": "23590924", "doi": "10.5281/zenodo.23590925", "conceptdoi": "10.5281/zenodo.23590924", title "Continuous edition v4 · card set v7 (B1–B207)", publication_date 2026-10-23, creators "Beasley, Jeromie", resource type Model, license cc-by-4.0, status published, revision 3. Description: "organised as eight strata (Calibration, Subspace, Spectrum, Wall, Census, Memory, Volume and Realizations) joined by 207 bridges"; grades "(149 theorem, 34 measured, 6 derived, 10 conjecture, 8 reading)"; the edition's contents list includes "horizons, the ISCO and Hawking pairs read as boundary data" and "the two-books bridges (B183–B207): ... and the doubled Schwarzschild slice"; keywords include "black hole horizons". Files: atlas_cards_v7_html.zip, atlas_cards_v7_png_part1-4.zip, operator_first_atlas_continuous_v4.html, atlas_new_cards_B183-B207_v7.zip, The_Operator_First_Atlas_v7_part1.pdf, _part2.pdf. It lists NO DOI, record number or version for the black-hole paper.
- coverage/coverage.json (500,212 B; black-hole entries read). Thirteen cards carry a "source_reference" to the black-hole paper, ALL as "Black Hole v8.4" (card | source grade | coverage_status | reference):
  - B36 | theorem | not_mapped_in_audited_scope | "Black Hole v8.4 · §2 Theorems 1–2, §3 Theorems 6–8 · BH-WALL-CHECK-01, BH-LIFT-05; curvature by an independent 90-digit run". Card title "B36 — One fold, read three ways."; claim "ds² = dw₃²/(4w₃) = dσ₃² · σ₃ = sign(det X) √w₃ · K finite at w₃ = 0 · B(0) = λ*I · a coordinate pole, a finite curvature, a cone seen through a fold"; Carry "A four-body configuration as G = XᵀX with Tr G = 1, the sign of det X, and the transport A(H) = TH + HT − 2Tr(TH)G with T diagonal and positive."; Check "Rank exactly two at the wall (w₃ = 0, w₂ > 0). For the double point, the joint condition t₁ + t₂ − 2t₃ = (t₁ − t₂)(w₁ − w₂)."; Arrive "The mirror configuration on the far side, at distance arcsin√ε from w₃ = ε, with the spectrum real on both sides."; closed when "At the collinear stratum w₂ = w₃ = 0, where rotations about the common line act trivially: a genuine singular stratum."; "witness_status": "Published card witness only; no fresh numerical replay is claimed by this ledger."
  - B171 | theorem | not mapped | "Black Hole v8.4 · §3.2, Theorem 4 · BH-LIFT-05, BH-NONNORMAL-04, BH-SPINE-09"
  - B172 | theorem | not mapped | "Black Hole v8.4 · §3.3, Theorem 10 · BH-EP-SPINOR-04, BH-LIFT-05"
  - B173 | theorem | not mapped | "Black Hole v8.4 · §3.4, Proposition 11 · the correspondence is classical · BH-PETROV-06; stars-to-Q map rebuilt independently"
  - B174 | measured | not mapped | "Black Hole v8.4 · §3.6, Proposition 12 · 8₁₉ period-16 constant measured there · BH-KNOT-08, BH-KNOT-14; 4₁ and trefoil recomputed"
  - B175 | theorem | external_kernel_mapped | "Black Hole v8.4 · §4.2, Proposition 13 · membrane resistivity from Damour; Thorne, Price and Macdonald · BH-SPINE-09, BH-MATCHED-12" (coverage/README.md l.207 maps it to light-ledger-lean theorems schur_interior_residual, schur_boundary_residual, boundary_lift_identity, boundary_hermitian_identity, cayley_defect_identity, boundary_loss_pullback, passive_boundary_chain at commit 885794f)
  - B176 | theorem | not mapped | "Black Hole v8.4 · §5, Proposition 14 and eq. (offset) · CHSH value from Chen et al. 2002 · BH-BELL-11, BH-OFFSET-15"
  - B177 | theorem | not mapped | "Black Hole v8.4 · §6.1, Proposition 15 and eq. (cube) · BH-ISCO-10, BH-ISCO-CUBE-17"
  - B178 | measured | not mapped | "Black Hole v8.4 · §6.1 · Kerr cascade: Cavalcante, Richartz and Carneiro da Cunha 2025 · BH-SUNLADDER-16b, rerun"
  - B179 | reading | not mapped | "Black Hole v8.4 · §7.3 · the doubling across the horizon follows the spacetime Penrose-inequality manuscript · BH-FOLD-PARALLEL-01, BH-ISCO-CUBE-17" (coverage/README.md l.211 adds "AUDIT: The Gram-chart fold can be removable on an orientation cover; the..." cut at my display width)
  - B180 | theorem | not mapped | "Black Hole v8.4 · §3.8 · BH-QUTRIT-18"
  - B181 | measured | not mapped | "Black Hole v8.4 · §3.7, eq. (stiff) · BH-QUTRIT-18; null-lift stiffness recomputed"
  - B182 | theorem | not mapped | "Black Hole v8.4 · §4.5 · BH-SPINE-09"
  So in this audit none of the black-hole cards is mapped to event-horizon-lean; only B175 is mapped, to light-ledger-lean. (event-horizon-lean's own README maps its theorems to paper statements; the two are not cross-linked in coverage.json as far as these entries show.)
  coverage.json l.410 (B14 explanation): "Reckoned as a census of channels, the dominant entries in the cosmic entropy budget are horizons rather than matter, by a wide margin. A single galactic-centre black hole already outweighs every photon of the microwave background, and the cosmic event horizon outweighs both by thirty orders of magnitude. This is read as a consequence of counting channels rather than derived from it here, and it is entered at that grade."
- coverage/README.md (91,362 B; matching rows read): B14 "reading | Not mapped in audited scope"; B175 mapped (above); B179 "reading | Not mapped in audited scope".
- coverage/application_guards.json: no black-hole match found by my search; not read.
- Cards (HTML stripped to text, each READ IN FULL as text; figures not seen):
  - B14 "The budget is written on horizons." L4 → L7, grade "reading". "S_horizon ≫ S_matter · a census, read as a budget". "Reckoned as a census of trackable channels, the dominant entries in the cosmic entropy budget are horizons rather than matter, by a wide margin. This is read as a consequence of the counting rather than derived from it here, and it is entered at that grade." Figure labels: horizon, black holes, matter, radiation.
  - B35 "Phase crosses what amplitude cannot." L3 → L5, grade "measured". "Tr Π_blk = 2 exactly while |v⊥| ∝ 1/√(2λ) · ledger to fourteen decimals at the defective point itself". "Crossing a rigidity wall the individual eigenprojectors diverge and amplitude dies as the inverse root of the squeeze, while the block projector holds its trace exactly and the contour ledger evaluates cleanly at the defective point. Memory does not cross such a wall as a vector — it crosses as a phase and an integral." (No black-hole word on the card; it is the rigidity-wall card.)
  - B68 "Paired spectrum is where the integers come from." L2 → L5, grade "theorem". "λ ∈ spec(D) ⇒ −λ ∈ spec(D)"; index, Levine–Tristram signature and winding as three readings of one symmetry. NO black-hole or horizon content on this card (it was on the hit list through a loose match).
  - B90 "The clock exponent says whether a system is open." L1 → L7, grade "theorem". "Hermitian → 1 · non-Hermitian → ½ · the two generic values: exponent n/2 for a zero of order n". Measured: "at γ = 0 the determinant runs 4.1×10⁻⁸ to 6.3×10⁻² with no sign change anywhere in the zone, and the exponents are 1.9868 and 0.9934; at γ = 0.6 it reaches −1.6×10⁻⁴ and they are 1.0308 and 0.5154." Horizon sentence: "The two generic values are the two horizon lapses — ½ Schwarzschild, 1 extremal — and extremality is fine-tuned for the same reason a semi-definite form has nowhere to cross to [H]." "A Hermitian dataset showing a crossing, or an exponent of ½, would end it."
    (atlas_v7.md l.114 gives different witness numbers for B90: "Hermitian lattice det g slope 2.012 (arc 1.006); non-Hermitian wall |k|=0.7352 slope 0.9999 (arc 0.4999)". See Disagreements.)

## 4.4 github/formula-pictures (the "View of a Black Hole from a Planet" side quest)

README.md (8,357 B; first 40 lines read), NOTICE (1,281 B, read in full), LICENSE l.18, index.html, yeganeh/anatomy.py l.2, yeganeh/render.py l.2 (matching lines read; scripts not read, not run); yeganeh/writeup/index.html (179,579 B) not read.
What it is: "Formula pictures. Pictures that are equations: every pixel is computed from a formula ... Jeromie Beasley · Atlas Memoriae · ORCID 0009-0006-4645-5643". Three steps: "1. Reproduce the black hole" (image "View of a Black Hole from a Planet, rendered from Hamid Naderi Yeganeh's formula"; "Original formula and picture by Hamid Naderi Yeganeh. Reproduced here to explain how its terms build the image."); "2. Take the formula apart" (ablation); "3. Build a new scene with the same mathematical tools" ("Two moons over a mountain lake at dusk — Jeromie Beasley's new scene, built using Yeganeh's mathematical grammar."). PDF named yeganeh/writeup/how-the-black-hole-equation-is-built-v2.pdf.
NOTICE: "Credits: the formula, its pixel convention and the method of writing a picture as one formula are Hamid Naderi Yeganeh's ... Third-party work, used for commentary and analysis and NOT covered by this repository's licenses: Hamid Naderi Yeganeh, 'View of a Black Hole from a Planet' (formula image). ... remain his work. Ask him before reusing them."
This is picture-formula work about an artwork titled with a black hole. It contains no black-hole physics of the paper "Beyond the Event Horizon" in the lines read.

## 4.5 Remaining other-repo hit files

- geometric-flux-magnetic-charge-lean/paper/Geometric_Flux_and_Magnetic_Charge_v4.tex l.305 (same sentence in the .html build): "For a light-transport, black-hole or neutrino model, the same discipline applies: specify the base space, retained sector, observable map and coupling before transferring an invariant. The present example supplies a worked template for that step." Only black-hole mention.
- yang-mills-lean/paper/2026-09-08/sources/what_the_hypersurface_keeps.md l.99: "Suns, black hole, gravity and price-of-a-direction were **not available in this session**; their hypersurface results are therefore not represented above, and the corresponding sections are owed rather than written."
- yang-mills-lean/research/spectrum_dictionary_2026_11_10/dictionary.md l.148: "B35 'Phase crosses what amplitude cannot.' Grade: measured (L3→L5). ... YM use: analogy for 'triality label survives where amplitudes don't' — ours, not a physics result."
- yang-mills-lean/AdjointWitnessSU3.lean, GaugeSupportLattice.lean, ThetaFloor.lean, paper/2026-09-08/holonomy/HYPERSURFACE_AUDIT.md, research/window_wall_2026_11_10/READ_RECORD_11 (identical to 2.6.5): no tight match; not read.
- what-the-neutrino-state-must-keep/README.md l.3: the neutrino paper's subtitle "...the Threshold for Primordial Black Hole Formation". Its HTML (4.9 MB) is the v10 art build already counted in 3.3; not read.
- iqgt-core-lean/MATHLIB_STATE.md l.24, l.48: "event-horizon" appears in two lists of repos; l.48 row says for a group of repos including event-horizon: "all OK | all rejected | deprecation warnings in several (ramanujan 18, arithmetic-kakeya 14, square-case 10, three-body 6)" (column meanings not read).
- three-body-lean/369-three-fold-protection/report.html l.118: "<b>event-horizon-lean</b> and <b>what-russell-saw-lean:</b> the photon sphere at r = 3M and the ISCO at 6M, with 2 + 6M/r = 3. These are factors of 3 inside general relativity, as cited results."
- coxeter-rank2-lean/swarm/review/model-reads/statement-11.md: no tight match; not read.

---

# TABLE A. Every Zenodo DOI / record number met

| DOI or record | What the source says it is | Where met |
|---|---|---|
| 10.5281/zenodo.21147366 | Beyond the Event Horizon, concept DOI ("always opens the newest version") | event-horizon-lean README l.11, l.64; Basic.lean l.3; Edition10.lean l.3; PROVENANCE.md; CITATION.cff; site atlas.json l.4; index.html l.36; profile README l.83; neutrinos_at_the_wall d2 l.312, d3 l.371 |
| 10.5281/zenodo.23493466 (id zenodo-23493466) | Beyond the Event Horizon, record dated 2026-10-20, search text "research edition 10 · october 2026" | site balls/unsorted.json l.292-304; search-index.json l.258-266; index.html l.933 |
| 21860392 | "Beyond the Event Horizon v2 21860392" | corpus-notes/dirac_gigantefermion.md l.72; T14_dirac_time/NOTES.md l.246 |
| 10.5281/zenodo.23590925 / concept 10.5281/zenodo.23590924 | Operator-First Atlas, "Continuous edition v4 · card set v7 (B1–B207)", 2026-10-23 | relational-atlas-lean zenodo_record.json; index.html; profile README |
| 10.5281/zenodo.22803572 (concept), record 23787997 (v15), 10.5281/zenodo.22804072 (v7) | Non-Normality Is Connection Energy | nonnormality repo README; READ_RECORD_06 l.5; neutrinos.md l.82; dirac note l.72 |
| 10.5281/zenodo.23340757 | VOTKP v2.9 (13 Oct 2026) | matter-disk README; matter_notes l.402; T14 NOTES l.277 |
| 10.5281/zenodo.23011139 | VOTKP (profile table, concept) | profile README |
| 10.5281/zenodo.23825908; 23858157; 24210039 | When the Neutrinos Leave (concept; 2026-11-01 record); What the Neutrino State Must Keep (2026-11-14) | profile README l.76; index.html l.933 |
| 10.5281/zenodo.23808375; 10.5281/zenodo.24129915 | S. McCormick PBH code/data (v1, v1.1) | neutrino tex reference lists |
| 22013524 | Solar paper (Transient Structure at Solar Rigidity Interfaces) v1.5 | bh.md l.133 ref [38]; dirac note l.72 |
| 22555919 | The Offset Belongs to the Boundary v31 | dirac note l.72; matter_notes l.402 |
| 22088625; 10.5281/zenodo.22023237 | The Ledger Outlives the Metric ("v4 22088625 lineage"; site theme DOI 22023237) | dirac note l.72; atlas.json l.10 |
| 21804717; 23250681 (v6); 10.5281/zenodo.20768258 | IQGT | dirac note l.72; votkp_v29.md l.262; profile README |
| 23043570; 22124938; 10.5281/zenodo.22123115 | Light Keeps the Ledger (Edition 7.2; earlier; profile concept) | votkp_v29.md l.262; dirac note l.72; profile README |
| 23002919 | Universal Projector Geometry v3.2 | votkp_v29.md l.262 |
| 21089304, 22543487, 21799194, 21918464, 21855787, 21860370, 22019893, 22811901, 20818169, 20834719, 21855591 | Directional Transport Geometry; What Transport Keeps (research edition 3); Companion-Matrix Projector Diagnostic; The Price of a Direction; Spectral Stress; FOFT; Matter at a Scale; Non-normal fracture operator; 5D Spectral Anatomy of Four-Body Obstructions; Spectral Stability Across Obstruction Interfaces; The Square Case | dirac_gigantefermion.md l.72 |
| 10.5281/zenodo.23847113 / 23847114; 23690414; 23689130; 21935285; 23351687 / 23351688; 22090958; 23028784; 22986656; 24282998 | Two Trees in One Ball v4; The Weight Between; The Offset Speed Limit; Electron Screening; Band-Edge Rectification Test; Permutation Coboundary Constant; What Tesla Saw; What Russell Saw; (24282998: an unsorted site record, title not read) | profile README l.76-90; index.html l.933 |
| 19058409 | "[S10] Zenodo 19058409" (third-party source in VOTKP refs) | votkp_v29.md l.262 |

# TABLE B. Every version label / title of the black-hole paper met on the GitHub side

| Label and title as written | Date given | Where |
|---|---|---|
| "5D Spectral Anatomy of Four-Body Obstructions: Kinematic Transport Geometry on Stratified Shape Manifolds" (Paper IV; the four-body ancestor, not titled as the BH paper) | June 23, 2026 | corpus-notes/four_body.md |
| "Beyond the Event Horizon: Operator Decoupling at the Rigidity Wall", v2 | (cited in solar paper of Aug 16, 2026) | suns_v1_5.md l.17 |
| "Beyond the Event Horizon v2" / "v2 21860392" / "BH v2 (August 2026)" / "v2, August 2026, the edition deposited as DOI 10.5281/zenodo.21147366" | August 2026 | price_of_a_direction_v4.md l.15; dirac note l.72; blackhole_independent_checks.py l.1; event-horizon-lean PROVENANCE.md |
| "Beyond the Event Horizon: Persistent Operator Structure at Rigidity Walls — from Four-Body Shape Space to Black-Hole Ringdown" | none | event-horizon-lean Basic.lean header l.2-3 |
| "Black Hole v8.4" (sections §2, §3.2-3.8, §4.2, §4.5, §5, §6.1, §7.3; Theorems 1-2, 4, 6-8, 10; Propositions 11-15) | none | relational-atlas-lean coverage.json; votkp_v3_2 atlas_map reports |
| "Beyond the Event Horizon: What Survives at a Rigidity Wall", "research edition 10" / "Edition 10" / "ed. 10" / "v10" (bh_paper_v10.pdf, Drive id 1ZUNd4YYIWO3fnAeODM7Ale3s9YdYQcYg; bh_paper_v10.html id 1SYlNfgSufOB73zwkgvXUEgvaCEjCyucO) | 20 October 2026 | bh.md l.1-2; event-horizon-lean README/Edition10.lean/PROVENANCE; matter-disk PROVENANCE and papers; nonnormality.md ref [33]; koide.md l.77; search-index.json |
| "Beyond the Event Horizon: What Survives at a Rigidity Wall, edition 10.1 (2026)" | 2026 | reference [BH] in thirteen neutrino tex versions (3.1); neutrinos.md l.82 |
| "Beyond the Event Horizon: An Operator-First Theory of Persistent Geometry and Black Hole Dynamics" (Zenodo record title) | 2026-10-20 | profile README l.83; unsorted.json; search-index.json; index.html |
| "its proof log v7" (of Beyond the Event Horizon, edition 10) | none | neutrinos_at_the_wall d2 l.290, d3 l.343 |
| event-horizon-lean library versions: CITATION.cff "version: 1.1.0", "date-released: 2026-09-27"; lakefile "version = 1.0.0" | | event-horizon-lean |
| File names only: "BLACK_HOLE_OLD_CHATS_AND_MATH_20261014(1).html"; "black_hole_reading.md" (23,852 B, ONLY ON DRIVE) | 14 Oct 2026 (name) | extract_archive.py l.28; RECOVERED_FILES_LEDGER csv |

---

# DISAGREEMENTS (recorded, not resolved)

1. TITLE / SUBTITLE of the black-hole paper. Four subtitles: "Operator Decoupling at the Rigidity Wall" (v2; suns_v1_5.md l.17); "Persistent Operator Structure at Rigidity Walls — from Four-Body Shape Space to Black-Hole Ringdown" (event-horizon-lean Basic.lean l.2-3); "What Survives at a Rigidity Wall" (edition 10; event-horizon-lean README l.3, Edition10.lean l.2, bh.md l.1, site atlas.json l.4); "An Operator-First Theory of Persistent Geometry and Black Hole Dynamics" (Zenodo record title on the site and profile README l.83, dated 2026-10-20, whose own search text then reads "what survives at a rigidity wall ... research edition 10"). Inside one repo: Basic.lean header vs README/Edition10.lean header.
2. EDITION LABEL. "research edition 10" (event-horizon-lean; Neutrinos at the Wall d2/d3 reference) vs "edition 10.1" (reference [BH] in all thirteen main-line neutrino tex files) vs bh.md l.2 "no v10_1 found by title search".
3. THEOREM NUMBERING between the Lean repo and the edition-10 notes. event-horizon-lean README/Basic.lean: "Theorem 1" (quotient metric), "Theorem 2.1" (metric blow-up), "Theorem 2.3" (reality, triangular wall, Jordan), "Eq. (2)" (transport block), "Sec. 2.1" (non-normality), "Sec. 4.2" (ledger, snapped law); LIMITATIONS: "Theorem 3's cited half", "Conjecture 1", "O'Neill curvature (Sec. 2.2)". PROVENANCE says these came from "v2, August 2026". bh.md (edition 10): Thm 1 Bures, Thm 2 fold, Thm 3 block structure, Thm 4 self-adjointness, Thm 5 no EPs inside, Thm 6 wall in Gram frame, Thm 7-8, 10; the ledger is §4.1 and "The orientation keeps the trace" is §4.2; no "Conjecture 1" is recorded in bh.md. The README's edition-10 rows (Sec. 8.3, 7.1, 8.1) do match bh.md's section numbers. So the README mixes v2 numbering (first table) with edition-10 numbering (second table) under one heading that names "research edition 10".
4. SECTION NUMBERING v8.4 vs edition 10: Prop 13 at §4.2 (v8.4, coverage.json) vs §5.2 (bh.md); Prop 14 at §5 vs §7.1; Prop 12 at §3.6 vs §4.6; Prop 15 at §6.1 vs §8.1; Fisher §3.8 vs §4.8; stiffness §3.7 vs §4.7; delay §4.5 vs §5.5; fold comparison §7.3 vs §9.3; Theorem 4 at §3.2 (v8.4) vs "## 3" Thm 4 (ed. 10); Theorem 10 at §3.3 (v8.4) vs §4.3 (ed. 10).
5. THE TRANSPORT OPERATOR across versions. four_body.md l.11 (June 2026): "A_intr(H) = P_H( T(W)H + H T(W) - Tr(T(W)H) W )" with W = XX^T/Tr and shape block A11 = 2(t1-t2)-(t1-t2)(w1-w2), A22 = (2/3)[...], A12 = √(2/3)[(t1-t3)w2-(t2-t3)w1], "eigenvalues generally complex on regular stratum". Edition 10 (bh.md l.39-40) and the Lean `block`: A(H) = TH + HT − 2 Tr(TH) G with G = X^T X, A11 = (t1+t2) − (t1−t2)(w1−w2), A22 = 2t3 + w3(t1+t2−2t3), A12 = (1/√3)[(t1−t2) − (t1+t2−2t3)(w1−w2)], A21 = √3(t1−t2)w3, spectrum real inside (Thm 5; `spectrum_real`). Coefficient of the trace term 1 vs 2; real vs "generally complex".
6. NAME OF THE w3 = 0 STRATUM AND WHERE THE JORDAN BLOCK IS. four_body.md l.15-16 and directional_transport.md l.21: w3 = 0 is the "collinear horizon", "semi-simple/diagonalizable generically", Jordan blocks "confined to" triple-collision boundaries (w3 = w2 = 0). Edition 10 (bh.md l.32, l.46) and Lean `wall_jordan`: w3 = 0 is the "coplanar wall" (rank 2), collinear is w2 = w3 = 0, and the size-2 Jordan block is at w3 = 0 on the codimension-2 joint condition (Gram frame).
7. IS THE NON-NORMALITY / JORDAN BLOCK REAL OR A FRAME EFFECT. event-horizon-lean README l.23-24 states flatly "the transport block becomes triangular (a genuine Jordan block under a further joint condition with A₁₂ ≠ 0)" and Sec. 2.1 "Non-normality needs both anisotropies". bh.md l.43: "In the kinetic metric the operator is normal everywhere inside. The non-normality is a property of the Frobenius frame"; l.50: on the cover "a plain double (diabolic) point", "A there is genuinely defective" only on the tangent space of Σ4. READ_RECORD_06 l.83: "at the coplanar wall the Gram-chart block is nilpotent but in the Bures metric the eigenprojector norm stays 1"; nonnormality.md l.133 "coplanar wall chart artefact". The Lean README does not carry the frame qualification that edition 10 carries.
8. README vs LIMITATIONS inside event-horizon-lean. README l.25 "its discriminant is provably nonnegative, so its spectrum is real" and table "so it is nonnegative and the spectrum is real on the whole regular stratum" vs LIMITATIONS l.13-16 "That a nonnegative discriminant makes the eigenvalues of the real 2×2 block real is the quadratic formula and is not formalized." README "the metric blows up as 1/(6w₃)" vs LIMITATIONS l.10-12 "that combined limit is not stated as a theorem". README lists `shear_values` under "Theorem 1" while the Lean doc-comment says "Sec. 1, numerical checks".
9. event-horizon-lean PROVENANCE.md says "the three files in FalseControls/" were written from v2; the folder holds five (three v2-era, two edition-10; the second paragraph names the other two). scripts/verify.py header reads "SCRIPT: DIRAC-TIME-LEAN-VERIFY-01 ... Audit the Dirac Time Lean library" inside the event-horizon repo. CITATION.cff version 1.1.0 vs lakefile.toml version 1.0.0; CITATION date-released 2026-09-27 while edition-10 theorems were added 2026-10-20.
10. bh.md internal: l.2 "53+ pages, refs ~[1]-[97]" vs l.136 "all 56 pages, abstract through reference [102]". bh.md l.2 lists [CHECKED] grades; l.63 "10597" printed vs "10^597".
11. PETROV / MAJORANA-STAR NUMBERS. bh.md l.64 and bh_petrov_06.py.log: type II gap/delta = 0.800000; type D gap/delta^2 = 0.250000. Atlas card B173 (atlas_v7.md l.197): "gap/delta -> 1.300 (II), gap/delta^2 -> 1.000 (D)".
12. SCHUR–CAYLEY SAMPLE NUMBERS. bh.md l.78 / bh_spine_09 log: "2.4e-15", largest ||S_b|| "0.901"/"0.9011"; bh_wall_03 log C10: "5.86e-15", "0.945022"; atlas B175 (atlas_v7.md l.199): "6e-15", "0.950".
13. NON-NORMALITY VALUE AT THE WALL: only bh_nonnormal_04 log gives "at the wall, joint point ||[A,A^T]||_F = 0.332623"; bh.md gives only 0.2314 (interior). Not a conflict; one source holds a number the other lacks.
14. κ_r: bh.md l.70 "2.48527"; filament.md l.15 "2.48526751266".
15. SOLAR EP LADDER values: suns_v1_5.md l.15 "3.872, 5.280, 7.158, 9.085, 11.032"; atlas B178 "3.8717, 5.2802, 7.1576, 9.0850, 11.0266" (11.032 vs 11.0266).
16. FERMION-RECORD CHECK TOLERANCE: "to 3e-16" (bh.md l.92, V10-PUSH), "2.8e-16" (v10_push_others log), "6e-16"/"5.6e-16" (BH-OFFSET-15, bh.md l.92 / log), "5×10⁻¹⁶" (matter v4 s13), "1e-15" (atlas B176). Different scripts; listed so they are not merged.
17. B90 WITNESS NUMBERS: card HTML in relational-atlas-lean: exponents "1.9868 and 0.9934" (γ = 0), "1.0308 and 0.5154" (γ = 0.6); atlas_v7.md l.114: "slope 2.012 (arc 1.006)" and "slope 0.9999 (arc 0.4999)".
18. REFRACTION LAW. READ_RECORD_07 l.42: "the refraction law R1 sin^2(theta1) = R2 sin^2(theta2) of the black-hole paper is UNDER AUDIT (the sin -> sin^2 step). IQGT's g_par sin^2(theta) = const with index sqrt(g_par) is Snell squared and is not that law; the two must not be merged." Edition 10 per bh.md l.110 states "Clairaut constant C=a sin^2 theta ... refraction a1 sin^2 th1 = a2 sin^2 th2 (Snell, index sqrt g_par)", and the PLAN (2.10.1) treats R₁ sin²θ₁ = R₂ sin²θ₂ as "CARD · B30 (theorem)" with "Declared identification (READING): a = R = n²". dirac_gigantefermion.md l.77 marks "UPG inverse-smallest-eigenvalue refraction index — FALSE as universal identification - Use intrinsic n = sqrt(g_||)".
19. HORIZON CLAIMS ACROSS PAPERS. FOFT v2 Conj 5.3 and the v2-era "boundary isomorphism"; Dirac Time lineage (dirac note l.59, l.77, l.87; T14 NOTES l.193, l.274): "older shape-space/Kerr 'boundary isomorphism' claims not retained as theorems", "Horizon = metric wall — FALSE", "black-hole no-hair shape-space isomorphism" OPEN; gravity ed. 6 (gravity.md l.107): "Physical horizon/projector wall equivalence is not retained."; edition 10 (bh.md l.5, l.127): "Every statement about black holes is a structural comparison", "No isomorphism is claimed". The older and newer statements differ; the sources themselves record the change.
20. ONE BLOCK OR TWO. bh.md l.81 (ed. 10 §5.4) lists C−C² = BB† and PH²P−(PHP)² = BB† in one family ("Every form in this list is a pullback, and every one is positive"); READ_RECORD_07 l.19 (v16 correction 7): "TWO DIFFERENT B's ... B_Pi ... B_H"; matter v4 p1 l.71: "These are the same functional on different operators and different cuts. They are not one quantity".
21. WHERE THE PAPER IS FILED ON THE SITE. atlas.json/index.html THEMES put "Beyond the Event Horizon: What Survives at a Rigidity Wall" (DOI 21147366) under "blackholes"; balls/blackholes.json has "items": []; the Zenodo feed entry (23493466) is in balls/unsorted.json under the other title.
22. LEAN DECLARATION COUNTS for the non-normality library: "153 declarations v15" (colour_v12.md l.165); "163 declarations, 17 false controls" (READ_RECORD_06 l.121); my grep of theorem/lemma keywords in NonNormality/*.lean gives 143 (defs and instances not counted); the second repo -connection-energy-lean badge says "theorems-20".
23. Lean cross-reference status: weight_between.md l.62, l.115 marks event-horizon-lean names `tanh_half_log`, `fermion_smith` "[UNCONFIRMED LEAN]"; L1_peel_face_smith.md (16 Nov) quotes both with line numbers (Ed10:108, Ed10:183), and both are present in the file as read.
24. Neutrinos at the Wall d2 vs d3 on the fold: d2 "The author arrived at the same structure independently, as a theorem about folds in four-body shape space and the static base of a horizon"; d3 "The continuation is theirs. The author's fold theorem was proved for other systems". Both say "theorem [the fold [BH], Theorem 2] derived there" while bh.md l.118 grades the horizon side of the shared fold normal form "structural" (§9.3) and atlas B179 is a "reading".
25. L1_peel_face_smith.md l.11 says a grep for "sorry" "finds the word only in header comments ('no sorry') and README badges"; in event-horizon-lean's two Lean files the word does not occur at all (my grep), only in the README badge.

---

# NOT READ / PROBLEMS

Read in full (every line): event-horizon-lean, all 21 tracked files; matter-disk PROVENANCE.md, README.md, CLAIMS.md; corpus-notes bh.md, four_body.md, cone.md, foft_v2.md, suns_v1_5.md, three_body.md, filament.md; READ_RECORD_06, 07, 08; EQUATION_FILE_ENTRY open_question_tests; november-gather README.md, the 28 bh_agent logs, blackhole_independent_checks.py, check_retention_model.py, extract_archive.py, russell_controls.py; LEDGER_d2_to_d3.md; blackholes.json; zenodo_record.json; atlas cards B14, B35, B68, B90 (as stripped text); formula-pictures NOTICE; nonnormality README.md. Count: 77 files.

NOT read in full, against the assignment (stated plainly):
- matter-disk/corpus-notes: 37 of 44 notes were not read in full (about 1.3 MB). For 20 of them every black-hole line was read and copied (2.3); 17 had no black-hole term and were not opened: band_edge, earth_moon, ladder, light, nonnormal_lattice, obs, offset_speed_limit, offset_speed_limit_v1_1, paper_XI, paper_v7, present_keeps, projector_calibration, screen_prog_03, spectral_stability, theta_21_sign_cases, upg, what_transport_keeps. Reason: volume; the black-hole note and the black-hole lines were put first. A later pass should read gravity.md, offset.md, light.md, iqgt.md, nonnormality.md, dirac_gigantefermion.md and atlas_v7.md in full, since edition 10 cites those papers.
- matter-disk/leads: only parts of LEADS_identities_v1.md; nothing of LEADS_matter_down_v1.md or the two scripts.
- matter-disk/paper v1-v4 tex, review HTML, scripts: black-hole passages only.
- READ_RECORD_11 (round5), PLAN_light_at_the_hypersurface.md (lines 1-90, 305-326 only), PATH_NOTES.md, T14 NOTES, ATLAS read, atlas_map reports, swarm notes, L1/L2/BRIEF, NOTES_11/12, READ_A4/A6/B1, RECOVERED_FILES_LEDGER csv, AtlasCards3D.js: passages only.
- Every large HTML/JS (VOTKP v3.0-3.3, all mixers, Two Trees v4, vacuum disk, neutrino HTML builds, site pages): only matched passages with a few hundred characters of context; no section-level read. Images, figures and embedded data were not looked at.
- All 70 neutrino hit files: citation passages and counts only (Part 3). The hundreds of primordial-black-hole mentions in the neutrino papers were counted, not transcribed, except in Neutrinos at the Wall d3.
- nonnormality-connection-energy-lean: proofs, STATEMENTS.md, LIMITATIONS.md body, FalseControls, checks, numerics not read; statements of eight modules taken as names only. -connection-energy-lean: README head only.
- relational-atlas-lean: coverage.json and coverage/README.md entries for black-hole cards only; application_guards.json not read; the card HTML files for B36, B171-B182, B199, B207 were NOT opened (their content here comes from coverage.json, atlas_v7.md and AtlasCards3D.js).
- Other repos' Lean files that touch black-hole formulas were not opened: what-russell-saw-lean (gr_effective_steepness, isco_is_russell), light-ledger-lean (Boundary.lean, Rigidity.lean), square-case-lean (HypersurfaceSquareLineage.lean), upg-lean (UPGDiracRefraction.lean), gravity-ledger-lean, dirac-time-lean.
- votkp-lean__main and votkp-lean__claude_votkp-research-20261107: no hit file; not searched beyond the hit list.
- Branch checkouts have no .git, so no per-branch history; event-horizon-lean earlier commit states were not checked out.

Problems:
- The hit lists were loose (substring matches such as "whole", "discovery", "horizontal"); many listed files hold no black-hole passage. My tight term list could in turn miss passages that speak of the wall, the fold or the ledger without any black-hole word.
- No black-hole PAPER file (PDF, HTML, tex) exists anywhere in the cloned repos. The GitHub side holds the Lean proofs, AI reading notes of edition 10 (bh.md), stored check logs, atlas cards and citations. The paper text itself must come from Drive/Zenodo.
- Named but absent from the repos: black_hole_reading.md (23,852 B, ONLY ON DRIVE), blackhole_independent_checks.json, retention_checks.json, davis_kahan_counterexample.json, BLACK_HOLE_OLD_CHATS_AND_MATH_20261014(1).html, the BH check scripts themselves (.py), the edition-10 "proof log v7", any v8.4 text.
- Two private repos (mixin-colors, mad-hatters-acc-private) could not be cloned; neither name suggests black-hole work.
- One-line tag-stripping (python/perl) was used on HTML and long-line files as the assignment allowed; no check script, lake or lean was run.
