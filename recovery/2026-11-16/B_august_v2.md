# LEDGER B — August v2 of the black-hole paper, its infographic, the companion Suns paper v1.5, and the July comparison

Reader: Phase 1 full-read agent. Written under `/home/claude/bh_recovery/ledgers/READING_RULES.md`.
No tests, scripts, computations or web lookups were run. No file other than this ledger was created or changed.
Everything below is what the files SAY. Grades are copied as printed. Where I add a plain observation of my own (for example "this script is named but not listed") it is marked **[reader observation]** and is a statement about what is or is not on the page, not a judgement of the work.

Files covered

| # | Path | What | Size | Read in full |
|---|------|------|------|--------------|
| 1 | `/home/claude/bh_recovery/drive/older/blkhole_v2_final.pdf` | v2 paper, 16 pages, all 16 pages viewed as images | 2,203,746 bytes | yes |
| 1t | `/home/claude/bh_recovery/text/blkhole_v2_final.txt` | layout text of file 1 | 46,899 bytes, 793 lines | yes (lines 1-793) |
| 2 | `/home/claude/bh_recovery/drive/older/infographic_hairdresser_corrected.png` | infographic (binary image, viewed) | 1,528,665 bytes | yes (viewed; all legible text recorded) |
| 3 | `/home/claude/bh_recovery/extracted/2026-08-16 Suns paper v1.5 (tex)/suns_v1_5.tex` | Suns paper v1.5 LaTeX source | 46,506 bytes, 777 lines | yes (lines 1-777) |
| 4 | `/home/claude/bh_recovery/extracted/2026-08-16 Suns paper v1.5 (tex)/dkist_compare_02.py` | script DKIST-COMPARE-02 | 2,976 bytes, 51 lines | yes (read, not run) |
| 5 | `/home/claude/bh_recovery/text/BLKHOLE (4).txt` | layout text of the July version (comparison only) | 69,970 bytes, 1061 lines | yes (lines 1-1061) |

---

# FILE 1 — `blkhole_v2_final.pdf` (with `text/blkhole_v2_final.txt`)

## 1.0 Title block as printed (PDF p.1)

- Title: **"Beyond the Event Horizon:"**
- Subtitle (two lines): **"Persistent Operator Structure at Rigidity Walls — from Four-Body Shape Space to Black-Hole Ringdown"**
- Author as printed: **"Jeromie N. Beasley"**
- Date as printed: **"August 2026"** (no day is printed; the "8 Aug 2026" in my assignment is not on the page).
- No affiliation line, no version number ("v2" does not appear anywhere in the PDF text), no DOI, no licence line, no AI-assistance line, no acknowledgments section.
- 16 numbered pages. Page 13 holds only the heading "C Graphical summary"; page 14 is the landscape infographic with caption; pages 15-16 are References.

## 1.1 Full section list (as printed)

- Abstract
- 0 What is claimed, and what is not
  - (run-in heads) Three grades of statement. / Two survival principles.
- 1 The shape space and its true geometry
  - Theorem 1 (the quotient metric, in closed form) + "Derivation and verification."
  - (run-in head) The identification.
- 2 The stability spine, done right
  - 2.1 The transport block structure
  - (run-in head) A withdrawal.
  - 2.2 The curvature, derived
- 3 The wall
  - Theorem 2 (the rigidity interface, derived)
- 4 The two survival principles, demonstrated
  - 4.1 Phase keeps the trace
  - 4.2 The contour keeps the ledger
  - (run-in head) The Hairdresser, as a named interpretation.
- 5 Pseudospectral transients: attribution and the shape-space side
- 6 The correspondence, at its honest grade
  - Theorem 3 (shared wall structure — shape side proven, GR side cited)
  - Conjecture 1 (the dictionary)
- 7 Gauge extension
  - Proposition 1 (conditional persistence of defectiveness)
- 8 Speculative extensions, fenced
  - (run-in heads) Superradiant extraction rate. / Junction matching. / Condensed-matter analogue.
- 9 Open problems (7 items)
- A Projector persistence bounds
  - Lemma 1 (Neumann resolvent bound); Theorem 4 (projector persistence Lipschitz bound)
- B The scripts: proof of record
  - BH-CURV-01 — quotient metric and O'Neill curvature of Σ4; six gates (listing, 152 numbered lines)
  - BH-LEDGER-01 — the Dunford ledger at the wall's Jordan point; three gates (listing, 71 numbered lines)
- C Graphical summary (one infographic + caption)
- References ([1]-[24])

## 1.2 Grade labels the paper uses (all of them, as printed)

From §0 "Three grades of statement" (p.2): "every claim carries one of three grades, never silently promoted":
1. **exact/derived** — "closed forms and identities with gated scripts behind them"
2. **measured** — "numerical constants quoted with their depths"
3. **proposed** — "ansätze and conjectures, fenced in Sections 6 and 8"
"Where a chain mixes grades, the weakest link is named."

Other grade words actually used in the body:
- "Theorem" (Theorems 1, 2, 3, 4), "Lemma" (Lemma 1), "Proposition" (Proposition 1), "Conjecture" (Conjecture 1)
- "(exact)" — Theorem 2 items 1 and 3
- "(derived law, measured constants)" — Theorem 2 item 2
- "derived/measured grade" — §2.2 (the two structural facts)
- "exact/derived grade" — §2 intro (the two ingredients of K)
- "shape side proven, GR side cited" — Theorem 3 head
- "cited, not re-derived" — Theorem 3 last sentence
- "conditional" — Proposition 1
- "at the standard grade" / "classical" — §7 Wong equations
- "withdrawn" — §2.1 "A withdrawal"; §8 polariton closed formula ("withdrawn as heuristic")
- "retired" — the EP/Ricci equivalence ("retired to Section 9")
- "under audit" — the sin → sin² refraction step
- "ansatz", "analogy", "a proposed program, not a result", "plausibly" — §8
- "unproven" — EP/Ricci equivalence (§6)
- "gated" / "gated computation" — used throughout for script-backed items
- "imagery" / "a named interpretation" — the Hairdresser
- "standard Kato-type estimates" — Appendix A
- "verified" / "Verified numerically" — Theorem 1 derivation, §2.1 block structure, Theorem 2 item 3
- "demonstrated, not asserted" — the two survival principles (§0)
- "the literature's" / "established results of the modern literature ... not claims of this paper" — black-hole side

## 1.3 Abstract (p.1) — content recorded

Key sentences, verbatim:
- "Black-hole ringdown is governed by non-normal operators: quasinormal modes are eigenmodes of a non-selfadjoint Hamiltonian, their spectra are unstable in the pseudospectral sense, and their non-orthogonality produces transient plateaus and transient superradiance. Those statements are established results of the modern literature [1, 2, 3, 5, 6, 7], not claims of this paper."
- "What this paper contributes is the other side of a correspondence: the same non-normal phenomenology arises, with exact and independently gated machinery, in the relational shape space of the four-body problem."
- "We derive, from the quotient construction alone, the closed-form kinetic metric of the five-dimensional shape space Σ4 — and find it is exactly the Bures–Wasserstein metric of trace-one positive matrices, so that a four-body system's shape manifold is isometric to the (real) state space of a qutrit, its collision stratification the rank stratification of density matrices."
- "We derive the Jacobi curvature of Σ4 by the O'Neill submersion formula, validated against the Kendall shape sphere (K = 4.0000000), and show it is finite at interior eigenvalue coincidences — withdrawing, with the computation on record, the divergent shear entries of an earlier draft — while three derived mechanisms co-locate on the genuine codimension-one boundary, the coplanar wall w3 = 0: the metric blows up as exactly 1/(6w3), the curvature as C/w3, and the transport operator forms exact size-2 Jordan blocks there under an explicit joint condition."
- "The horizon interface of the correspondence is staged on that wall."
- "Two survival principles organize what remains observable through the degeneracy, each demonstrated by gated computation: when eigenvectors fail, the phase carries the record (‖v⊥‖ ∝ 1/√(2λ) → 0 while ∫√(2λ) dt persists); when eigenvalues fail, the Dunford contour carries it (Tr Π = 2.000000000000 and the trace-log ledger exact to 6 × 10⁻¹⁵ at the exactly defective point, where rank-one data diverges by the snapped law ‖P1‖ · gap → |A12|)."
- "The correspondence with black-hole horizons is then stated at its honest grade: a theorem about shared block structure on the shape side, citations on the general-relativity side, and a clearly labeled conjecture for the dictionary."
- "All scripts are included in the paper as the proof of record."

## 1.4 Section 0 — What is claimed, and what is not (pp.1-2)

NOT claimed (verbatim): "The premise that horizon physics is non-normal operator theory is not claimed here; it is the settled starting point of an active program."

Attributed to the literature (each with its citation as printed):
- QNMs on hyperboloidal slices are the spectral problem of a non-selfadjoint operator whose spectrum is unstable under high-frequency perturbations [1, 3]
- "the instability has gravitational-wave signatures [2]"
- "the choice of scalar product is structural, not cosmetic [4]"
- non-orthogonal quasinormal sums produce "arbitrarily long-lived transient plateaus — localized energy packets near the future horizon — and transient growth in higher-derivative Sobolev norms [5, 7]"
- "transient superradiant amplification occurs in modally stable regimes [6]"
- "Sections 5 and 8 of this paper lean on those results and attribute them."

Claimed (verbatim, "What is claimed is the relational side and the bridge"):
1. "First, exact geometry: the four-body shape space carries, by its own quotient construction, the Bures–Wasserstein metric (Theorem 1), identifying it with quantum state space and its collision walls with rank strata."
2. "Second, exact boundary structure: metric blow-up, curvature blow-up, and Jordan-block formation are derived and co-located on the coplanar wall (Section 3)."
3. "Third, an organizing pair of survival principles — phase and contour — each demonstrated by computation on the audited operator (Section 4)."
4. "Fourth, a correspondence with horizon interfaces stated as one theorem, one dictionary, and one conjecture, in that order and at those grades (Section 6)."

Three grades: see 1.2. The paper says "As in the companion spectral-stress work".

Two survival principles (verbatim):
- "When you lose sight of the vectors, the phase keeps the trace: tied or oscillatory modes defeat eigenvector tracking, but a phase rate remains a well-defined invariant — the mechanism behind the calibrated phase-rate result of [24] and behind the wall oscillator of Section 3."
- "Dunford calculus keeps it wrapped up: when eigenvalues coalesce, contour-integrated functional calculus — Riesz projectors, trace-logs — remains exact where eigenvector arithmetic has no meaning (Section 4)."
- "Both principles are demonstrated, not asserted, and the demonstrations are in Appendix B."

## 1.5 Section 1 — The shape space and its true geometry (pp.2-3)

Setup (verbatim): "Let a four-body configuration in R³ be encoded, after centering and mass-weighting, by the 3 × 3 matrix X of Jacobi vectors. Rotations act on the left, X ↦ RX, and the rotation-invariant datum is the Gram matrix G = XᵀX — not XXᵀ, which transforms as RMRᵀ. Fixing overall scale by Tr G = 1 (equivalently ‖X‖_F = 1), the shape space is"

**Σ4 = { G ⪰ 0 symmetric, Tr G = 1 }**, "five-dimensional, stratified by rank."

Principal frame W = diag(w1, w2, w3), Σ wi = 1. Frobenius-orthonormal tangent basis:
- E1 = (1/√2) diag(1, −1, 0)
- E2 = (1/√6) diag(1, 1, −2)
- E3, E4, E5 = (1/√2)(e_i e_jᵀ + e_j e_iᵀ) for (ij) = (12), (13), (23)
- "E1, E2 deform the eigenvalues (shape); E3, E4, E5 rotate the eigenframe (shear)."

"The physical metric on Σ4 is not a choice: it is the quotient of the flat Frobenius metric on the unit sphere ‖X‖_F = 1 by the rotation action. Computing the horizontal lifts explicitly (script BH-CURV-01, Appendix B) yields closed forms."

### Theorem 1 (the quotient metric, in closed form) — grade: Theorem; listed in §0 as "exact geometry"
Exact statement: "In the principal frame, the kinetic (submersion) metric on Σ4 is

g(Ea, Eb)|_shape = Σ_{i=1}^{3} (Ea)_ii (Eb)_ii / (4 w_i),  g(E_(ij), E_(ij))|_shear = 1 / (2 (w_i + w_j)),

with the shape and shear sectors orthogonal and distinct shear directions mutually orthogonal."

"Derivation and verification." (ends with □):
- Horizontal lift H of base direction E at X = diag(√w_i) solves "XᵀH + HᵀX = E, XHᵀ symmetric"; metric g(Ea, Eb) = ⟨Ha, Hb⟩_F.
- Shape directions: H diagonal, h_i = (E)_ii / (2√w_i) → first formula.
- (ij) shear direction: H_ij = √w_i / (√2 (w_i + w_j)), H_ji = √w_j / (√2 (w_i + w_j)) → second formula.
- "Verified numerically at generic points: g33 = 0.625 = 1/(2 · 0.8), g44 = 0.714286 = 1/(2 · 0.7), g55 = 1.000 = 1/(2 · 0.5) at w = (0.5, 0.3, 0.2), and the shape block to machine precision."

### The identification (p.3)
- "These are the Bures weights. The quotient of the Frobenius metric on square matrices by the orthogonal action, transported along X ↦ XᵀX, is the Bures–Wasserstein (equivalently Procrustes) geometry of positive semidefinite matrices [20, 21]; restricted to trace one it is the Bures geometry of density matrices [19, 22], the quantum-Fisher (Helstrom) metric of quantum information. Hence:"
- Displayed italic statement (no theorem number; no separate grade given beyond the "Hence"): "The four-body shape space with its own kinetic metric is isometric to the state space of a real qutrit. Its collision stratification is the rank stratification of density matrices: the coplanar wall is the rank-2 stratum, the collinear stratum is rank 1."
- Attribution fence (verbatim): "The geometry is classical [20, 21, 22]; the application to relational N-body mechanics — and everything built on it below — is this paper's."
- Three-body remark: "at d = 2 the same construction gives the Bures geometry of real qubits, whose pure-state boundary is the round sphere of radius 1/2 — the Kendall shape sphere — which is the control used to validate the curvature machinery next."

## 1.6 Section 2 — The stability spine, done right (pp.3-4)

Eq. (1), reduced Jacobi equation: **∇_t² J + R(J, Ẇ)Ẇ + ∇²U(W) · J = 0**

First-order form: ∇_t Y = A_Jacobi Y, **A_Jacobi = [[0, I5], [−K, 0]]**, **K = K_curv + Hess U**.

"This section supplies the two ingredients of K at the exact/derived grade, and withdraws what an earlier draft printed in their place."

### 2.1 The transport block structure
"The intrinsic transport operator of the series, with the trace-removal coefficient corrected to preserve tangency, is **A(H) = TH + HT − 2 Tr(TH) W** with T = diag(t_i) the mass-inertia data. Its verified block structure in the basis of Section 1 (scripts FOURBODY-AUDIT-01/02/03):"

Eq. (2):
- A11 = (t1 + t2) − (t1 − t2)(w1 − w2)
- A22 = 2 t3 + w3 (t1 + t2 − 2 t3)
- A12 = (1/√3) [ (t1 − t2) − (t1 + t2 − 2 t3)(w1 − w2) ]
- A21 = √3 (t1 − t2) w3

"the shear block exactly diagonal with entries t1+t2, t1+t3, t2+t3, and the shape–shear coupling identically zero in the principal frame."

Non-normality numbers (verbatim): "Non-normality requires both anisotropies: ‖[A, Aᵀ]‖ = 1.78 with T and W both anisotropic, 6 × 10⁻¹⁶ with W isotropic, 0 with T isotropic; its source is the trace-removal term, and any expression of the form Σ_{i<j} (t_i − t_j)² f(w) must carry f(W ∝ I) = 0."

### "A withdrawal." (p.4, italic paragraph — full text verbatim)
"An earlier draft printed shear-block entries carrying (ẇ_i − ẇ_j)²/(w_i − w_j)² and velocity-dependent shape–shear couplings. Those entries are withdrawn, on two independent computations. For the transport operator, the audit shows the shear block is diagonal with no w-dependence and the coupling vanishes under the paper's own principal-frame assumption. For the Jacobi curvature, the fresh derivation below shows the curvature is finite at interior eigenvalue coincidences w_i = w_j: such coincidences are not orbit-type strata of the quotient (the stabilizer of a full-rank X is trivial regardless of the spectrum of G), so nothing singular lives there. The divergences arose from treating first-order eigenvector perturbation theory, Ω_ij = Ẇ_ij/(w_i − w_j), as a mechanical connection. The conclusion those entries served — that the boundary is a rigidity interface — survives and is now derived, at the correct stratum, in Section 3."

### 2.2 The curvature, derived
- "Since no derivation of K_curv existed anywhere in the series, it is supplied here from the construction alone. The total space is the unit sphere ‖X‖_F = 1 (curvature 1), the quotient is by the isometric rotation action, and the O'Neill formula gives the base curvature exactly:"
- Eq. (3): **⟨R(J, V)V, J′⟩ = g(V, V) g(J, J′) − g(J, V) g(V, J′) + 3 ⟨A_V J̃, A_V J̃′⟩**, with the first two terms under-braced "sphere".
- "where A_V J̃ is the vertical part of the derivative of the horizontal-lift field — linear algebra at a point, no model input."
- "Script BH-CURV-01 implements this with **four gates**: (i) Kendall control: at d = 2 the code returns the shape sphere's sectional curvature as 4.0000000 at three distinct points; (ii) symmetry of the quadratic form, exact; (iii) R(V, ·)V annihilates V to 4 × 10⁻¹¹; (iv) the closed-form metric of Theorem 1 recovered."
- "Two structural facts follow at the derived/measured grade:"
  - **Interior finiteness.** "As w1 → w2 at fixed w3 > 0, every curvature entry converges (e.g. K33 → 1.855469): the quotient geometry is smooth across interior eigenvalue crossings, consistent with the orbit-type analysis and with the general nonnegative-curvature theory of the Bures–Wasserstein quotient [21]."
  - **Wall divergence.** "As w3 → 0 the curvature diverges at first order: K44 w3 → 0.0713, K55 w3 → 0.1033, K22 w3 → 0.701 (measured over three decades)."

## 1.7 Section 3 — The wall (pp.4-5)

Stratification (verbatim): "Within Σ4 (dimension 5): the coplanar stratum w3 = 0 (rank 2) has codimension one — it is the only genuine wall, and it is the branch locus over which the oriented shape space double-covers the reflection shape space; the collinear stratum w2 = w3 = 0 (rank 1) has codimension 3; and binary collisions B_ij are codimension-3 subsets of the rank-degenerate locus — generic trajectories miss them entirely. An earlier draft staged its horizon analysis at B_ij; everything below relocates it to the coplanar wall, where three independent, derived mechanisms already live."

### Theorem 2 (the rigidity interface, derived) — grade: Theorem, head word "derived"; items individually graded
"At the coplanar wall w3 → 0 of Σ4:
1. **Metric blow-up (exact).** The kinetic metric diverges in the E2 direction as g(E2, E2) = (1/(6 w3)) (1 + O(w3)), directly from Theorem 1; measured ratio g22 · 6w3 → 1.000101 at w3 = 10⁻⁴. Approaching the wall costs unboundedly in the kinetic metric: the "inertial squeeze" λ → ∞ of the earlier draft is this statement, now derived rather than postulated.
2. **Curvature blow-up (derived law, measured constants).** The Jacobi curvature diverges as C/w3 with the constants of Section 2.
3. **Jordan blocks (exact).** The transport shape block (2) becomes exactly triangular on the wall (A21 = √3(t1−t2)w3 → 0, at rate O(w3)), and under the joint condition
 **t1 + t2 − 2t3 = (t1 − t2)(w1 − w2)**
 its eigenvalues coincide with A12 ≠ 0: a genuine size-2 Jordan block (verified: normalized eigenvector determinant 1.7 × 10⁻¹⁵ with A12 = 0.52). Away from the wall the spectrum is real on the entire regular stratum — the discriminant of (2) is a quadratic form whose determinant is exactly 16 w1 w2 w3 ≥ 0 — so exceptional points exist only on the boundary strata."

Text after the theorem (verbatim): "The wall is thus a rigidity interface in three registers at once: metrically (motion into it is infinitely costly), curvature-wise (tidal stresses diverge), and spectrally (the transport operator degenerates into a Jordan block there and only there). The transverse first-order dynamics at the wall is the oscillator **ÿ⊥ + 2λ y⊥ = 0** with λ → ∞: eigenvalues **±i√(2λ)**, velocity amplitude"

Eq. (4): **‖v⊥(t)‖ ∝ 1/√(2λ) → 0**

"so incoming trajectories flatten and skim the wall — while the oscillator's phase ∫√(2λ) dt remains finite-rate bookkeeping of the encounter. That is the first survival principle in action, and the honest content of the "haircut": the transverse amplitude is sheared away; the phase record is not."

## 1.8 Section 4 — The two survival principles, demonstrated (pp.5-6)

### 4.1 Phase keeps the trace
"When the spectral data ties or oscillates, eigenvector tracking fails while a phase rate remains invariant. This is a calibrated fact of the companion diagnostic work [24]: for a recurrence whose relevant modes are a tied complex pair, the tracked direction rotates indefinitely, and the surviving invariant is the pair's beat rate — measured there against theory (**2π/(3√3)**) with the gap shrinking monotonically. On Σ4 the same principle appears at the wall through (4): the vector datum v⊥ vanishes; the phase ∫√(2λ) dt persists."

### 4.2 The contour keeps the ledger
"When eigenvalues coalesce, rank-one spectral data diverges but contour-integrated (Dunford) data does not. Script BH-LEDGER-01 demonstrates this on the audited operator itself, at the wall's Jordan point (**t = (2, 1, 1.3), w1 − w2 = 0.4, λ\* = 2.6, A12 = 0.485**), approaching along w3 = ε → 0:"

**The ledger table (p.5), complete, as printed:**

| ε | gap | ‖P1‖ (rank-one) | Tr Π (contour) | ledger − 2 log λ\* |
|---|-----|-----------------|----------------|--------------------|
| 10⁻² | 1.8 × 10⁻¹ | 2.7 | 2.000000000000 | −1.2 × 10⁻³ |
| 10⁻⁴ | 1.8 × 10⁻² | 26.5 | 2.000000000000 | −1.2 × 10⁻⁵ |
| 10⁻⁶ | 1.8 × 10⁻³ | 264.6 | 2.000000000000 | −1.2 × 10⁻⁷ |
| 0 | 0 | ∞ | 2.000000000000 | −6.0 × 10⁻¹⁵ |

"Three facts, each gated." (verbatim):
1. "The divergence law snaps closed: ‖P1‖ · gap → |A12| (0.485147 vs. 0.484974) — the blow-up constant of the rank-one projector is the Jordan coupling."
2. "The contour survives the collision: the Riesz projector **Π = (1/2πi) ∮_Γ (λI − A)⁻¹ dλ** has Tr Π = 2 to twelve digits at every depth including the exactly defective point, with ‖Π‖ flat."
3. "The trace-log ledger is exact where eigenvectors are meaningless: **(1/2πi) ∮_Γ log λ Tr R(λ) dλ = 2 log λ\*** to 6 × 10⁻¹⁵ at ε = 0."

Stated hypothesis / failure mode (verbatim): "One hypothesis is visible in the data: at ε = 10⁻¹ the pair sits outside the contour and the integral correctly reports nothing — the contour must enclose the colliding pair with the spectral-gap margin, which is exactly the hypothesis of the perturbation bounds in Appendix A."

### "The Hairdresser, as a named interpretation." (p.6 — full text verbatim)
"With both principles in hand, the no-hair analogy can be stated honestly. The interface executes rank compression, not destruction: the *scissors* are the exact vanishing of the back-coupling (A21 = O(w3) → 0: block-triangular decoupling); the *fingers* are the transverse suppression (4) that flattens trajectories parallel to the wall; the *mirror* is the trace-log ledger, exact at the defective point; the *light* is the Dunford contour that keeps the enclosed invariants finite. This is imagery for derived structure — each phrase names a gated computation — and it is only imagery: no claim about information in quantum gravity is made."

## 1.9 Section 5 — Pseudospectral transients: attribution and the shape-space side (p.6)

Black-hole side (verbatim): "On the black-hole side, the transient story is the literature's. Horizons make the perturbation operator non-selfadjoint; quasinormal modes are non-orthogonal in physically relevant inner products; non-orthogonality yields transient plateaus — arbitrarily long-lived quasinormal sums, localized energy packets near the future horizon — and transient growth measured in higher-derivative Sobolev norms [5, 7]; the pseudospectrum organizes the spectral instability [1, 3]; and the choice of norm is a structural input [4]. Transient superradiance occurs in modally stable regimes [6]."

Shape-space side: "the same structure follows from the machinery above. The stability tensor satisfies [K, Kᵀ] ≠ 0 under the anisotropy conditions of Section 2, so eigenfunctions are non-orthogonal, ⟨φ_n, φ_m⟩_{H¹(Σ4)} = Δ_nm ≠ δ_nm, and a superposition of decaying modes holds its energy across a plateau whose duration is controlled by the Kreiss constant:"

Unnumbered display:
- **‖J(t)‖²_{H¹(Σ4)} = Σ_n |c_n|² e^{2 Im(ω_n) t} + Σ_{n≠m} c_n\* c_m e^{i(ω_n\* − ω_m) t} Δ_nm**
- **sup_t ‖e^{−i A_Jacobi t}‖ ≥ K_C**, with **K_C = sup_{Im ω > 0} Im(ω) ‖(ωI − A_Jacobi)⁻¹‖** "(the Kreiss bound controls the supremum over time, not each instant)."

"The inner product on TΣ4 is not free: the quotient metric of Theorem 1 is the physically induced choice, and the sensitivity of transient conclusions to that choice is precisely the structural point of [4] on the gravitational side."

Projector overlap functional: "**C(Δ) = Tr(Π(t) Π(t + Δ))**: observable channels are those with C(Δ) → 1."

No grade word is attached to §5's shape-side paragraph beyond "follows from the machinery above"; no script/gate is named for it.

## 1.10 Section 6 — The correspondence, at its honest grade (pp.6-7)

### Theorem 3 (shared wall structure — shape side proven, GR side cited) — exact statement
"At the coplanar wall of Σ4, the linearized dynamics has the exact structure: (i) block-triangular decoupling of the transverse sector at rate O(w3); (ii) transverse oscillator frequencies ±i√(2λ) with amplitude suppression 1/√(2λ) and persistent phase; (iii) spectral degeneracy confined to the wall, in exact size-2 Jordan blocks under the condition of Theorem 2; (iv) contour-level data (Riesz projector, trace-log ledger) finite and exact through the degeneracy. Each item is a gated computation of this paper. Black-hole horizons exhibit the corresponding structure on the general-relativity side: one-way membrane behavior [13], non-normal perturbation operators with pseudospectrally unstable overtones [1], and transient dynamics governed by non-orthogonal quasinormal sums [5]. These are cited, not re-derived."

### Conjecture 1 (the dictionary) — grade: Conjecture ("proposed")
"The correspondence extends level-by-level:"

| Shape wall ∂Σ4 (coplanar) | Horizon patch H⁺ |
|---|---|
| Jacobi fields under singular reorientation | static fields, proper acceleration → ∞ |
| mass-weighted currents | membrane currents [13] |
| rank-1 densities P = N Nᵀ | coalesced QNM projectors |
| pullback metric + trace-log ledger Q_Π | pseudospectral ledger of the ringdown operator |

Fence (verbatim, italic, inside the conjecture): "**No isomorphism is claimed.** Establishing any row above theorem grade requires deriving the horizon-side block structure from a concrete perturbation operator (e.g. hyperboloidal Regge–Wheeler [11, 1]) and exhibiting the map — open problems 1–2 of Section 9."

Paragraph after the conjecture (verbatim): "Two ingredients of earlier drafts are deliberately absent from the theorem. The claimed equivalence between exceptional points and Ricci blow-up of a backreacting metric is unproven and is retired to Section 9. And the refraction law R1 sin²θ1 = R2 sin²θ2 is not used as a bridge: the sin → sin² step is under audit across the paper series (the variational derivation in the foundational paper yields first-power Snell), and until that audit closes, no argument here rests on it."

## 1.11 Section 7 — Gauge extension (p.7)

"Internal non-Abelian charge is incorporated at the standard grade. A charge vector q ∈ 𝔤 coupled along the trajectory through **L = ½ g_μν ẋ^μ ẋ^ν + g_s Tr(q A_μ) ẋ^μ** obeys the Wong equations [14, 15]"

- **q̇ = −g_s [A_μ ẋ^μ, q]**
- **d/dt (g_μν ẋ^ν) − ½ ∂_μ g_αβ ẋ^α ẋ^β = g_s Tr(q F_μν) ẋ^ν**

"the charge is dragged and rotated by transport, and its current back-reacts as a Lorentz-type force. This is classical [14, 15] and is used here only as the mechanism populating a gauge sector K_gauge."

### Proposition 1 (conditional persistence of defectiveness) — grade: Proposition, "conditional"
Exact statement: "Let K = K_geom + K_gauge with F_μν ≠ 0, and assume (i) the sectors act orthogonally, Tr(K_geomᵀ K_gauge) = 0, and (ii) the mixed cross-commutator is strictly dominated, ‖R_mixed‖ < g_s² Σ_a ‖[q_i^a, q_j^a]‖². Then ‖[K, Kᵀ]‖ > 0 even at perfect spatial isotropy t1 = t2 = t3 (where ‖[K_geom, K_geomᵀ]‖ = 0 by Section 2)."

Paper's own comment on its grade (verbatim): "The algebra is a reverse triangle inequality and is elementary; the content lives entirely in hypothesis (ii), which asserts rather than proves that the gauge sector's non-normality is not cancelled by cross terms. The proposition is therefore conditional, and establishing (ii) for a concrete field configuration is open problem 4."

(No gauge group is named in v2 §7; "SU(3)" does not appear in the v2 text. R_mixed is not defined in v2.)

## 1.12 Section 8 — Speculative extensions, fenced (pp.7-8)

Fence sentence (verbatim): "Nothing in this section is derived; each item is an ansatz or analogy, recorded because it points somewhere concrete."

1. **Superradiant extraction rate.** "Motivated by the established transient superradiance of [6], an extraction-rate ansatz for the gauge-extended shape system is

 dE/dt ≟ α_s ∫_{Σ4} Tr( J^μ_color F_μν Ẇ^ν ) ‖J‖² √|g| d⁵w + γ ∫_{Σ4} Tr( [D_t K, Kᵀ] (J J†) ) √|g| d⁵w,

 an alignment term plus an advective pseudospectral driver. Its derivation from the H¹(Σ4) energy functional, with the quotient metric of Theorem 1 in place, has not been carried out." (The equality is printed with a question mark over it.) Grade: ansatz.
2. **Junction matching.** "A Darmois–Israel-type matching [18] of the discrete wall data to a continuum exterior, sourcing a surface stress from the lattice turning angle, is a proposed program, not a result: the bridge identity equating the extrinsic-curvature jump with lattice parameters is an ansatz."
3. **Condensed-matter analogue.** "Polariton interfaces with non-Hermitian mass-coupling matrices plausibly realize the same rigidity-interface structure near their exceptional points; a quantitative trapping law awaits a dimensionally consistent derivation (the closed formula of earlier drafts is withdrawn as heuristic)."

## 1.13 Section 9 — Open problems (p.8), complete and verbatim

1. "Derive the horizon-side block structure of Theorem 3 from a concrete non-selfadjoint ringdown operator on hyperboloidal slices [1], and exhibit the map of Conjecture 1 row by row."
2. "Compute the Bures–Wasserstein/qutrit dictionary's physical content: what does the quantum-information structure of Σ4 (fidelity, quantum Fisher information) measure mechanically?"
3. "Close the sin vs. sin² audit of the refraction law across the series; only then may it re-enter the correspondence."
4. "Establish or refute hypothesis (ii) of Proposition 1 for a concrete non-Abelian background."
5. "The exceptional-point/Ricci-blow-up equivalence of earlier drafts: prove it for the backreacting metric ansatz, or retire it permanently."
6. "Extract the closed forms of the wall-curvature constants (K44 w3 → 0.0713 . . ., K55 w3 → 0.1033 . . ., K22 w3 → 0.701 . . .) from the O'Neill formula analytically."
7. "The square-case ladder: the same construction at d = 4, 5 (N = 5, 6 bodies) gives Bures geometries of higher-rank state spaces; which wall results survive?"

## 1.14 Appendix A — Projector persistence bounds (pp.8-9)

Setup: "Let A be a bounded operator, Γ a closed contour isolating σ_Γ(A) ⊂ σ(A) with spectral gap δ_gap = dist(Γ, σ(A) \ σ_Γ(A)) > 0, and A′ = A + E, ‖E‖ ≤ ε. With R_A(λ) = (λI − A)⁻¹ and the pseudospectral growth factor **C_Γ = sup_{λ∈Γ} ‖R_A(λ)‖ · δ_gap**:"

**Lemma 1 (Neumann resolvent bound).** "If ε < (sup_{λ∈Γ} ‖R_A(λ)‖)⁻¹ then R_{A′}(λ) exists on Γ with ‖R_{A′}(λ)‖ ≤ ‖R_A(λ)‖ / (1 − ‖R_A(λ)‖ ε)."
Proof as printed: "λI − A′ = (λI − A)(I − R_A(λ)E); the Neumann series for the second factor converges geometrically under the hypothesis, and the norm bound is the geometric sum." □

**Theorem 4 (projector persistence Lipschitz bound).** "For ε < δ_gap / C_Γ, the Riesz projectors Π, Π′ over Γ satisfy

‖Π′ − Π‖ ≤ [ ℓ(Γ) C_Γ² / ( 2π δ_gap (δ_gap − ε C_Γ) ) ] ε,

so the map from operators to their Grassmannian projector data is locally Lipschitz: higher-rank spectral subspaces vary continuously even where individual eigenvectors are defective."
Proof as printed: "Π′ − Π = −(1/2πi) ∮_Γ R_A(λ) E R_{A′}(λ) dλ by the resolvent identity; apply the lemma and the triangle inequality for integrals." □

Grade sentence (verbatim): "These are standard Kato-type estimates [10, 8]; they are included because Section 4's demonstration realizes their hypotheses concretely — including the failure mode when the contour does not enclose the colliding pair."

## 1.15 Appendix B — The scripts: proof of record (pp.9-12)

**The two scripts ARE listed in full inside the PDF** (numbered code listings in framed boxes): BH-CURV-01 on pp.9-11 (152 numbered lines), BH-LEDGER-01 on pp.11-12 (71 numbered lines). The PDF does **not** print the scripts' console output; outcomes are given only in the paper's prose (and the §4.2 table).

Intro paragraph (verbatim): "Both scripts run standalone (Python 3.12.3, NumPy, mpmath 1.3.0) from a clean directory. BH-CURV-01 carries six gates: the Kendall d = 2 control (sectional curvature 4.0000000), quadratic-form symmetry (exact), R(V, ·)V · V = 0 (4×10⁻¹¹), the closed-form quotient metric (Theorem 1), interior finiteness at w1 → w2, and the wall laws g22 · 6w3 → 1.000101 with curvature ∼ C/w3. BH-LEDGER-01 carries three: the snapped divergence law ‖P1‖ · gap → |A12|, Tr Π = 2.000000000000 through and at the Jordan point, and the trace-log ledger exact to 6 × 10⁻¹⁵ at the defective point."

### Script BH-CURV-01 — gates and stated outcomes

Listing heading: "BH-CURV-01 — quotient metric and O'Neill curvature of Σ4; six gates"

Header comments as listed (lines 1-9):
- "# SCRIPT: BH-CURV-01 -- fresh derivation of the Jacobi curvature term on Sigma_4"
- "# via O'Neill for the submersion S^{d^2-1} (flat sphere of X's, ||X||_F=1) -> Sigma"
- "# under X -> RX (SO(d) left action), base coordinate G = X^T X (the audited invariant)."
- "# GATES:"
- "# G1: d=2 control -- Kendall shape sphere sectional curvature == 4 (exact known value)"
- "# G2: symmetry K_curv(a,b) = K_curv(b,a)"
- "# G3: row/column along V vanishes (R(V,V)V structure)"
- "# G4: quotient metric g_ab = <H_a,H_b> reported (tests the paper's silent g=I assumption)"
- "# G5: blow-up structure of shear entries as w1 -> w2 (exponent + which entries)"
- (The header comment block lists G1-G5 only. A sixth gate, G6, appears only in a print statement at line 138.)

| Gate | Name in script (header comment / print string) | Outcome as stated in the paper's prose |
|---|---|---|
| G1 | header: "d=2 control -- Kendall shape sphere sectional curvature == 4 (exact known value)"; print: "=== GATE G1: Kendall d=2 control (expect sectional curvature 4) ===" ; run at (a,b) = (0.7,0.3), (0.5,0.5), (0.9,0.1) | "4.0000000 at three distinct points" (§2.2 gate (i)); "sectional curvature 4.0000000" (App. B) |
| G2 | header: "symmetry K_curv(a,b) = K_curv(b,a)"; print: "GATE G2 symmetry: max\|K-K^T\| =" | "symmetry of the quadratic form, exact" (§2.2 gate (ii)); "quadratic-form symmetry (exact)" (App. B) |
| G3 | header: "row/column along V vanishes (R(V,V)V structure)"; print: "GATE G3 \|K . (g^{-1} gV)\| structure: \|K @ V\| =" | "R(V, ·)V annihilates V to 4 × 10⁻¹¹" (§2.2 gate (iii)); "R(V, ·)V · V = 0 (4×10⁻¹¹)" (App. B) |
| G4 | header: "quotient metric g_ab = <H_a,H_b> reported (tests the paper's silent g=I assumption)"; print: "quotient metric g_ab (GATE G4 -- is it identity?):" ; run at w = (0.5, 0.3, 0.2), V = (0.3, −0.2, 0.4, 0.1, −0.5) normalised | "the closed-form metric of Theorem 1 recovered" (§2.2 gate (iv)); Theorem 1 verification numbers g33 = 0.625, g44 = 0.714286, g55 = 1.000 at w = (0.5, 0.3, 0.2) |
| G5 | header: "blow-up structure of shear entries as w1 -> w2 (exponent + which entries)"; print: "=== GATE G5: blow-up as w1 -> w2 (V purely in shape direction E1) ===" ; w = (0.4+dlt/2, 0.4−dlt/2, 0.2), dlt = 1e-1, 1e-2, 1e-3, 1e-4; V = E1 | "interior finiteness at w1 → w2" (App. B); "every curvature entry converges (e.g. K33 → 1.855469)" (§2.2) |
| G6 | no header comment; print: "=== GATE G6: the TRUE wall -- blow-up at the coplanar stratum w3 -> 0 ===" and "metric prediction: g22 = sum (E2)_ii^2/(4 w_i) contains 4/(24 w3) = 1/(6 w3) -> infinity"; w = (0.55(1−w3), 0.45(1−w3), w3), w3 = 1e-1, 1e-2, 1e-3, 1e-4; then "fit: K44*w3, K55*w3 ->" for w3 = 1e-2, 1e-3, 1e-4 | "the wall laws g22 · 6w3 → 1.000101 with curvature ∼ C/w3" (App. B); "K44 w3 → 0.0713, K55 w3 → 0.1033, K22 w3 → 0.701 (measured over three decades)" (§2.2); "measured ratio g22 · 6w3 → 1.000101 at w3 = 10⁻⁴" (Thm 2) |

Other details of the BH-CURV-01 listing as printed:
- imports mpmath (mp.mp.dps = 40) and numpy; line 14: `def frob(A,B): return float('nan') # placeholder (numpy used below)`.
- `make_basis3()` builds E1..E5 exactly as in §1; `skew_basis(d)`; class `Submersion` with `lift` (solves "X^T H + H^T X = E (sym, d(d+1)/2 eqs), X H^T - H X^T = 0 (skew, d(d-1)/2 eqs)"), `sphere_proj`, `vert_proj`, `A_tensor` (central finite difference, eps = 1e-6: "A_{H1} (lift field of E2) = vert( sphere-covariant derivative along H1 )").
- `sigma4_curvature(w, Vcoef, eps)`: K[a,b] = sph + 3·Σ(AV[a]·AV[b]) with sph = VV·g[a,b] − gV[a]·gV[b].
- G1 formula (line 113): `num=(1.0*(g22*g11-g12**2))+3*np.sum(A12*A12) # sphere K=1 sectional part + O'Neill`; `K_sec=num/(g11*g22-g12**2)`.
- Line 126 is a dead expression: `KV=... if False else None`.
- The G6 loop prints g22, 1/(6w3), K44, K55, K22 for each w3; the "fit" loop prints K44*w3, K55*w3, g22*6*w3 (it does not print K22*w3).

### Script BH-LEDGER-01 — gates and stated outcomes

Listing heading: "BH-LEDGER-01 — the Dunford ledger at the wall's Jordan point; three gates"

Header comments as listed (lines 1-9):
- "# SCRIPT: BH-LEDGER-01 -- the Dunford trace-log ledger, computed on the audited operator"
- "# at the coplanar wall's Jordan point. His tip made precise:"
- "# rank-one (eigenvector) data DIVERGES ~ 1/gap approaching the Jordan point;"
- "# contour (Dunford/Riesz) data stays EXACT, including AT the defective point."
- "# Audited shape block (four-body audit, FOURBODY-AUDIT scripts):"
- "# A11 = (t1+t2) - (t1-t2)(w1-w2); A22 = 2 t3 + w3 (t1+t2-2t3)"
- "# A12 = [ (t1-t2) - (t1+t2-2t3)(w1-w2) ] / sqrt(3); A21 = sqrt(3) (t1-t2) w3"
- "# Shear block diagonal: t1+t2, t1+t3, t2+t3 (separated spectators)."
- "# Jordan condition at w3=0: S = a (w1-w2), S = t1+t2-2t3, a = t1-t2."

Parameters in the listing: `t1,t2,t3 = 2.0, 1.0, 1.3 # a = 1, S = 0.4`; `dw = 0.4 # w1 - w2 = S/a -> Jordan at w3 = 0`; `lamstar = 2*t3 # = A11 = A22 at the Jordan point = 2.6`; `block(eps)`: w1 = 0.7 − eps/2, w2 = 0.3 − eps/2, w3 = eps; `riesz(A, z0, r, npts=4000, f=None)` — circle contour, centre z0 = Tr(A)/2 (or lamstar at eps = 0), **radius 0.15**, 4000 points; mp.mp.dps = 30.

Main loop: eps in [1e-1, 1e-2, 1e-3, 1e-4, 1e-6, 0.0]; printed columns: eps, gap, "||P1|| rank-one", "Tr Pi (contour)", "||Pi_blk||", "ledger - 2 log(lam*)". (p1n = inf when gap ≤ 1e-14.)

| Gate | Name / print string in script | Outcome as stated in the paper's prose |
|---|---|---|
| L1 | "[GATE L1] rank-one projector norm diverges ~ 1/gap: compare \|\|P1\|\|*gap:" for eps = 1e-2, 1e-3, 1e-4 | "The divergence law snaps closed: ‖P1‖ · gap → \|A12\| (0.485147 vs. 0.484974)" (§4.2); "the snapped divergence law ‖P1‖ · gap → \|A12\|" (App. B) |
| L2 | "[GATE L2] AT the Jordan point (eps=0): A = ..." ; prints "off-diagonal A12 = ... (nonzero -> genuinely defective), A21 = ...", "Tr Pi (contour) = ... (exact: 2)", "\|\|Pi_blk\|\| = ... (bounded; = \|\|I2\|\| + nilpotent part)", "trace-log ledger = ... vs 2 log(lam*) = ..." | "Tr Π = 2.000000000000 through and at the Jordan point" (App. B); "Tr Π = 2 to twelve digits at every depth including the exactly defective point, with ‖Π‖ flat" (§4.2) |
| L3 | "[GATE L3] ledger exact at the defective point: {abs(...) < 1e-9}" (a True/False print with tolerance 1e-9) | "the trace-log ledger exact to 6 × 10⁻¹⁵ at the defective point" (App. B and §4.2; table row ε = 0: −6.0 × 10⁻¹⁵) |

### Scripts named in the paper but NOT listed in the PDF **[reader observation]**
- **FOURBODY-AUDIT-01/02/03** — named in §2.1 as the source of the "verified block structure" (2), named in the BH-LEDGER-01 header ("FOURBODY-AUDIT scripts"), and named on the infographic footer. No listing of these three scripts appears in the PDF. The numbers ‖[A,Aᵀ]‖ = 1.78 / 6 × 10⁻¹⁶ / 0, the "normalized eigenvector determinant 1.7 × 10⁻¹⁵ with A12 = 0.52", and the discriminant-determinant "exactly 16 w1 w2 w3" are not printed by either listed script; the paper attributes the block structure to the FOURBODY-AUDIT scripts and does not say which script produced the other three items.

## 1.16 Appendix C — Graphical summary (pp.13-14)

Page 13: heading only. Page 14 (landscape): the infographic (same picture as file 2 below; text identical as far as legible in the PDF raster) with this caption, verbatim:

"The Hairdresser toolkit, with every panel naming a gated computation: the scissors (A21 = O(w3) → 0, block-triangular at the wall), the fingers (transverse amplitude ∝ 1/√(2λ), phase persists), the mirror (trace-log ledger exact at the defective point), and the light (Tr Π = 2 through the collision; rank-one data diverges as |A12|/gap)."

This is the only figure in the paper. There is no figure number.

## 1.17 Complete reference list (pp.15-16), as printed

- [1] J. L. Jaramillo, R. Panosso Macedo, L. Al Sheikh, *Pseudospectrum and black hole quasinormal mode instability*, Phys. Rev. X 11, 031003 (2021).
- [2] J. L. Jaramillo, R. Panosso Macedo, L. Al Sheikh, *Gravitational wave signatures of black hole quasinormal mode instability*, Phys. Rev. Lett. 128, 211102 (2022).
- [3] K. Destounis, R. Panosso Macedo, E. Berti, V. Cardoso, J. L. Jaramillo, *Pseudospectrum of Reissner–Nordström black holes*, Phys. Rev. D 104, 084091 (2021).
- [4] E. Gasperin, J. L. Jaramillo, *Energy scales and black hole pseudospectra: the structural role of the scalar product*, Class. Quantum Grav. 39, 115010 (2022).
- [5] J. Besson, J. Carballo, C. Pantelidou, B. Withers, *Transients in black hole perturbation theory*, Front. Phys. 13, 1638583 (2025).
- [6] J. Carballo, C. Pantelidou, B. Withers, *Non-modal effects in black hole perturbation theory: transient superradiance*, JHEP 08 (2025) 179.
- [7] J. Carballo, B. Withers, *Transient dynamics of quasinormal mode sums*, JHEP 10 (2024) 084.
- [8] L. N. Trefethen, M. Embree, *Spectra and Pseudospectra*, Princeton University Press (2005).
- [9] H.-O. Kreiss, *Über die Stabilitätsdefinition für Differenzengleichungen die partielle Differentialgleichungen approximieren*, Math. Scand. 10, 85 (1962).
- [10] T. Kato, *Perturbation Theory for Linear Operators*, Springer (1995).
- [11] T. Regge, J. A. Wheeler, *Stability of a Schwarzschild singularity*, Phys. Rev. 108, 1063 (1957).
- [12] E. Berti, V. Cardoso, A. O. Starinets, *Quasinormal modes of black holes and black branes*, Class. Quantum Grav. 26, 163001 (2009).
- [13] K. S. Thorne, R. H. Price, D. A. Macdonald, *Black Holes: The Membrane Paradigm*, Yale University Press, New Haven, CT (1986).
- [14] S. K. Wong, *Field and particle equations of motion in a gauge theory*, Nuovo Cimento A 65, 689 (1970).
- [15] R. Jackiw, N. S. Manton, *Classical and quantum dynamics of a particle with color*, Ann. Phys. 105, 103 (1977).
- [16] J. Barbour, *The End of Time*, Oxford University Press (1999).
- [17] R. Montgomery, *Infinitely many syzygies*, in *Central Motions in N-Body Mechanics* (2002).
- [18] W. Israel, *Singular hypersurfaces and thin shells in general relativity*, Nuovo Cimento B 44, 1 (1966).
- [19] D. Bures, *An extension of Kakutani's theorem on infinite product measures*, Trans. Amer. Math. Soc. 135, 199 (1969).
- [20] R. Bhatia, T. Jain, Y. Lim, *On the Bures–Wasserstein distance between positive definite matrices*, Expo. Math. 37, 165 (2019).
- [21] Y. Thanwerdas, X. Pennec, *Bures–Wasserstein minimizing geodesics between covariance matrices of different ranks*, SIAM J. Matrix Anal. Appl. (2022); arXiv:2204.09928.
- [22] J. van Oostrum, *Bures–Wasserstein geometry for positive-definite Hermitian matrices and their trace-one subset*, Inf. Geom. (2020); arXiv:2001.08056.
- [23] I. L. Dryden, *A multidimensional scaling approach to shape analysis*, (reflection shape space via Gram matrices).
- [24] J. Beasley, *The companion-matrix projector diagnostic: an exact order-2 theorem, a convergence criterion, and a complete calibration*, 2026.

**[reader observation]** In-text citation use: [1] §0, §5, Thm 3, Conj. 1, OP1; [2] abstract, §0; [3] abstract, §0, §5; [4] §0, §5; [5] abstract, §0, §5, Thm 3; [6] abstract, §0, §5, §8; [7] abstract, §0, §5; [8] App. A; [10] App. A; [11] Conj. 1; [13] Thm 3, Conj. 1; [14],[15] §7; [18] §8; [19]-[22] §1 ([21] also §2.2); [24] §0, §4.1. I found no in-text citation of [9], [12], [16], [17] or [23]. Note reference [24] is bylined "J. Beasley" while the title page is "Jeromie N. Beasley".

## 1.18 Every numeric value in v2 (collected)

| Value | What | Location |
|---|---|---|
| 4.0000000 | Kendall d=2 sectional curvature control | abstract; §2.2 (i); App. B |
| 0.625 = 1/(2·0.8); 0.714286 = 1/(2·0.7); 1.000 = 1/(2·0.5) | g33, g44, g55 at w = (0.5, 0.3, 0.2) | Thm 1 derivation |
| 1.78; 6 × 10⁻¹⁶; 0 | ‖[A,Aᵀ]‖ with both anisotropic; W isotropic; T isotropic | §2.1 |
| 4 × 10⁻¹¹ | R(V,·)V annihilates V | §2.2 (iii); App. B |
| 1.855469 | K33 limit as w1 → w2 | §2.2 |
| 0.0713; 0.1033; 0.701 | K44 w3, K55 w3, K22 w3 as w3 → 0 ("measured over three decades") | §2.2; OP6 |
| 1/(6 w3); 1.000101 at w3 = 10⁻⁴ | metric blow-up law; measured ratio g22·6w3 | Thm 2.1; App. B; abstract |
| codim 1 / 3 / 3 | coplanar w3=0 (rank 2) / collinear w2=w3=0 (rank 1) / binary collisions B_ij | §3 |
| 1.7 × 10⁻¹⁵ with A12 = 0.52 | normalized eigenvector determinant at Jordan block | Thm 2.3 |
| 16 w1 w2 w3 | determinant of the discriminant quadratic form of (2) | Thm 2.3 |
| 2π/(3√3) | theory beat rate in [24] | §4.1 |
| t = (2, 1, 1.3); w1 − w2 = 0.4; λ\* = 2.6; A12 = 0.485 | Jordan point of ledger demo | §4.2 |
| table rows | see 1.8 | §4.2 |
| 0.485147 vs 0.484974 | ‖P1‖·gap vs \|A12\| | §4.2 |
| 2.000000000000 | Tr Π | abstract; §4.2; App. B; infographic |
| 6 × 10⁻¹⁵ (table: −6.0 × 10⁻¹⁵) | ledger exactness at ε = 0 | abstract; §4.2; App. B; infographic |
| radius 1/2 | Kendall shape sphere | §1 |
| Python 3.12.3, mpmath 1.3.0 | script environment | App. B |
| contour radius 0.15, 4000 points; dps 30 / 40; eps 1e-6 | script parameters | listings |

## 1.19 What v2 says about earlier drafts (every such sentence, with location)

- Abstract: "withdrawing, with the computation on record, the divergent shear entries of an earlier draft".
- §2 intro: "withdraws what an earlier draft printed in their place."
- §2.1: "with the trace-removal coefficient corrected to preserve tangency".
- §2.1 "A withdrawal." (full text in 1.6).
- §2.2: "Since no derivation of K_curv existed anywhere in the series, it is supplied here".
- §3: "An earlier draft staged its horizon analysis at B_ij; everything below relocates it to the coplanar wall".
- Thm 2.1: "the "inertial squeeze" λ → ∞ of the earlier draft is this statement, now derived rather than postulated."
- §6: "Two ingredients of earlier drafts are deliberately absent from the theorem." (EP/Ricci equivalence "unproven and is retired to Section 9"; refraction law "not used as a bridge ... under audit").
- §8: "(the closed formula of earlier drafts is withdrawn as heuristic)".
- OP5: "The exceptional-point/Ricci-blow-up equivalence of earlier drafts: prove it for the backreacting metric ansatz, or retire it permanently."
- BH-CURV-01 header G4: "(tests the paper's silent g=I assumption)"; G6 print: "the TRUE wall".

---

# FILE 2 — `infographic_hairdresser_corrected.png`

Binary PNG image, 1,528,665 bytes, landscape (about 1380 × 752 px as displayed). Viewed. Dark sci-fi control-room art: a luminous long-haired female figure holding two tools at top centre above a black hole with an orange accretion ring; four framed panels (two left, two right); a glowing circular platform at bottom centre. It is the same picture that appears on p.14 of the v2 PDF.

Every piece of legible text on it:

- Top strip (cyan): **"THE HAIRDRESSER'S BOUNDARY TOOLKIT: OPERATOR DECOUPLING AT THE RIGIDITY WALL"**
- Main title (white): **"BLACK HOLE HAIRDRESSER"**
- Centre labels: **"Infalling Information Stream"** (beside the figure/stream above the black hole); **"EVENT HORIZON: THE HAIRDRESSER'S CHAIR"** (below the black hole)
- Bottom centre plate: **"HAIRDRESSER OPERATOR TOOLKIT"**
- Footer line: **"J. Beasley · August 2026 · gated record: BH-CURV-01 · BH-LEDGER-01 · FOURBODY-AUDIT-01/02/03"**

Top-left panel (scissors icon and scissors art):
- Header: **"THE SCISSORS // WALL DECOUPLING OPERATOR (C_lower)"**
- Side glyph: **"C_lower"**
- Orange tag: **"[BLOCK-TRIANGULAR AT THE WALL]"**
- Text: "lower-left coupling A₂₁ = √3(t₁−t₂)w₃ → 0 / at rate O(w₃) on the coplanar wall — derived, / not modeled. The transverse sector decouples."

Top-right panel (hand icon and hand art):
- Header: **"THE FINGERS // ALIGNMENT PROJECTOR SUBSYSTEM (Π_p)"**
- Side glyph: **"Π"**
- Orange tag: **"[TRANSVERSE SUPPRESSION]"**
- Text: "amplitude ‖v⊥‖ ∝ 1/√(2λ) → 0; / trajectories flatten parallel to the wall; / the phase ∫√(2λ)dt persists as the record."

Bottom-left panel (mirror icon and tiled-mirror art):
- Header: **"THE MIRROR // TRACE-LOG LEDGER (Q_Π)"**
- Orange tag: **"[EXACT AT THE DEFECTIVE POINT]"**
- Text: "(1/2πi)∮ logλ Tr R(λ) dλ = 2 log λ\* / to 6×10⁻¹⁵ AT the Jordan point — where / eigenvector arithmetic returns infinity."

Bottom-right panel (light-bulb icon and contour-loop art):
- Header: **"THE LIGHT // DUNFORD RESOLVENT CONTOUR (Γ)"**
- Side glyph: **"∮"**
- Orange tag: **"[CONTOUR SURVIVES THE COLLISION]"**
- Text: "Tr Π = 2.000000000000 through and at the EP; / rank-one data diverges as |A₁₂|/gap (snapped law); / contour must enclose the pair (δ_gap margin)."

Not legible: small decorative plot labels inside the background art of the two lower panels (tiny axis marks; a few characters that look like "Q" with a subscript and "Dynamic" above a small curve in the mirror panel). These are part of the artwork, too small to read with confidence.

No DOI appears on the image. Byline on the image is "J. Beasley".

**[reader observation]** The image headers carry labels **C_lower** and **Π_p**; those two symbols do not appear anywhere in the body text of v2 (they are the July version's names — `BLKHOLE (4).txt` lines 321-337, 466-470, 903). The body text under each header uses v2's own quantities (A₂₁, w₃, the coplanar wall). The top strip's phrase "Operator Decoupling at the Rigidity Wall" is the subtitle under which the Suns paper cites the black-hole companion (see file 3, bibitem `blkhole`).

---

# FILE 3 — `suns_v1_5.tex` (the companion Suns paper, v1.5 source)

## 3.0 Title block as printed (tex lines 17-21)

- Title: **"Transient Structure at Solar Rigidity Interfaces and the Exceptional Point of the Dynamo Wave: An Operator-First Study of the Sun"** (last clause set as a `\large` subtitle)
- Author: **"Jeromie N. Beasley"**
- Date: **"August 16, 2026"**
- "v1.5" appears only in the file/folder name, not in the text.
- Acknowledgments (lines 677-680): "Computational verification, gating, and drafting assistance by an AI collaborator (Claude, Anthropic); every gate above is independently re-runnable from Appendix A. License: CC BY 4.0."
- The preamble defines theorem, proposition, conjecture, definition, remark environments (lines 7-13). **[reader observation]** None of them is used in the body: the Suns paper contains no numbered theorem, proposition or conjecture.

## 3.1 Section list

- Abstract
- 0. Claims, grades, and verification protocol (unnumbered `\section*`, with the claims table)
- 1 Introduction: the sun as the observable panel (`sec:intro`)
- 2 The wall operator: SHEAR-LANE-01 (`sec:lane`) — 2.1 Setup and predictions; 2.2 Results
- 3 Comparison with the resolved vortices (`sec:compare`) — 3.1 The growth rate; 3.2 The layer width; 3.3 The inclination curve
- 4 The hair-rate ladder (`sec:ladder`)
- 5 The dynamo operator: BH-DYNAMO-01 (`sec:dynamo`) — 5.1 Setup and predictions; 5.2 Results; 5.3 SUN-N-01: the integer record at the exceptional point
- 6 The edge census across walls (`sec:census`)
- 7 Closing the open problems: computations and worldwide data status (`sec:closures`) — OP1 … OP8 (unnumbered subsections)
- 8 Remaining open problems (4 items)
- Appendix A Scripts — A.1 … A.8 (each a `\verbatiminput` of a .py file)
- Acknowledgments
- Bibliography (37 bibitems)

Figures referenced (files not present in the folder): `figS1_lane.pdf` (Fig. lane), `figS4_braid.pdf` (Fig. braid), `figS2_ep.pdf` (Fig. ep), `figS3_ladder.pdf` (Fig. ladder), `figS5_butterfly.pdf` (Fig. butterfly).

## 3.2 Grade labels (tex lines 67-73, verbatim)

"Each claim carries a grade: **[T]** proven; **[V]** computationally verified (script and measured value quoted; all scripts in Appendix A); **[C]** cited literature with hypotheses stated; **[H]** hypothesis or interpretation. A superscript, [V]^ansatz, marks a computation that verifies the consequence of an explicitly named assumption, not the assumption itself. Predictions were written down before each run; failures are reported with the same prominence as successes."

Also used in the table: **[V]^computed** (two rows; this superscript is not defined in the grade paragraph), **[V]+[C]**, **[V]+[H]**. No row carries [T].

## 3.3 Abstract (lines 26-64) — content

- "We study the sun as the observable panel of a single operator-theoretic family: non-normal transport operators whose stress concentrates at rigidity interfaces, previously developed for the four-body shape manifold and its black-hole horizon analogue."
- "Two computations carry the paper, each stated as predictions before it was run and graded afterward."
- (1) Magnetized shear layer with field inclination as the control dial ("the geometry of the 2026 DKIST observation of vortex chains confined to the boundaries of photospheric magnetic flux concentrations"): "a measured modal quench at tilt 30°–35° and, beyond it, a directional-rigidity curve, strictly decreasing over the sampled tilts: maximum transient energy growth falls 8.8 → 2.3 and the Kreiss constant falls 1.80 → 1.08 as the field tilts into the shear." "an unordered finding — the operator's commutator stress rises while its realizable amplification falls: tension stores stress without releasing it". "one dimensionless number fixed by the fastest-growing mode, λ/d = 13.96". "Taking only the observed peak wavelength of 65 km, that ratio and the observers' measured apparent speeds predict linear growth rates of 0.0137–0.0612 s⁻¹ against a measured 0.014–0.054 s⁻¹: agreement to two percent at the slow end and thirteen at the fast end, with the growth rate never an input and no width convention entering. The same ratio places the lane width between 9 and 19 km, below the instrument's resolution floor."
- (2) Minimal Parker αΩ dynamo operator: "the birth of the oscillatory dynamo-wave branch occurs at an exceptional point: two real branches collide at α0\* = 3.872 with eigenvector condition number obeying the square-root law κ√δ = 1.853 to three digits over a 64-fold range, while the Dunford trace-log ledger, gated by an enclosed-count integral, remains exact to 9 × 10⁻¹⁴ through the exceptional point."
- "The "hair-rate ladder" of solar transients is computed as three numbers in one damped operator: modal rate −0.063, transient gain 3.5 at t = 0.3, and numerical abscissa +5.84."
- "Encircling the exceptional point in complexified parameter space reveals an integer transport record: the colliding pair exchanges after one loop and restores after two, with discriminant winding exactly +1 per loop, while the count-gated ledger returns single-valued: the surviving spectral object carries a braid-valued memory."
- "A census reveals the exceptional set to be a ladder of braid points, all five resolved points in 0 < α0 ≤ 13 carrying winding +1 with numerically resolved pair exchange; a minimal two-dimensional shell closes the oscillatory-onset question at the mechanism level; the flare-hazard law is closed at the statistical-inverse level; and a hemispheric variant closes the Parker–Yoshimura test: the migration direction flips with the sign of the dynamo number, equatorward for negative αG."
- "Every borrowed result — nonmodal growth in sub-Alfvénic shear layers, optimal kinematic dynamos, transient black-hole superradiance — is cited with its hypotheses named; every computational number in this paper that is graded [V] is generated by the scripts printed in the appendix; literature and observational values are cited separately."

## 3.4 Claims table (lines 75-108), complete

| Claim | Grade | Evidence |
|---|---|---|
| Hydrodynamic control: Michalke growth rate and neutral point | [V] | σ = 0.186 at k = 0.475; σ(1.01) < 0 |
| Modal quench at measured critical inclination | [V] | dies between θ = 30° and 35° |
| Directional-rigidity curve strictly monotone beyond quench | [V] | G_max: 8.8 → 2.3; Kreiss 1.80 → 1.08 |
| Transient growth in the modally stable lane (fixed-k, 2D slice) | [V]+[C] | G_max = 8.8, all modes damped; cite fraser |
| Mode ratio λ/d = 13.96 at the fastest-growing wavenumber | [V] | k_max d = 0.450 |
| Predicted growth rates from wavelength and speed alone | [V] | 0.0137–0.0612 vs measured 0.014–0.054 s⁻¹ |
| Lane width below the resolution floor under every convention | [V] | 2d = 9.3, 2.94d = 13.7, 4d = 18.6 km |
| Observed wavelength inside the band implied by the reported layer | [V] | their 12 km ⇒ 41.9–83.8 km |
| Spacing inversion: lane widths 17–29 km at the resolution floor | [V] | k_max = 0.450 ⇒ λ = 14.0 d |
| Stress stored while release falls (Φ↑, G_max↓) | [V]+[H] | Φ: 0.37 → 1.48 across the tilt scan |
| Birth of the oscillatory wave branch at an exceptional point | [V] | α0\* = 3.8717 |
| Square-root defectivity law at the EP | [V] | κ√δ = 1.842, 1.850, 1.853, 1.853 |
| Ledger exact through the EP, enclosed-count gated | [V] | count = 2.000000; diff 9 × 10⁻¹⁴ |
| Hair-rate ladder as three computed rates in one damped operator | [V] | −0.063 / 3.5 at t=0.3 / +5.84 |
| Steady (non-oscillatory) onset of the minimal variant | [V] | α0c = 12.696, D_c = 394 |
| Integer record at the EP: pair exchange, winding +1/loop, ledger single-valued | [V] | winding +1.0000, +2.0000; swap/restore to 10⁻³ |
| Parker–Yoshimura flip verified (hemispheric model) | [V] | slopes +1.25 (G=+1) / −0.36 (G=−1) |
| EP ladder census: winding +1.0000 with exchange at all five birth points | [V] | radial-continuation tracking, SUN-OPEN-02 |
| Oscillatory-onset mechanism: the 2D shell onsets oscillatory | [V] | s_c = 0 + 49.4i (16×32); branch persists at 22×44 |
| Flare hazard (statistical-inverse): steeper than Φ⁵ | [V]^ansatz | Wheatland β = −0.9 ± 0.1 ⇒ λ ∝ Φ^{1/(1+β)} |
| k-optimized lane envelope: monotone, flattened at small tilt | [V] | G_max = 14.8/14.5/6.0 at θ = 35/45/60 |
| Critical inclination 30°–35°, untested against data | [V]^computed | §3 (sec:compare) |
| Spacing-to-width ratio rising 3.5 → 6.3 with tilt, untested against data | [V]^computed | §3 |
| Black-hole cousin: transient superradiance in stable regimes | [C] | cite carballo, besson |
| Edge-constant universality program (n_ch ξ = O(1) across walls) | [H] | §6 (sec:census) |
| Family thesis: one operator class, three boundary conditions | [H] | §1 (sec:intro) |

## 3.5 §1 Introduction: the sun as the observable panel (lines 110-153)

- "This paper is the solar member of an operator-first family. In the companion papers, macroscopic geometry is a derived description of persistent spectral projector bundles; stress concentrates at rigidity interfaces; individual eigenvector data can die at defective (exceptional) points while contour (Riesz/Dunford) objects survive; and transient, non-modal amplification — not eigenvalue instability — is the fast channel of change. The black-hole analogue realizes this at a one-way boundary, where the transients are largely hidden. The sun realizes the same operator class at a reflecting boundary: the hair is observable."
- "The claim is deliberately narrow. We do not claim that the photosphere implements any particular shape manifold, nor that solar physics needs new microphysics. The bridge is operator class and boundary condition only: the same non-normal structure, the same diagnostic suite, a different window. On the black-hole side, the corresponding phenomenology — the pseudospectral instability of quasinormal spectra, transient plateaus, and transient superradiance in modally stable regimes — is established literature [jaramillo, gasperin, besson, carballo] and is used here only as the family cousin."
- Observational anchor (DKIST; cites dkist, rimmele): 19 km resolution; boundaries between photospheric magnetic flux concentrations and granulation "consist almost wholly of vortex-like structures and fine dark striations"; "Forty-seven vortex-bearing interfaces are analysed"; wavelengths 25–170 km, peak near 65 km; apparent speeds 0.67–3.0 km s⁻¹; measured linear growth rates 0.014–0.054 s⁻¹; companion radiation-MHD calculation with a shear layer approximately 12 km wide; rolls coherent "from about 100 km above to 400 km below the mean τ500 = 1 surface". Reported mechanism: velocity shear layer at the flux-concentration boundary undergoing Kelvin–Helmholtz instability, "normally suppressed by magnetic tension along the shear, but active here because the flux-tube field is nearly vertical".
- "Three features of this observation are, item for item, signatures the operator framework insists on: turbulence confined to the interfaces between a rigid channel and soft flow, with laminar interiors; an onset criterion that is directional (the wall's stiffness depends on the angle between the boundary and the field); and a countable chain of discrete structures along the interface with a characteristic spacing."

## 3.6 §2 The wall operator: SHEAR-LANE-01 (lines 155-236)

Setup: 2D incompressible MHD linearised about U(y) = tanh(y) (ΔU = 2, half-width d = 1), uniform field with in-plane shear-aligned component B∥ = v_A sin θ, θ = tilt of the field away from vertical ("θ = 0 is the DKIST flux-tube geometry"). Equations (two numbered, unlabelled):
- ∂_t(∂_y² − k²)φ = −ikU(∂_y² − k²)φ + ikU″φ + ikB∥(∂_y² − k²)ψ + ν(∂_y² − k²)²φ
- ∂_t ψ = −ikUψ + ikB∥φ + η(∂_y² − k²)ψ

Discretisation: y ∈ [−12, 12], N = 200, Dirichlet; ν = η = 2 × 10⁻³; v_A = 1.5; k = 0.45. Energy norm E = ½∫(|u|² + |b|²) through a Cholesky-weighted generator L̃ = F L F⁻¹.

Predictions "written before the run": (P1) θ = 0 reproduces hydrodynamic KH control [michalke]: σ_max ≈ 0.19 near k ≈ 0.44, neutral at k = 1. (P2) modal quench as v_A sin θ approaches the classical tension threshold [chandra, keppens, obergaulinger]. (P3) "the framework's falsifiable curve: beyond quench, G_max(θ) and the Kreiss constant decrease monotonically with further tilt." (P4) substantial transient growth with every eigenvalue damped [fraser]. (P5) fastest-growing wavelength fixes a spacing-to-thickness ratio, invertible against observed spacing.

Results:
- "P1 (control) passed: σ_max = 0.1855 at k = 0.475 against Michalke's 0.1897 at 0.445 (grid and viscosity account for the gap), with σ(k = 1.01) = −0.002."
- "P2 passed: the instability dies between θ = 30° and 35° (B∥ ≈ 0.86), slightly before the vortex-sheet estimate, as finite thickness requires."
- "P3 passed, strictly": G_max: 8.8, 5.0, 3.9, 3.2, 2.6, 2.4, 2.3 and K_Kreiss: 1.80, 1.39, 1.26, 1.19, 1.13, 1.10, 1.08 at θ = 35°, 40°, 45°, 50°, 60°, 75°, 90° — "both strictly decreasing over the sampled post-quench tilt sequence ...; the numerical evidence supports a monotone envelope. This is the curve an inclination-binned analysis of DKIST vortex statistics can test."
- "P4 passed with honest sizing: nine-fold energy amplification with all eigenvalues damped, in a fixed-k two-dimensional slice; optimizing over wavenumber and three-dimensional mechanisms yields orders of magnitude [fraser], and we cite that result rather than reproduce it."
- P5: k_max d = 0.450 so **λ/d = 2π/0.450 = 13.96** (eq:ratio), "a statement about the mode carrying no free parameter." Width convention W ≡ 4d (96% of jump); conventional 90%-width 2.94d. "Equation (ratio) therefore gives a spacing-to-width ratio of 3.49, and inverting the observed 60–100 km spacings predicts lane full widths of 17–29 km, straddling the instrument's 19 km resolution floor."
- "The unordered finding." ‖[L̃, L̃†]‖_F: 0.37 → 1.48 rises monotonically across the tilt scan while G_max and Kreiss fall. "The wall becomes more non-normal as it stiffens, and less able to release that non-normality as transient growth [V]. Interpretation [H]: tension stores stress without releasing it — the rigid wall is a loaded operator, not a quiet one." Connection to flare energetics left "as an open problem".
- Fig. lane caption: "SHEAR-LANE-01 (FIG-SUNS-01). Left: the directional-rigidity curve ...; the shaded band is the modally unstable range ending at the measured quench. Right: the commutator stress of the same operator rises as amplification falls: stress stored, not released."

## 3.7 §3 Comparison with the resolved vortices (lines 238-299)

"Equation (ratio) is the only quantity the lane operator contributes to this section, and it is fixed by the computation alone." Script: DKIST-COMPARE-02 (Appendix A.8).

- 3.1 Growth rate: λ = 65 km ⇒ d = 4.66 km; σ_max ≈ 0.19 ΔU/(2d) [michalke]; speeds 0.67–3.0 km s⁻¹ ⇒ σ_pred = 0.0137 s⁻¹ (slow end) to 0.0612 s⁻¹ (fast end) vs measured 0.014–0.054 s⁻¹: "two percent at the slow end, thirteen at the fast end. The growth rate is not an input to the prediction, and no width convention enters the calculation [V]." "What this establishes is that the photospheric layer behaves as a classical tanh shear layer at the observed scale ... It is not by itself a test of the inclination results below, which are what the framework contributes beyond the classical picture."
- 3.2 Layer width: their ~12 km ↔ d between 3.0 and 6.0 km (conventions 2d to 4d) ⇒ predicted wavelength 41.9–83.8 km; "The observed peak of 65 km lies inside that band [V]." Other direction: 2d = 9.3 km, 2.94d = 13.7 km, 4d = 18.6 km; "their 12 km sits at 2.58 d." "all place the width between 9 and 19 km, below the 19 km floor. It is a prediction the instrument cannot yet resolve".
- 3.3 Inclination curve: "This is the part not yet touched by observation." Critical inclination between 30° and 35°; "a spacing-to-width ratio that rises with tilt: 3.5, 3.9, 4.5, 6.3 at 35°, 45°, 60°, 75°." Follow-up [nykyri]: fields 1°–7° from exact perpendicular remain KH unstable, "consistent with the computation". "The decisive test is a single analysis: bin the forty-seven vortices by local field inclination. The same observed wavelength implies lane widths of 18.6, 16.7, 14.4 and 10.3 km at those four angles". "The observers state that the field has not been measured at these scales and name magnetic maps as the next milestone; that measurement is the gate on this section."

## 3.8 §4 The hair-rate ladder (lines 301-319)

"Solar activity exhibits change on three qualitatively different clocks, and the non-normal operator family supplies exactly three rates, none of which requires an unstable eigenvalue:"

| rung | operator quantity | solar face |
|---|---|---|
| slow | modal eigenvalue Re s (and cycle 2π/Im s) | activity cycle, secular decay |
| fast | transient envelope G_max at t_peak | shear-lane vortices, emerging structure |
| hyper-fast | numerical abscissa ω(L) = λ_max((L + L†)/2) | impulsive onset, flare trigger scale |

"Section (dynamo) computes all three rungs in a single damped dynamo operator. The family cousin on the black-hole side is exact: transient growth and transient superradiance in modally stable regimes [besson, carballo], where the boundary condition hides most of the hair. The sun is the panel where all three rungs face the telescope."

## 3.9 §5 The dynamo operator: BH-DYNAMO-01 (lines 321-446)

Setup: minimal Parker αΩ operator [parker, charbonneau] on colatitude x ∈ [0, π]: ∂_t A = α0 cos(x) B + ∂_x² A, ∂_t B = G ∂_x A + ∂_x² B; Dirichlet, G = η = 1, N = 120. Predictions: (PD1) oscillatory onset; (PD2) the ladder computed at 0.9 α0c; (PD3) birth of the oscillatory wave branch at an exceptional point, κ ∼ δ^{−1/2}; (PD4) shifted Dunford ledger (1/2πi)∮ log(c + z) Tr R(z) dz exact through the EP; (PD5) Parker–Yoshimura migration rule as a control.

Results:
- "PD3 passed and snapped." α0\* = 3.8717; κ√δ = 1.842, 1.850, 1.853, 1.853 at δ = 0.2, 0.05, 0.0125, 0.003125; "a genuine exceptional point (distinct from the instability onset, which is steady and lies at α0c = 12.696) with EP constant ≈ 1.853."
- "PD4 passed exactly, with its own gate." Winding integral (1/2πi)∮ Tr R dz = 2.000000; shifted trace-log ledger equals Σ log(c + λ_pair) to 9 × 10⁻¹⁴ "at the exceptional point and beside it." "(A first, sloppier contour disagreed by exactly log(c + λ_extra): the instrument faithfully reported an accidentally enclosed eigenvalue. We report this because it is the correct way to trust a ledger.)" "Individual eigenvector data diverges at the EP; phase- and contour-level data does not. This is the same survival principle verified at the shape-manifold wall in the companion paper, now on a third operator family."
- "PD2: the ladder as numbers." At α0 = 0.9 α0c, energy norm E = ∫(|∂_x A|² + |B|²): slow rung max Re s = −0.063; fast rung G_max = 3.5 at t = 0.3 ("fifty times faster than the modal clock"); hyper rung ω(L) = +5.84 ("instantaneous growth at ninety times the modal rate in an operator whose every eigenvalue is damped"). "A norm lesson is recorded honestly: an unweighted L² norm on (A,B) is unit-inconsistent and distorts every growth measure — the norm-dependence of non-normal diagnostics emphasized in the black-hole literature [gasperin] applies verbatim to dynamo operators."
- "PD1 failed as predicted and stands as a model fact." True onset steady: α0c = 12.696 (D_c = 394); "in this variant, all cyclic physics is subcritical wave-branch phenomenology — transient by nature."
- "PD5 inconclusive on the full domain, with diagnosis." Exact parity degeneracy; one shear sign gave a clean traveling wave (phase slope +3.03), the other a standing mixture; carried out on the hemispheric domain in §7.

5.3 SUN-N-01: the integer record at the exceptional point
- α0(φ) = α0\* + r e^{iφ}, r = 0.15. "after one loop the pair exchanges (λ1 ↔ λ2, exact to 10⁻³); after two loops it restores; the discriminant winding (1/2π) Δarg(λ1 − λ2)² evaluates to +1.0000 over one loop and +2.0000 over two; and on a fixed contour the eigenvalue count is constant while the shifted trace-log ledger returns single-valued to 10⁻⁸". "The surviving spectral object of §5.2 therefore carries an integer record of the transport history — a braid winding attached to the birth point of the dynamo-wave branch."
- "Four fences." (i) "The correct invariant class here is non-Hermitian eigenvalue braiding [huzhao, wojcik] ... [dembowski] ... the Kato square-root branch point [kato]; it is not Atiyah–Patodi–Singer spectral flow, which requires self-adjointness this operator does not possess." (ii) "The self-adjoint ancestor of such holonomy-indexed integer records is the Levine–Tristram signature of knot theory [levine, tristram], whose walls are Alexander roots; we note the ancestry without claiming the correspondence." (iii) "This is an integer record carried by an operator family, not a statement that "the sun remembers."" (iv) "The two verified integers of this program — the circle's SF = 1 and the dynamo's W = +1 — are distinct realizations of one concept, an integer transport record, in two different operator categories (self-adjoint spectral flow; non-Hermitian braiding); we do not identify them."
- Figure captions: braid — "SUN-N-01 (FIG-SUNS-02). ... each branch terminates on the other's starting point ...: the exchange. Right: the discriminant winding accumulates exactly +1 per loop."; ep — "BH-DYNAMO-01 (FIG-SUNS-01). Left: two real spectral branches collide at α0\* = 3.872 and a wave pair is born. Right: ... the square-root law κ = 1.853/√δ."; ladder — "The hair-rate ladder computed in one damped operator (FIG-SUNS-01): transient envelope G(t) against the modal decay line and the numerical-abscissa slope."

## 3.10 §6 The edge census across walls (lines 448-470)

- "In the companion cosmology paper, the number of projector channels trackable from a region's boundary obeys an area law when the bulk is gapped, with a dimensionless density: channels per correlation length of boundary, n_ch ξ = O(1), measured there as exactly 1.0 per boundary site on a gapped lattice."
- DKIST: "discrete vortices spaced 60–100 km along walls whose shear scale is ∼19–25 km — an edge density of order 0.2–0.3 per correlation length."
- "universality program [H]: measure the dimensionless edge-channel constant at every accessible rigidity interface — gapped lattices, topological-insulator edges [lihaldane], solar shear lanes — and determine whether it is roughly universal or strongly substrate-dependent."
- "The stake is stated honestly: the companion paper's horizon-channel count extrapolates this constant to the Planck scale under a labeled gap hypothesis; universality across accessible walls would weight that extrapolation, while strong substrate dependence would confine it. Either outcome is progress."
- "We do not claim an observed solar measurement of n_ch ξ; this section proposes a cross-system diagnostic."

## 3.11 §7 Closing the open problems (lines 472-634)

"Every open problem of the first version is revisited with either a computation (scripts SUN-OPEN-01/02, Appendices A.6–A.7) or the current worldwide data status. Closures are graded like everything else."

- **OP1 — the Parker–Yoshimura flip: closed [V].** Hemispheric domain x ∈ [0, π/2], dipole parity (pole Dirichlet; equator B = 0, ∂_x A = 0). Phase slopes +1.25 for G = +1 (poleward) and −0.36 for G = −1 (equatorward): "the migration direction flips with sign(αG), and the solar-like equatorward butterfly occurs for negative dynamo number". "Honest note: the two signs select different least-damped branches, so the magnitudes are not mirror images; the tested prediction is the sign flip, and it holds." Fig. butterfly (FIG-SUNS-03).
- **OP2 — oscillatory onset: mechanism closed [V]; quantitative model open.** Hemispheric variant also onsets steady (α0c = 12.53): "within the one-dimensional family the steady branch always crosses first." Minimal 2D shell (r ∈ [0.2, 1] × [0, π], Dirichlet, α ∝ cos x uniform in r) onsets oscillatory for either shear orientation; s_c = 0.0000 + 49.4i (α0c ≈ 1665 at 16×32), branch persisting at 22×44 (script SUN-OPEN-02b). "(This demonstrates a mechanism; it is not a causal isolation of radial structure as the unique ingredient.)" "no solar numbers are claimed".
- **OP3 — the grid-optimized envelope: two-dimensional part closed [V].** k ∈ {0.15, …, 0.8}; "grid maxima are lower bounds on the true envelope": G_max = 14.8 at k = 0.35 (θ = 35°), 14.5 at k = 0.15 (45°), 6.0 at k = 0.15 (60°), "against fixed-k values 8.8/3.8/2.5." "the optimal wavenumber migrates to longer waves as tilt increases"; "the grid-optimized directional-rigidity curve remains monotone but is far flatter at small tilts than Fig. (lane) — any data comparison must use the optimized envelope. Three-dimensional mechanisms remain cited to [fraser]."
- **OP4 — inclination-binned statistics: narrowed to one missing quantity.** Three published distributions "consistent with the lane operator, the growth rates quantitatively and without any fitted parameter." Missing: "the magnetic field inclination at the vortex sites." "This is the one genuinely external gate remaining in the paper."
- **OP5 — the solar edge constant: theory closed [V]; observational entries [C].** "the fastest-growing spacing per lane full-width rises with tilt: 3.5 (0°) → 3.9 (10°) → 4.5 (20°) → 6.3 (30°)". Striae widths ≈ 20–50 km [striae] ("simulations show ∼100 G variations and Wilson depressions down to 10 km"), "overlapping the 17–29 km lane widths predicted in §2 at the lower end"; [dkist] shear layer ≈ 12 km at 2.58 d. Census entry: spacing 60–100 km over width 20–50 km gives 1.2–5, "bracketing the θ = 0 prediction of 3.5." Predicted lane full-widths for 60–100 km spacings: 17.1–28.6 km (0°), 15.4–25.6 km (10°), 13.3–22.2 km (20°), 9.5–15.9 km (30°).
- **OP6 — stored stress and flare statistics: sharpened; open.** Worldwide status: waiting-time tails Δt^{−α} with α ≈ 1.5–3.2 across instruments and 2–3 per cycle [aschrev, biasiotti]; hard X-ray mean waiting 0.80 h, tail slope ≈ 2.0; nonstationary Poisson with f(λ) ∼ λ^{−0.9} reproduces the −2.2 tail [wheatland]; 2026 far-side-inclusive analysis: extreme active region log-normal, global tail steeper than 3 [wtd2026]; CNN catalog of 111,580 events steepens the size index to −2.59 [cnncat]. "The framework's qualitative prediction — release gated by slowly accumulated stored stress, hence strongly non-Poisson occurrence — is what is observed, but observation does not single out the mechanism."
  - "A measured reservoir." shear-energy density 1.35 × 10² J m⁻³ and 2.2 × 10²⁴ erg per characteristic vortex over a 500 km vertical extent [nykyri].
  - "Statistical-inverse closure [V under a stated ansatz]." Tail exponent 3 + β for f(λ) ∼ λ^β; β = −0.9 reproduces ≈ 2.1 tail; reservoir picture (constant charging Φ̇ ≈ q, monotone hazard λ(Φ), renewal on release) forces Φ ∝ λ^{1+β}, i.e. **λ ∝ Φ^{1/(1+β)} = Φ¹⁰ (β = −0.9)**. "β = −0.8 gives Φ⁵; β → −1 gives a logarithmic hazard", so "the reservoir hazard is steeper than Φ⁵"; "at exponent 10 a 7.2% stress rise doubles the rate (2^{1/10} = 1.072), and a 26% rise increases it roughly tenfold (1.26¹⁰ ≈ 10)." "Two honest cautions: the ansatz (constant charging, monotone hazard, renewal) is named, not derived; and the tilt-scan Φ range of §2 is a control-parameter scan, not temporal charging". "Status: closed at the statistical-inverse level; the first-principles hazard remains open."
- **OP7 — spherical models: first step taken.** "Spherical (r, θ) mean-field models and contact with the optimal-dynamo program [chenlivermore, herreman] remain open."
- **OP8 — the braid census: closed [V], with a structural resolution.** Scanning α0 ∈ (0, 13]: ladder of pair-birth points at α0\* = 3.872, 5.280, 7.158, 9.085, 11.032; winding +1.0000 with pair exchange resolved to tolerance 5 × 10⁻³ at all five (script SUN-OPEN-02). "for real operator families, real-to-complex collisions occur on codimension-one sets — walls, not points [kato] — so encirclement intrinsically requires complexification. The braid record is a property of the complexified family, read on the real axis as wall crossings."

## 3.12 §8 Remaining open problems (lines 636-649), complete

1. "Field inclination at the vortex sites — the one genuinely external gate. When magnetic maps at vortex scale exist, the binning of §3 tests the quench angle and the spacing-to-width curve in a single analysis."
2. "The first-principles hazard: derive λ(Φ) and f(λ) from the stress reservoir rather than inverting them, now with a measured reservoir per vortex as input (OP6)."
3. "The physically calibrated shell/spherical solar model, inheriting the verified oscillatory-onset mechanism (OP2+OP7)."
4. "A stated width convention in the observational analysis, which would collapse the band of §3 to a single number."

## 3.13 Appendix A Scripts (lines 651-675)

"Every number in this paper is generated by the scripts below, listed in full. Each carries its name in a header comment; dependencies are numpy, scipy, matplotlib."

| Subsection | Script name | File input by the tex |
|---|---|---|
| A.1 | SHEAR-LANE-01 | shear_lane_01.py |
| A.2 | BH-DYNAMO-01 | bh_dynamo_01.py |
| A.3 | BH-DYNAMO-01b (fix pass) | bh_dynamo_01b.py |
| A.4 | FIG-SUNS-01 (figures 1–3) | fig_suns_01.py |
| A.5 | N-RECOVERY-01b (the SUN-N-01 loop) and FIG-SUNS-02 | n_recovery_01b.py, fig_suns_02.py |
| A.6 | SUN-OPEN-01 (closures) and FIG-SUNS-03 | sun_open_01.py, fig_suns_03.py |
| A.7 | SUN-OPEN-02 and SUN-OPEN-02b (full census, shell onset) | sun_open_02.py, sun_open_02b.py |
| A.8 | DKIST-COMPARE-02 (the comparison of §3) | dkist_compare_02.py |

Only `dkist_compare_02.py` is present in the folder; the other ten .py files and the five figure PDFs are not in `/home/claude/bh_recovery/extracted/2026-08-16 Suns paper v1.5 (tex)/`.

## 3.14 Bibliography (lines 682-775), complete, in file order

1. `dkist` — D. Kuridze et al., Ubiquitous Kelvin–Helmholtz instabilities driving plasma mixing on the Sun, Nature (2026), doi:10.1038/s41586-026-10871-3; MPS/NSF–NSO press release 26900660.
2. `nykyri` — K. Nykyri, Photospheric Kelvin–Helmholtz vortices as possible drivers of coronal heating: implications of the DKIST observations, arXiv:2608.12796 (2026).
3. `striae` — The striated solar photosphere observed at 0.03″ resolution, Astrophys. J. Lett. (2025); arXiv:2505.03965.
4. `aschrev` — M. J. Aschwanden and T. Dudok de Wit, Waiting-time distributions of solar flares, coronal mass ejections, and radio bursts, Astrophys. J. (2021).
5. `wheatland` — M. S. Wheatland, Understanding solar flare waiting-time distributions, Solar Phys. (2003).
6. `biasiotti` — L. Biasiotti and S. L. Ivanovski, Statistical analysis of solar flare properties from 1975 to 2017, Solar Phys. 300, 121 (2025).
7. `wtd2026` — Waiting time distribution of solar flares from a global perspective, Astrophys. J. Lett. (2026); arXiv:2604.00877.
8. `cnncat` — A convolutional neural network–derived catalog of solar flares from soft X-ray observations, Astrophys. J. Suppl. (2026).
9. `rimmele` — T. R. Rimmele et al., The Daniel K. Inouye Solar Telescope: Observatory overview, Solar Phys. 295, 172 (2020).
10. `fraser` — A. E. Fraser et al., Nonmodal growth and optimal perturbations in magnetohydrodynamic shear flows, Phys. Rev. E (2026); arXiv:2510.03141.
11. `michalke` — A. Michalke, On the inviscid instability of the hyperbolic-tangent velocity profile, J. Fluid Mech. 19, 543 (1964).
12. `chandra` — S. Chandrasekhar, Hydrodynamic and Hydromagnetic Stability, Oxford (1961).
13. `keppens` — R. Keppens, G. Tóth, R. H. J. Westermann, and J. P. Goedbloed, Growth and saturation of the Kelvin–Helmholtz instability with parallel and anti-parallel magnetic fields, J. Plasma Phys. 61, 1 (1999).
14. `obergaulinger` — M. Obergaulinger et al., Local simulations of the magnetized Kelvin–Helmholtz instability in neutron-star mergers, Astron. Astrophys. 515, A30 (2010).
15. `mactaggart` — D. MacTaggart, Optimal energy growth in current sheets, Solar Phys. 293, 148 (2018).
16. `trefethen93` — L. N. Trefethen, A. E. Trefethen, S. C. Reddy, and T. A. Driscoll, Hydrodynamic stability without eigenvalues, Science 261, 578 (1993).
17. `trefembree` — L. N. Trefethen and M. Embree, Spectra and Pseudospectra, Princeton (2005).
18. `farrell` — B. F. Farrell and P. J. Ioannou, Generalized stability theory. Part I, J. Atmos. Sci. 53, 2025 (1996).
19. `parker` — E. N. Parker, Hydromagnetic dynamo models, Astrophys. J. 122, 293 (1955).
20. `yoshimura` — H. Yoshimura, Solar-cycle dynamo wave propagation, Astrophys. J. 201, 740 (1975).
21. `charbonneau` — P. Charbonneau, Dynamo models of the solar cycle, Living Rev. Sol. Phys. 17, 4 (2020).
22. `chenlivermore` — L. Chen, W. Herreman, K. Li, P. W. Livermore, J. W. Luo, and A. Jackson, Optimal kinematic dynamos in a sphere, Proc. R. Soc. A 476, 20190675 (2020).
23. `herreman` — W. Herreman, Minimal perturbation flows that trigger mean field dynamos in shear flows, J. Plasma Phys. 84, 735840305 (2018).
24. `kirillov` — O. N. Kirillov, Nonconservative Stability Problems of Modern Physics, De Gruyter (2013).
25. `jaramillo` — J. L. Jaramillo, R. Panosso Macedo, and L. Al Sheikh, Pseudospectrum and black hole quasinormal mode instability, Phys. Rev. X 11, 031003 (2021).
26. `gasperin` — E. Gasperin and J. L. Jaramillo, Energy scales and black hole pseudospectra: the structural role of the scalar product, Class. Quantum Grav. 39, 115010 (2022).
27. `besson` — J. Besson, J. Carballo, C. Pantelidou, and B. Withers, Transients in black hole perturbation theory, Front. Phys. 13, 1638583 (2025).
28. `carballo` — J. Carballo, C. Pantelidou, and B. Withers, Transient superradiance, JHEP 08, 179 (2025).
29. `lihaldane` — H. Li and F. D. M. Haldane, Entanglement spectrum as a generalization of entanglement entropy, Phys. Rev. Lett. 101, 010504 (2008).
30. `huzhao` — H. Hu and E. Zhao, Knots and non-Hermitian Bloch bands, Phys. Rev. Lett. 126, 010401 (2021).
31. `wojcik` — C. C. Wojcik, X.-Q. Sun, T. Bzdušek, and S. Fan, Homotopy characterization of non-Hermitian Hamiltonians, Phys. Rev. B 101, 205417 (2020).
32. `dembowski` — C. Dembowski et al., Experimental observation of the topological structure of exceptional points, Phys. Rev. Lett. 86, 787 (2001).
33. `kato` — T. Kato, Perturbation Theory for Linear Operators, Springer (1966).
34. `levine` — J. Levine, Knot cobordism groups in codimension two, Comment. Math. Helv. 44, 229 (1969).
35. `tristram` — A. G. Tristram, Some cobordism invariants for links, Proc. Camb. Phil. Soc. 66, 251 (1969).
36. `foft` — J. N. Beasley, Foundational Operator Field Theory on Stratified Manifolds, v2 (2026), companion paper.
37. `blkhole` — J. N. Beasley, Beyond the Event Horizon: Operator Decoupling at the Rigidity Wall, v2 (2026), companion paper.

(That is 37 bibitems; I counted them one by one. **[reader observation]** Bibitems with no `\cite` in the body: `mactaggart`, `trefethen93`, `trefembree`, `farrell`, `yoshimura`, `kirillov`, `foft`, `blkhole`. The companion papers are referred to in the prose only as "the companion papers", "the companion paper", "the companion cosmology paper".)

## 3.15 SEPARATE LIST — every statement in the Suns paper that concerns black holes, horizons, the Hairdresser/"hair", or the shape wall | photosphere | horizon comparison

1. Abstract (l.27-30): "We study the sun as the observable panel of a single operator-theoretic family: non-normal transport operators whose stress concentrates at rigidity interfaces, previously developed for the four-body shape manifold and its black-hole horizon analogue."
2. Abstract (l.56): "The "hair-rate ladder" of solar transients is computed as three numbers in one damped operator: modal rate −0.063, transient gain 3.5 at t = 0.3, and numerical abscissa +5.84."
3. Abstract (l.59-61): "Every borrowed result — nonmodal growth in sub-Alfvénic shear layers, optimal kinematic dynamos, transient black-hole superradiance — is cited with its hypotheses named".
4. Claims table (l.93): "Hair-rate ladder as three computed rates in one damped operator | [V] | −0.063 / 3.5 at t=0.3 / +5.84".
5. Claims table (l.103): "Black-hole cousin: transient superradiance in stable regimes | [C] | [carballo, besson]".
6. Claims table (l.104): "Edge-constant universality program (n_ch ξ = O(1) across walls) | [H]".
7. Claims table (l.105): "Family thesis: one operator class, three boundary conditions | [H] | §1". (The table says "three boundary conditions"; §1 names two explicitly — "one-way boundary" (black hole) and "reflecting boundary" (sun) — and PD4 calls the dynamo "a third operator family". The three boundary conditions are not enumerated anywhere in the text.)
8. §1 (l.111-119): "In the companion papers, macroscopic geometry is a derived description of persistent spectral projector bundles; stress concentrates at rigidity interfaces; individual eigenvector data can die at defective (exceptional) points while contour (Riesz/Dunford) objects survive; and transient, non-modal amplification — not eigenvalue instability — is the fast channel of change. The black-hole analogue realizes this at a one-way boundary, where the transients are largely hidden. The sun realizes the same operator class at a reflecting boundary: the hair is observable."
9. §1 (l.121-129): "We do not claim that the photosphere implements any particular shape manifold, nor that solar physics needs new microphysics. The bridge is operator class and boundary condition only: the same non-normal structure, the same diagnostic suite, a different window. On the black-hole side, the corresponding phenomenology — the pseudospectral instability of quasinormal spectra, transient plateaus, and transient superradiance in modally stable regimes — is established literature [jaramillo, gasperin, besson, carballo] and is used here only as the family cousin."
10. §1 (l.145-150): the three DKIST features as "signatures the operator framework insists on": "turbulence confined to the interfaces between a rigid channel and soft flow, with laminar interiors; an onset criterion that is directional (the wall's stiffness depends on the angle between the boundary and the field); and a countable chain of discrete structures along the interface with a characteristic spacing."
11. §2 title and use of "wall": "The wall operator: SHEAR-LANE-01"; "The wall becomes more non-normal as it stiffens, and less able to release that non-normality as transient growth [V]. Interpretation [H]: tension stores stress without releasing it — the rigid wall is a loaded operator, not a quiet one." (l.219-222)
12. §4 title "The hair-rate ladder" and its three-rung table (l.301-314).
13. §4 (l.316-319): "The family cousin on the black-hole side is exact: transient growth and transient superradiance in modally stable regimes [besson, carballo], where the boundary condition hides most of the hair. The sun is the panel where all three rungs face the telescope."
14. §5 title: "The dynamo operator: BH-DYNAMO-01" — the script name carries the prefix "BH" (also "BH-DYNAMO-01b (fix pass)" in A.3). The text does not explain the prefix.
15. §5.2 PD4 (l.358-361): "Individual eigenvector data diverges at the EP; phase- and contour-level data does not. This is the same survival principle verified at the shape-manifold wall in the companion paper, now on a third operator family."
16. §5.2 PD2 (l.369-372): "the norm-dependence of non-normal diagnostics emphasized in the black-hole literature [gasperin] applies verbatim to dynamo operators."
17. §5.3 fence (iv) (l.413-417): "The two verified integers of this program — the circle's SF = 1 and the dynamo's W = +1 — are distinct realizations of one concept ...; we do not identify them." (Not about black holes directly; recorded because it limits cross-paper identification.)
18. §6 (l.449-453): "In the companion cosmology paper, the number of projector channels trackable from a region's boundary obeys an area law when the bulk is gapped, with a dimensionless density: channels per correlation length of boundary, n_ch ξ = O(1), measured there as exactly 1.0 per boundary site on a gapped lattice."
19. §6 (l.456-460): "universality program [H]: measure the dimensionless edge-channel constant at every accessible rigidity interface — gapped lattices, topological-insulator edges, solar shear lanes".
20. §6 (l.461-465): "The stake is stated honestly: the companion paper's horizon-channel count extrapolates this constant to the Planck scale under a labeled gap hypothesis; universality across accessible walls would weight that extrapolation, while strong substrate dependence would confine it. Either outcome is progress."
21. §7 OP8 (l.630-634): "for real operator families, real-to-complex collisions occur on codimension-one sets — walls, not points — so encirclement intrinsically requires complexification. The braid record is a property of the complexified family, read on the real axis as wall crossings."
22. Bibliography: `jaramillo`, `gasperin`, `besson`, `carballo` (black-hole literature); `blkhole` — "J. N. Beasley, Beyond the Event Horizon: Operator Decoupling at the Rigidity Wall, v2 (2026), companion paper."; `foft` — "Foundational Operator Field Theory on Stratified Manifolds, v2 (2026), companion paper."

**What the Suns paper does NOT contain [reader observation]:** the word "Hairdresser" does not occur; "scissors", "fingers", "mirror", "light" (in the toolkit sense) do not occur; the word "horizon" occurs only in items 1 and 20 above; the word "photosphere/photospheric" is never placed in a three-column table or explicit side-by-side "shape wall | photosphere | horizon" comparison — the comparison is made only in prose (items 1, 8, 9, 13, 15) and through the claims-table row "Family thesis: one operator class, three boundary conditions [H]". No statement in the Suns paper asserts an isomorphism; item 9 limits the bridge to "operator class and boundary condition only".

---

# FILE 4 — `dkist_compare_02.py`

Read in full (51 lines), not run.

- Line 2: `# SCRIPT: DKIST-COMPARE-02`
- Header comments (l.3-11): "The comparison run in the convention-free direction: from the independently computed shear-layer width to the predicted wavelength." "SHEAR-LANE-01 fixes ONE dimensionless number, before any observation: k_max * d = 0.450 => lambda / d = 2*pi/0.450 = 13.96". "d is the tanh half-width in U = tanh(y/d) and is convention-free. What is NOT convention-free is how a paper reports "shear layer width" from a tanh profile. Standard choices span 2d (scale width) to 4d (96% of the jump). So their 12 km maps to a BAND of d, hence a BAND of predicted wavelength."
- Constants: `LAM_D = 2*np.pi/0.450` (comment "13.963, fixed by the computation"); `W_MURAM = 12.0` ("km, companion MURaM shear layer"); `LAM_OBS, LAM_LO, LAM_HI = 65.0, 25.0, 170.0`.
- Conventions looped: "2d scale width" (2.0), "2.94d 90% of the jump" (2.94), "3d common tanh reporting" (3.0), "4d 96% of the jump" (4.0). For each: d = 12/f, λ = LAM_D·d, ratio to 65.
- Prints: predicted band from their 12 km (min–max), whether 65 km lies inside (boolean), "the convention that would make it exact: W = … d (between the 2d and 4d conventions)".
- "RUN THE OTHER WAY (our wavelength -> our width), for the record": d = 65/LAM_D; prints 2d, 2.94d, 4d; "their 12 km sits at … d, inside that range".
- "WHAT IS ACTUALLY FALSIFIABLE, and is not yet tested: the ratio lambda/d = 13.96 is a PREDICTION about the mode, not a fit. Publishing d under a stated convention turns the band above into a single number and the comparison into a pass or a fail."
- Growth-rate cross-check "(independent of all width conventions)": `sig_obs=(0.014,0.054)`; `U_lo,U_hi=0.67e3,3.0e3` m/s; "Michalke peak for a tanh layer: sigma_max ~ 0.19 * (dU/2) / d"; prints σ = 0.19·(U/2)/d_m for each U; "measured range: 0.014-0.054 s^-1".
- No gates named as such; no pass/fail assertion other than the printed boolean. The script contains no black-hole, horizon or Hairdresser content. It imports only numpy. Its printed output is not included anywhere in the folder; the tex quotes 41.9–83.8 km, 9.3/13.7/18.6 km, 2.58 d, 0.0137 and 0.0612 s⁻¹ as its results.
- The name "MURaM" appears in the script but not in the tex (the tex says "a companion radiation-MHD calculation"). The "3d common tanh reporting" convention is in the script but not in the tex.

---

# FILE 5 — `text/BLKHOLE (4).txt` (July version; read for comparison only)

## 5.0 Title block as printed
- Title: "Beyond the Event Horizon: An Operator-First Theory of Persistent Geometry and Black Hole Dynamics"
- Author: "Jeromie N. Beasley"; affiliation line: "Program in Complex Spectral Geometry and Projector Dynamics"
- "(Dated: July 3, 2026)" — my assignment calls this "the 2 July version"; the printed date is July 3.
- 17 pages (page numbers 2-17 visible in the text).

## 5.1 Section list (July)
I Introduction; II The canonical basis and tangent bundle construction; III The Jacobi-driven stability spine (A. Explicit matrix derivation of the stability operator: 1. pure shape block 2×2; 2. pure shear block 3×3; 3. shear coupling block / refraction terms 2×3); IV Non-Abelian SU(3) color-gauge extension; V The curvature-induced exceptional point theorem (Theorem V.1); VI Transient plateaus and energy packets on shape manifolds; VII Polariton mass-coupling matrices and the chromodynamic edge; VIII Persistent operator compression and horizon rank collapse; IX The unified boundary correspondence (Proposition IX.1); X Boundary junction conditions and continuum lensing matching (A, B, C); XI Quantitative non-Abelian superradiance energy flux; XII Derivation of the Wong-type gauge equations (A, B); XIII Theorem: persistence of defectiveness under gauge extension (Theorem XIII.1); XIV Concluding summary and multi-layer discussion (A-D levels I0-I3; E Future outlook and open paths); Appendix A Spectral gap stability and projector persistence bounds (Lemma A.1, Theorem A.2); references [1]-[11].

Figures (July): FIG. 1 graphical abstract (image; caption lists six concepts); FIG. 2 pseudospectral transient energy profile; FIG. 3 "Horizon Hairdresser Interface Mechanics under extreme inertial squeeze"; FIG. 4 four-tier structural lift diagram (caption itself reads "FIG. 4. FIG. 1."); FIG. 5 boundary junction matching interface; FIG. 6 architectural liftline.

## 5.2 Named results in July, with the July grade
- **Theorem V.1** (l.302-312): "Let Σ4 be a stratified shape manifold governed by the transport-induced pullback metric g(t). The Exceptional Points (EPs) of the total stability operator A_Jacobi are non-linear fixed-point failures of the geometric feedback loop, manifesting as an instantaneous, self-reinforcing Ricci curvature blow-up: lim_{t→t_col} |R_Ricci(t)| → ∞ ⟺ det(∂Φ/∂Y) = 0 (25). At this critical interface, the operator degenerates into a non-diagonalizable size-2 Jordan block, forcing the normal components of the transport field to vanish identically." Grade: Theorem, with a "Proof." ending "completing the proof."
- **Proposition IX.1 (Projector-Level Boundary Correspondence)** (l.511-522): ∂Σ4 "containing the binary collision hypersurfaces B_ij"; H⁺ "a localized future event-horizon patch of a non-self-adjoint Kerr spacetime"; "Both arise as rigidity interfaces governed by a Jacobi-driven stability spine ..."; "Consequently, ∂Σ4 and H⁺ demonstrate a structural correspondence at the level of the emergent admissible-channel geometry: they realize identical canonical lifts through the four-tier Hierarchy Principle of Structural Persistence." Grade: Proposition (no proof printed).
- **Theorem XIII.1** (l.764-781): hypotheses 1 (Tr(K_geomᵀ K_gauge) = 0) and 2 (‖R_mixed‖ < g_s² Σ_a ‖[q_i^a, q_j^a]‖², R_mixed = [K_geom, K_gaugeᵀ] + [K_gauge, K_geomᵀ]); conclusion "‖[K, Kᵀ]‖ ≠ 0 (50) whenever either the spatial mass-inertia anisotropy is non-trivial (∃ i, j : t_i ≠ t_j) or the gauge field strength curvature is non-vanishing (F_μν ≠ 0)." Grade: Theorem, with proof ("This completes the proof.").
- **Lemma A.1 (Neumann Resolvent Bound)**, **Theorem A.2 (Projector Persistence Lipschitz Bound)**: P(A,E) ≡ 1 − |Π − Π′| ≥ 1 − K_Γ ε, K_Γ = ℓ(Γ) C_Γ² / (2π δ_gap (δ_gap − ε C_Γ)).
- Abstract-level July grade words: "we prove", "we establish", "formal Persistence Theorem proving", "This proves" (§VI l.395), "exact energy extraction rate formula" (§XI), "exact, coordinate-free angular trapping law" (§VII), "This confirms that the universal refraction constraint R1 sin²θ1 = R2 sin²θ2 scales invariant of system dimensions" (§VII), "exact, non-heuristic block-triangular form" (§V), "This contour integration proves that finite, measurable topological invariants are securely preserved inside the boundary ledger, providing a complete framework for information conservation at the horizon interface" (§XIV.D). The introduction also says "Although exploratory in scope" (l.87) and "we propose a formal operator-theoretic interpretation of the classical no-hair theorem" (l.73).

## 5.3 Equations of substance in July (numbers as printed)
(1) K = K_geom + K_gauge + K_boundary. (2) Σ w_i = 1. (3)-(5) basis E1…E5. (6) Jacobi equation. (7) first-order form with K(W, Ẇ). (8) K_ab = ⟨E_a, R(·,Ẇ)Ẇ E_b⟩ + ⟨E_a, ∇²U E_b⟩. (9)-(11) shape block K11, K22, K12 (velocity-squared terms plus Hessian terms). (12)-(14) shear block K33, K44, K55 with (ẇ_i − ẇ_j)²/(w_i − w_j)² (t_i + t_j) − 2(ẇ_i − ẇ_j)(ẇ_i ẇ_j)/(w_i − w_j) + H_ij; connection Ω_ij = ẇ_ij/(w_i − w_j). (15)-(20) coupling block K13…K25 with (t_i − t_j) ẇ_i ẇ_j/(w_i − w_j) terms. (21) T_ij(W, q_c) = T_ij(W)·I3 + α_s Σ_{a=1}^{8} Tr(λ_a q_{c,i} ⊗ q†_{c,j}). (22) K_color := R(·,Ẇ)Ẇ + D²U(W,q_c) + g_s F(·,Ẇ) q_c. (23) ‖[K,Kᵀ]‖ ∝ Σ_{i<j}(t_i − t_j)² f(w) + g_s² Σ_{a=1}^{8} ‖[q^a_{c,i}, q^a_{c,j}]‖². (24) g_ab(t) = ⟨E_a, T(W)E_b⟩ + γ Tr(A_Jacobi Y Yᵀ A_Jacobiᵀ). (25) Ricci blow-up ⟺ det(∂Φ/∂Y) = 0. (26) block form of K(W,Ẇ,q_c) with A∥∥, E_shear, C_lower − M_color, K33. (27) rescaling S = diag(1,1,1,1,Δw); "C_lower ... entries vanish quadratically at the rate O(Δw²)"; K33 → 2λ. (28) boundary A_Jacobi block-triangular. (29) exp of [[0,1],[−2λ,0]]t. (30) |v⊥(t)| ∝ 1/√(2λ) → 0. (31) Sobolev-k inner product on TΣ4. (32) ‖J(t)‖²_{H¹} expansion; "plateau duration τ ∝ K_C". (33) M_polariton. (34) θ_lock = arctan(ξ_λ Δ_n), ξ_λ = 2Ω_Rabi m_c / (ℏ √‖[K,Kᵀ]‖). (35) D_H(X) = Π_p X Π_p. (36) K_horizon = [[A∥∥, E_shear],[0, 2λ]]. (37) ‖v⊥(t)‖ ∝ 1/√(2λ) → 0. (38)-(40) junction conditions, S_ab = −(1/8π)([K_ab] − h_ab[K]). (41) [K_ab] = lim (Θ_n/δ · h_ab + ξ_λ Δ_n u_a u_b). (42) Interfacial Junction Identity. (43) α(b) deflection integral. (44) dE/dt energy extraction rate. (45) Lagrangian. (46) q̇ = −g_s[A_μ ẋ^μ, q]. (47) q̇^a = g_s f_abc A^b_μ ẋ^μ q^c. (48) Lorentz-type force. (49) F_μν = ∂_μA_ν − ∂_νA_μ + g_s[A_μ, A_ν]. (50), (51) persistence theorem. (A1)-(A10) appendix; Riesz projectors (A2) printed as Π = −(1/2πi)∮(λI − A)⁻¹dλ.
The July text also names a Dunford contour "running at a safe regularization distance η ≳ √ε around the vertical pseudospectral bulges" (l.82-85, 916-918) and a ledger symbol Q_Π.

## 5.4 July "Future Outlook and Open Paths" (l.923-934), complete
- "Formalizing the supersymmetric extension of the additive multi-sector operator sum to balance the geometric stiffness invariants against fermion partner fields."
- "Constructing explicit numerical ray-tracing templates using the Darmois-Israel junction tensor to test discrete packet lensing under extreme multi-body close approaches."
- "Evaluating the asymptotic stability boundaries of the advective Wong equations under highly turbulent, multi-flavor gauge field fluctuations."

## 5.5 July reference list (l.1031-1061)
[1] Trefethen & Embree (2005); [2] Kreiss (1962), pp. 85–91; [3] Kato (1995), Classics in Mathematics, Springer-Verlag, Berlin; [4] Regge & Wheeler (1957); [5] Berti, Cardoso, Starinets (2009); [6] Thorne, Price, Macdonald (1986), "Yale University Press, New Year, CT"; [7] Wong (1970), 689–694; [8] Jackiw & Manton (1977), 103–134; [9] Barbour, "The End of Time: The Next Revolution in Physics" (1999); [10] Montgomery, "Infinitely many syzygies and the Choreographies of the n-body problem," Central Motions in N-Body Mechanics, 53–64 (2002); [11] Israel (1966), 1–14; "Erratum, ibid. 48, 463 (1967)". Each entry carries a bracketed annotation addressed to the author (e.g. "[Grounds your transport formulation in classic black hole stability and perturbation theory.]"). The body has two broken citations printed as "[? ]" (l.98 and l.395). No scripts, no gates, no numerical values of computations appear in the July text.

---

# COMPARISON — v2 (August) against the July version `BLKHOLE (4)` (rules 6 and 7)

Scope note: I was assigned only `BLKHOLE (4).txt` among the July-era versions. Item (d) "what v2 holds that NO other version holds" can therefore only be stated relative to `BLKHOLE (4)`; I have not read `BLKHOLE.txt`, `(1)`, `(2)`, `(3)` or any later version (v8.5.1, v10).

## C.1 What v2 KEEPS from July (same content, possibly reworded)

| Item | July location | v2 location | Note |
|---|---|---|---|
| Main title "Beyond the Event Horizon" | title | title | subtitle changed (see C.3) |
| Author "Jeromie N. Beasley" | title | title | affiliation line dropped |
| Shape tensor W = diag(w1,w2,w3), Σ w_i = 1; Σ4 five-dimensional | §II eq (2) | §1 | v2 adds X, G = XᵀX, PSD/rank language |
| Basis E1…E5 (same matrices) | eqs (3)-(5) | §1 | same normalisations |
| Reduced Jacobi equation and first-order form A_Jacobi = [[0, I5],[−K, 0]] | eqs (6)-(7) | eq (1) | v2 writes K = K_curv + Hess U |
| Mass-inertia data T = diag(t1,t2,t3) | l.201 | §2.1 | |
| Transverse oscillator: eigenvalues ±i√(2λ), amplitude ∝ 1/√(2λ) → 0, trajectories flatten/skim | eqs (29), (30), (37) | eq (4), Thm 2 tail, Thm 3 (ii) | v2 adds the persisting phase ∫√(2λ)dt |
| λ → ∞ "inertial squeeze" | l.324-325, l.480 | Thm 2.1 | re-based (see C.3) |
| Block-triangular decoupling at the interface (lower-left coupling → 0) | eqs (26)-(28), (36) | Thm 2.3, Thm 3 (i), Hairdresser "scissors" | location, quantity and rate changed (see C.3) |
| Size-2 Jordan block at the interface | Thm V.1 | Thm 2.3, Thm 3 (iii) | condition changed (see C.3) |
| Non-orthogonal eigenfunctions, overlap matrix Δ_nm ≠ δ_nm, H¹(Σ4) energy expansion | eq (32) | §5 display | same formula |
| Kreiss constant K_C as the plateau control | l.390 "τ ∝ K_C" | §5 | restated as a lower bound with definition (see C.3) |
| Hairdresser imagery: "scissors" and "fingers"; "rank compression" not "destruction" | §I l.73-78, §VIII, §XIV.C | §4.2 run-in paragraph, App. C | regraded to "only imagery"; "mirror" and "light" added |
| Dunford trace-log contour; ledger symbol Q_Π | §I l.80-85, §XIV.D | §4.2; Q_Π in Conj. 1 and infographic | now computed by script (see C.2) |
| Four-row correspondence content (Jacobi fields ↔ static fields, proper acceleration → ∞; currents ↔ membrane currents; rank-1 densities P = NNᵀ ↔ coalesced QNM projectors; pullback metric / ledger ↔ pseudospectral ledger) | FIG. 4, §XIV.A-D | Conjecture 1 table | regraded (see C.3) |
| Wong Lagrangian, q̇ = −g_s[A_μ ẋ^μ, q], Lorentz-type force equation | eqs (45), (46), (48) | §7 | "derived" → "classical [14, 15]" |
| Persistence-of-defectiveness statement with hypotheses (i) orthogonal sectors and (ii) dominated mixed cross-commutator | Thm XIII.1 | Proposition 1 | regraded (see C.3) |
| Superradiant energy-rate formula (same two integrals) | eq (44) | §8 | regraded to ansatz with "≟" |
| Darmois–Israel junction matching idea | §X | §8 | regraded to "proposed program, not a result" |
| Polariton interface analogue | §VII | §8 | regraded; closed formula withdrawn |
| Neumann resolvent lemma; projector Lipschitz bound with constant ℓ(Γ)C_Γ²/(2π δ_gap(δ_gap − εC_Γ)); C_Γ = sup‖R_A‖·δ_gap; δ_gap definition | App. A (A1)-(A10) | App. A | compressed; restated (see C.3) |
| All eleven July references | [1]-[11] | [8]-[18] | renumbered, annotations removed |

## C.2 What v2 ADDS (not in July `(4)`)

- §0 "What is claimed, and what is not", including the explicit non-claim of the horizon-side premise and the three-grade system (exact/derived, measured, proposed).
- The two named "survival principles" (phase; Dunford contour), §0 and §4.
- Gram-matrix statement G = XᵀX "not XXᵀ"; Σ4 = {G ⪰ 0 symmetric, Tr G = 1}; stratification by rank.
- **Theorem 1** (closed-form quotient metric) with its derivation and numeric verification.
- The Bures–Wasserstein / real-qutrit identification; coplanar wall = rank-2 stratum, collinear = rank 1; the d = 2 real-qubit / Kendall sphere remark.
- The transport operator A(H) = TH + HT − 2Tr(TH)W and its block structure, eq. (2); the non-normality numbers 1.78 / 6 × 10⁻¹⁶ / 0; the requirement f(W ∝ I) = 0.
- §2.2 O'Neill curvature derivation, eq. (3); interior finiteness (K33 → 1.855469); wall divergence constants 0.0713, 0.1033, 0.701.
- §3 stratification with codimensions (1, 3, 3) and the double-cover/branch-locus remark.
- **Theorem 2** (three-register rigidity interface): 1/(6w3) metric law, C/w3 curvature law, Jordan condition t1 + t2 − 2t3 = (t1 − t2)(w1 − w2), discriminant determinant 16 w1 w2 w3, "exceptional points exist only on the boundary strata".
- §4.1 link to the companion diagnostic work [24] and the beat rate 2π/(3√3).
- §4.2 the ledger table and the three gated facts (snapped law ‖P1‖·gap → |A12|; Tr Π = 2.000000000000; ledger to 6 × 10⁻¹⁵), and the contour-enclosure hypothesis/failure mode at ε = 10⁻¹.
- "mirror" and "light" as Hairdresser items; the sentence "no claim about information in quantum gravity is made."
- §5 black-hole-side attribution to [1, 3, 4, 5, 6, 7]; Kreiss constant definition and "sup_t ≥ K_C"; the projector overlap functional C(Δ) = Tr(Π(t)Π(t + Δ)).
- **Theorem 3**, **Conjecture 1** with "No isomorphism is claimed."
- §9 Open problems (7 items).
- Appendix B with two complete script listings (BH-CURV-01, BH-LEDGER-01), gate names, software versions; references to FOURBODY-AUDIT-01/02/03.
- Appendix C infographic and caption.
- References [1]-[7] (black-hole pseudospectrum/transient literature), [19]-[23] (Bures–Wasserstein, Dryden), [24] (own companion paper).

## C.3 What v2 CHANGES (wording, numbers, location, grade)

| # | Subject | July `(4)` says | v2 says |
|---|---|---|---|
| 1 | Subtitle | "An Operator-First Theory of Persistent Geometry and Black Hole Dynamics" | "Persistent Operator Structure at Rigidity Walls — from Four-Body Shape Space to Black-Hole Ringdown" |
| 2 | Date / affiliation | "(Dated: July 3, 2026)"; "Program in Complex Spectral Geometry and Projector Dynamics" | "August 2026"; no affiliation |
| 3 | Overall claim | abstract: "we show that classical geometry emerges intrinsically from the spectral projection of a non-selfadjoint stability spine"; "we prove that spatial anisotropy and internal gauge fields act as co-equal, independent drivers"; "we establish that dissipative event horizons function as extreme rigidity interfaces" | abstract: horizon non-normality is "established results of the modern literature ..., not claims of this paper"; "What this paper contributes is the other side of a correspondence" |
| 4 | Where the wall is | binary collision B12, approached "along the binary constraint w1 → w2"; normal bundle spanned by E3 (Thm V.1 proof); Prop IX.1 "boundary stratum ... containing the binary collision hypersurfaces B_ij" | "An earlier draft staged its horizon analysis at B_ij; everything below relocates it to the coplanar wall" w3 = 0; B_ij "codimension-3 ... generic trajectories miss them entirely" (§3) |
| 5 | Decoupling quantity and rate | C_lower "entries vanish quadratically at the rate O(Δw²)" (l.335-336); "vanishes identically" | A21 = √3(t1 − t2)w3 → 0 "at rate O(w3)" (Thm 2.3, Thm 3 (i)) |
| 6 | Origin of λ → ∞ | "K33 → 2λ, where λ → +∞ is the extreme mass-density squeeze eigenvalue driving the gravitational potential spike" (l.324-325) | "the "inertial squeeze" λ → ∞ of the earlier draft is this statement [metric blow-up 1/(6w3)], now derived rather than postulated" (Thm 2.1) |
| 7 | Shear block of the stability/transport operator | eqs (12)-(14): entries with (ẇ_i − ẇ_j)²/(w_i − w_j)² | "Those entries are withdrawn"; shear block "exactly diagonal with entries t1+t2, t1+t3, t2+t3" (§2.1) |
| 8 | Shape–shear coupling | eqs (15)-(20): nonzero, velocity-dependent, "Refraction Terms" | "the shape–shear coupling identically zero in the principal frame" (§2.1); withdrawn |
| 9 | Behaviour at w_i = w_j | divergent denominators 1/(w_i − w_j) | "the curvature is finite at interior eigenvalue coincidences w_i = w_j ... nothing singular lives there" (§2.1 withdrawal; §2.2) |
| 10 | Mechanical connection | "principal frame connection Ω_ij = ẇ_ij/(w_i − w_j)"; "Ω = skew(Ẇ W⁻¹)" | "The divergences arose from treating first-order eigenvector perturbation theory, Ω_ij = Ẇ_ij/(w_i − w_j), as a mechanical connection." |
| 11 | Metric on Σ4 | pullback metric with backreaction, eq (24); "Tr(E_a E_b) = δ_ab" Frobenius basis | quotient (Bures–Wasserstein) metric, Thm 1: "The physical metric on Σ4 is not a choice"; script comment "tests the paper's silent g=I assumption" |
| 12 | EP ⟺ Ricci blow-up | Theorem V.1 with proof | "unproven and is retired to Section 9" (§6); OP5 "prove it for the backreacting metric ansatz, or retire it permanently" |
| 13 | Jordan block condition | follows from K33 → 2λ and C_lower → 0 at the collision | "under the joint condition t1 + t2 − 2t3 = (t1 − t2)(w1 − w2)" on the coplanar wall (Thm 2.3) |
| 14 | Plateau statement | "maintains a fixed energy configuration profile over an extended plateau duration τ ∝ K_C"; "This proves that many-body shape manifolds support identical persistent non-modal transient wave packets as dissipative black hole horizons, lifting structural persistence to a universal, category-theoretic invariant" (§VI) | "holds its energy across a plateau whose duration is controlled by the Kreiss constant"; sup_t‖e^{−iAt}‖ ≥ K_C; "(the Kreiss bound controls the supremum over time, not each instant)"; black-hole side "is the literature's" (§5) |
| 15 | Correspondence grade | Proposition IX.1: "they realize identical canonical lifts through the four-tier Hierarchy Principle"; FIG. 4 labels "Spectral Equivalence", "Master Invariant Identity" | Theorem 3 ("shape side proven, GR side cited") + Conjecture 1; "No isomorphism is claimed." |
| 16 | Horizon side object | "a non-self-adjoint Kerr spacetime"; "Kerr Horizon Patch H⁺" | "Horizon patch H⁺"; concrete operator named only as an example: "hyperboloidal Regge–Wheeler [11, 1]" |
| 17 | Dictionary row 2 | "J^μ_color = Σ q_{c,i} Ẇ^μ_i" ↔ "J^μ_mem = (1/4π) E_r" | "mass-weighted currents" ↔ "membrane currents [13]" (no formulas) |
| 18 | Dictionary row 4 | "Pullback field g_ab = Φ(W, Ẇ)" ↔ "Pseudospectral Ledger Q_Π" | "pullback metric + trace-log ledger Q_Π" ↔ "pseudospectral ledger of the ringdown operator" |
| 19 | Hairdresser grade | abstract: "a formal four-tier "Hairdresser" pruning tensor"; §I: "a comprehensive "Hairdresser" boundary toolkit"; "(the "scissors" and "fingers" operators)"; §XIV.C scissors (C_lower → 0) and fingers (Π_p) "boundary operators" | "The Hairdresser, as a named interpretation ... This is imagery for derived structure — each phrase names a gated computation — and it is only imagery" (§4.2) |
| 20 | Scissors | C_lower → 0 | "the exact vanishing of the back-coupling (A21 = O(w3) → 0: block-triangular decoupling)" |
| 21 | Fingers | Π_p (persistent-subspace projector; D_H(X) = Π_p X Π_p) | "the transverse suppression (4) that flattens trajectories parallel to the wall" |
| 22 | Information claim | "providing a complete framework for information conservation at the horizon interface" (§XIV.D); "Instead of treating information entering the horizon as destructively erased, the interface executes a systematic algebraic rank compression" (§I) | "The interface executes rank compression, not destruction"; "no claim about information in quantum gravity is made." |
| 23 | Dunford contour specification | "a safe regularization distance η ≳ √ε around the vertical pseudospectral bulges"; "finite, measurable topological energy states"; "flat, boundary-skimming 2D non-normal phase ledger" | circle contour of radius 0.15 about Tr(A)/2 in the script; hypothesis "the contour must enclose the colliding pair with the spectral-gap margin"; no η ≳ √ε, no "topological", no "2D phase ledger" wording |
| 24 | Persistence result grade | "formal Persistence Theorem"; Theorem XIII.1 with proof; "To satisfy the referee, we explicitly establish the hypotheses" | Proposition 1 "(conditional ...)"; "the content lives entirely in hypothesis (ii), which asserts rather than proves ... The proposition is therefore conditional" |
| 25 | Persistence conclusion | "‖[K, Kᵀ]‖ ≠ 0 whenever either the spatial mass-inertia anisotropy is non-trivial ... or the gauge field strength curvature is non-vanishing" | "‖[K, Kᵀ]‖ > 0 even at perfect spatial isotropy t1 = t2 = t3" (stated with F_μν ≠ 0 as a standing assumption) |
| 26 | Gauge group | SU(3), Gell-Mann matrices, α_s "the strong coupling constant", dim(G) sum, "white matter" singlet | "Internal non-Abelian charge"; q ∈ 𝔤; no group named in §7; α_s and J_color survive only inside the §8 ansatz formula |
| 27 | Wong equations grade | "we derive ... from a unified action principle"; "This derivation proves that the internal charge vector is continuously dragged and rotated" | "incorporated at the standard grade"; "This is classical [14, 15] and is used here only as the mechanism populating a gauge sector K_gauge." |
| 28 | Superradiance formula grade | "yields the exact energy extraction rate formula"; "This dual-engine mechanism guarantees ..." | "an extraction-rate ansatz"; printed with "≟"; "Its derivation from the H¹(Σ4) energy functional, with the quotient metric of Theorem 1 in place, has not been carried out." |
| 29 | Superradiance formula symbol | "|J|²" in the first integrand | "‖J‖²" |
| 30 | Junction matching grade | "Interfacial Junction Identity" (42); "This equation establishes that the surface energy-momentum profile ... is not an arbitrary input"; "Geodesic Deflection Verification" | "a proposed program, not a result: the bridge identity equating the extrinsic-curvature jump with lattice parameters is an ansatz." |
| 31 | Polariton trapping law | "the exact, coordinate-free angular trapping law" θ_lock = arctan(ξ_λ Δ_n) (34) | "a quantitative trapping law awaits a dimensionally consistent derivation (the closed formula of earlier drafts is withdrawn as heuristic)" |
| 32 | Refraction law R1 sin²θ1 = R2 sin²θ2 | "This confirms that the universal refraction constraint ... scales invariant of system dimensions" (§VII) | "is not used as a bridge: the sin → sin² step is under audit across the paper series (the variational derivation in the foundational paper yields first-power Snell), and until that audit closes, no argument here rests on it." |
| 33 | Appendix A theorem form | Theorem A.2: persistence functional P(A,E) ≡ 1 − |Π − Π′| ≥ 1 − K_Γ ε | Theorem 4: ‖Π′ − Π‖ ≤ [ℓ(Γ)C_Γ²/(2π δ_gap(δ_gap − εC_Γ))] ε (no persistence functional) |
| 34 | Appendix A grade wording | "We establish a rigorous, coordinate-free functional analysis proof" | "These are standard Kato-type estimates [10, 8]" |
| 35 | Riesz projector sign | (A2): Π = −(1/2πi)∮_Γ (λI − A)⁻¹ dλ | §4.2: Π = (1/2πi)∮_Γ (λI − A)⁻¹ dλ |
| 36 | Norm notation in App. A | single bars |·| | double bars ‖·‖ |
| 37 | Ref. Thorne et al. city | "New Year, CT" | "New Haven, CT" |
| 38 | Ref. Montgomery title | "Infinitely many syzygies and the Choreographies of the n-body problem" | "Infinitely many syzygies" |
| 39 | Ref. Israel | includes "Erratum, ibid. 48, 463 (1967)" | erratum not listed |
| 40 | Reference annotations | each entry has a bracketed note | none |
| 41 | Future work list | 3 bullets (SUSY extension; ray-tracing templates; turbulent multi-flavor Wong stability) | 7 open problems, none of the three July bullets among them |
| 42 | Basis description of the shear subspace | "capturing the non-commutative rotational couplings induced by the non-Abelian SO(3) mechanical connection" | "E3, E4, E5 rotate the eigenframe (shear)" |

## C.4 What v2 WITHDRAWS, RETIRES or FENCES (v2's own words)

1. Withdrawn — shear-block entries and velocity-dependent couplings (July eqs (12)-(20)): "Those entries are withdrawn, on two independent computations." (§2.1 "A withdrawal"). Abstract: "withdrawing, with the computation on record, the divergent shear entries of an earlier draft".
2. Retired — EP ⟺ Ricci blow-up (July Theorem V.1, eq (25)): "unproven and is retired to Section 9" (§6); OP5.
3. Not used / under audit — refraction law R1 sin²θ1 = R2 sin²θ2 (July §VII): "not used as a bridge ... until that audit closes, no argument here rests on it" (§6); OP3.
4. Withdrawn as heuristic — polariton trapping law (July eq (34)): "the closed formula of earlier drafts is withdrawn as heuristic" (§8).
5. Relocated — horizon analysis from B_ij to the coplanar wall (§3).
6. Fenced as ansatz — superradiant extraction rate (July eq (44)) (§8).
7. Fenced as "a proposed program, not a result" / "ansatz" — junction matching (July §X, eqs (38)-(43)) (§8).
8. Fenced as "plausibly" — polariton analogue (§8).
9. Fenced as conjecture — the dictionary (Conjecture 1): "No isomorphism is claimed."
10. Fenced as imagery — the Hairdresser: "it is only imagery: no claim about information in quantum gravity is made."
11. Made conditional — persistence of defectiveness (Proposition 1); OP4.
12. Non-claim — "The premise that horizon physics is non-normal operator theory is not claimed here" (§0).
13. Section-level fence — §8: "Nothing in this section is derived; each item is an ansatz or analogy, recorded because it points somewhere concrete."

## C.5 What v2 DROPS from July `(4)` without a withdrawal sentence naming it **[reader observation — presence/absence only]**

- K = K_geom + K_gauge + K_boundary (eq (1)); the K_boundary sector is not mentioned in v2.
- Shape block entries K11, K22, K12 (eqs (9)-(11)). v2's withdrawal paragraph names the shear-block entries and the shape–shear couplings; the July shape block is not reproduced and not individually named.
- Eq (8) (K_ab as Frobenius projections); the potential-Hessian terms H_ij.
- §IV SU(3) construction: gauge-extended inertia tensor (21), K_color (22), the proportionality (23) (v2 keeps only the remark that Σ(t_i − t_j)² f(w) "must carry f(W ∝ I) = 0").
- Pullback/backreaction metric (24) and the coupling γ as a metric ingredient (γ survives only as a coefficient in the §8 ansatz; "backreacting metric ansatz" is mentioned in OP5).
- The rescaling matrix S (27), boundary block matrix (28), matrix exponential (29); M_color "confinement shield"; "white matter" singlet remark.
- Sobolev-k inner product formula (31).
- Polariton matrix M_polariton (33), Ψ_edge, Ω_Rabi, δB_n.
- Horizon Compression Operator D_H(X) = Π_p X Π_p (35) and K_horizon (36). (Π_p and C_lower survive only as labels on the infographic.)
- All junction equations (38)-(43) including the lensing deflection α(b).
- Component Wong equation (47) with structure constants and the field-strength definition (49).
- The proof text of Theorem XIII.1 (eqs (50)-(51)) — v2 summarises it as "a reverse triangle inequality and is elementary".
- The four-tier Hierarchy Principle I0-I3 as named levels (L0, L1, L2 lifts), §XIV.A-D; "Grassmannian lift"; "Master Invariant Identity".
- Statements about emergent geometry: "classical geometry emerges intrinsically ..."; "spacetime geometry appears as a persistent consequence of transport dynamics"; "the framework resolves long-standing singularities through smooth geometric continuation"; Berry curvature; "zeta-regularized spectral ledgers".
- All six July figures (graphical abstract, plateau plot, Hairdresser interface sketch, four-tier lift, junction interface, liftline).
- The three "Future Outlook" bullets.
- Appendix A intermediate equations (A4)-(A9) and the persistence functional P(A,E).
- The word "Grassmannian" survives in v2 only in Theorem 4's closing clause.

## C.6 What v2 holds that July `(4)` does not hold (rule 6d, relative to `(4)` only)

Everything in C.2. In one list: the three-grade scheme; the explicit non-claim of the horizon-side premise with citations [1]-[7]; Gram matrix G = XᵀX; Theorem 1 quotient metric; Bures–Wasserstein / real-qutrit identification; the audited transport operator and block (2); O'Neill curvature; interior finiteness; coplanar-wall relocation and codimension count; Theorem 2 with its three laws and all constants; the two survival principles; the ledger table and snapped law; Theorem 3; Conjecture 1 with "No isomorphism is claimed"; conditional Proposition 1; the fenced §8; the seven open problems; the two script listings with nine named gates; the infographic; references [1]-[7], [19]-[24].

## C.7 What July `(4)` holds that v2 does not hold

Everything in C.5, plus the items v2 explicitly withdrew or retired (C.4 items 1-4) in their July form with July grades.

---

# DISAGREEMENTS (rule 7) — both locations given; none resolved

## D-A. Inside v2 (`blkhole_v2_final.pdf`)

1. **Number of gates of BH-CURV-01.** §2.2 (p.4): "Script BH-CURV-01 implements this with four gates: (i)…(iv)". Appendix B (p.9) and the listing heading: "BH-CURV-01 carries six gates". The script's own header comment block (listing lines 4-9) lists five, G1-G5; a sixth, "GATE G6", appears only as a print string (listing line 138).
2. **Description of gate G5.** Script header (line 9): "G5: blow-up structure of shear entries as w1 -> w2 (exponent + which entries)" and print (line 131) "GATE G5: blow-up as w1 -> w2". Paper prose (§2.2, App. B): "interior finiteness at w1 → w2", "every curvature entry converges".
3. **Description of gate G4.** Script header (line 8): "quotient metric g_ab = <H_a,H_b> reported (tests the paper's silent g=I assumption)"; print (line 121): "is it identity?". Paper prose (§2.2 (iv), App. B): "the closed-form metric of Theorem 1 recovered" / "the closed-form quotient metric (Theorem 1)".
4. **"All scripts are included".** Abstract (p.1): "All scripts are included in the paper as the proof of record." §2.1 (p.3), the BH-LEDGER-01 header and the infographic footer name scripts FOURBODY-AUDIT-01/02/03, which are not listed in Appendix B. Appendix B says "Both scripts" (two).
5. **A12 at the Jordan point.** Theorem 2 item 3 (p.5): "verified: normalized eigenvector determinant 1.7 × 10⁻¹⁵ with A12 = 0.52". §4.2 (p.5): "A12 = 0.485"; (p.6) "0.485147 vs. 0.484974". The paper does not say whether these are two different parameter points.
6. **Ledger table rows vs script loop.** Table (p.5) shows ε = 10⁻², 10⁻⁴, 10⁻⁶, 0 with four data columns. The listed script loops over eps = 1e-1, 1e-2, 1e-3, 1e-4, 1e-6, 0.0 and prints five data columns (including ‖Pi_blk‖). The ε = 10⁻¹ row is described in prose only ("the pair sits outside the contour and the integral correctly reports nothing"); the 10⁻³ row and the ‖Π‖ column ("with ‖Π‖ flat") are not tabulated.
7. **Ledger exactness figure vs gate tolerance.** Prose and table: "exact to 6 × 10⁻¹⁵" (−6.0 × 10⁻¹⁵). Gate L3 in the listing tests `< 1e-9` and prints a boolean.
8. **K22 w3 constant vs the "fit" loop.** §2.2 and OP6 quote "K22 w3 → 0.701 (measured over three decades)". In the listing, the "fit" loop (lines 146-152) prints K44*w3, K55*w3 and g22*6*w3 only; K22 is printed un-multiplied in the preceding loop (line 145), which runs over four values of w3 (1e-1 … 1e-4).
9. **"Each item is a gated computation of this paper" (Theorem 3) vs the gate lists.** Theorem 3 items (i)-(iv) are each called "a gated computation of this paper". The nine gates named in Appendix B (G1-G6, L1-L3) cover the metric, curvature and contour/ledger items; no listed gate is named for item (ii) (the transverse oscillator ±i√(2λ)), and item (iii)'s Jordan-determinant number is not printed by either listed script (see D-A.4). Recorded as a mismatch between the sentence and the listed gates, not as a judgement.
10. **Byline forms.** Title page "Jeromie N. Beasley"; reference [24] and the infographic footer "J. Beasley".
11. **Third-person in a script header.** BH-LEDGER-01 line 2: "His tip made precise:" — inside a paper whose author is the person referred to.
12. **Unused references.** [9], [12], [16], [17], [23] are in the list but I found no in-text citation (see 1.17).

## D-B. v2 vs its own infographic (file 2 / Appendix C)

13. Infographic panel headers use **C_lower** ("WALL DECOUPLING OPERATOR (C_lower)") and **Π_p** ("ALIGNMENT PROJECTOR SUBSYSTEM (Π_p)"); the v2 body never defines or uses C_lower or Π_p (it uses A21 and the transverse suppression (4)). July `(4)` defines both (l.321-337; l.466-470).
14. Infographic centre label "EVENT HORIZON: THE HAIRDRESSER'S CHAIR" and "Infalling Information Stream"; v2 §4.2 says of the Hairdresser "it is only imagery: no claim about information in quantum gravity is made", and v2 stages the computations on the coplanar shape wall, with the horizon side a conjecture (Conj. 1).
15. Infographic says "through and at the EP"; v2 body says "through and at the Jordan point" / "exactly defective point" (the body uses "exceptional points" once, in Theorem 2 item 3).
16. Infographic says rank-one data "diverges as |A₁₂|/gap"; body states the law as "‖P1‖ · gap → |A12|". (Same relation, different form; recorded for completeness.)

## D-C. v2 vs the Suns paper v1.5

17. **Title of the black-hole companion.** Suns bibitem `blkhole` (tex l.773-774): "Beyond the Event Horizon: Operator Decoupling at the Rigidity Wall, v2 (2026)". v2 PDF title page: "Beyond the Event Horizon: Persistent Operator Structure at Rigidity Walls — from Four-Body Shape Space to Black-Hole Ringdown". (The Suns-cited subtitle matches the infographic's top strip, not the PDF title page.)
18. **Version label.** Suns cites the companion as "v2 (2026)"; the v2 PDF prints no version number.
19. **How the black-hole companion is characterised.** Suns abstract (l.28-30): operators "previously developed for the four-body shape manifold and its black-hole horizon analogue"; Suns §1 (l.116-118): "The black-hole analogue realizes this at a one-way boundary, where the transients are largely hidden"; Suns §1 (l.111-113): "In the companion papers, macroscopic geometry is a derived description of persistent spectral projector bundles". v2: horizon side is "citations on the general-relativity side, and a clearly labeled conjecture for the dictionary"; "No isomorphism is claimed"; v2 contains no statement that macroscopic geometry is derived from projector bundles (that statement is in July `(4)`, abstract and §XIV).
20. **"verified at the shape-manifold wall".** Suns §5.2 (l.359-361): "the same survival principle verified at the shape-manifold wall in the companion paper". v2 words: "demonstrated" ("Both principles are demonstrated, not asserted"), with the phase principle's calibration attributed to [24]. Different grade word.
21. **Ledger precision.** Suns: ledger exact "to 9 × 10⁻¹⁴" (dynamo operator; abstract, table, PD4) and single-valued "to 10⁻⁸" around the loop (§5.3). v2: "6 × 10⁻¹⁵" (shape-wall operator). Different operators; both numbers recorded.
22. **Kato edition.** Suns bibitem `kato`: Springer (1966). v2 [10]: Springer (1995). July `(4)` [3]: "Classics in Mathematics, Springer-Verlag, Berlin (1995)".
23. **Carballo et al. title.** Suns bibitem `carballo`: "Transient superradiance, JHEP 08, 179 (2025)". v2 [6]: "Non-modal effects in black hole perturbation theory: transient superradiance, JHEP 08 (2025) 179."
24. **Grade vocabularies differ.** Suns: [T], [V], [C], [H], [V]^ansatz, [V]^computed. v2: exact/derived, measured, proposed. v2 §0 says its three grades are "As in the companion spectral-stress work" (a different companion; not the Suns paper).
25. **"Hair".** Suns uses "the hair is observable", "hides most of the hair", "hair-rate ladder" as working terms with [V] numbers attached to the ladder; v2 confines "haircut"/Hairdresser to "imagery". The Suns paper never uses the word "Hairdresser".
26. **Script-name prefix.** The Suns dynamo script is named BH-DYNAMO-01 (and BH-DYNAMO-01b); v2's scripts are BH-CURV-01 and BH-LEDGER-01. Same "BH-" prefix on a solar dynamo script; the Suns text does not explain it.

## D-D. Inside the Suns paper v1.5

27. **Angles for the spacing-to-width ratios 3.5, 3.9, 4.5, 6.3.** §3.3 (l.286-287): "at 35°, 45°, 60°, 75°". OP5 (l.549-550): "3.5 (0°) → 3.9 (10°) → 4.5 (20°) → 6.3 (30°)". Claims table (l.102): "rising 3.5 → 6.3 with tilt". Also OP5 (l.560) calls 3.5 "the θ = 0 prediction", while §3.3 attaches 3.5 to 35°.
28. **Lane widths per angle.** §3.3 (l.294-295): "lane widths of 18.6, 16.7, 14.4 and 10.3 km at those four angles" (35°, 45°, 60°, 75°; from the 65 km wavelength). OP5 (l.560-563): "17.1–28.6 km (0°), 15.4–25.6 km (10°), 13.3–22.2 km (20°), and 9.5–15.9 km (30°)" (from 60–100 km spacings). Different angle labels for what appears as the same four-step sequence.
29. **Fixed-k G_max values.** §2.2 (l.191, 195): G_max = 8.8 (35°), 3.9 (45°), 2.6 (60°). OP3 (l.523): "against fixed-k values 8.8/3.8/2.5" at 35°/45°/60°.
30. **Predicted lane width.** Abstract (l.47-48) and §3.2: "between 9 and 19 km, below the instrument's resolution floor" / "below the 19 km floor". Claims table (l.88) and §2.2 (l.211-213): "lane widths 17–29 km at the resolution floor" / "straddling the instrument's 19 km resolution floor". (First from the 65 km peak under all conventions; second from 60–100 km spacings under W = 4d.) "Below" vs "straddling".
31. **Wall shear scale.** §6 (l.455): "walls whose shear scale is ∼19–25 km"; OP5 (l.552): striae widths "≈ 20–50 km"; §3.2: companion shear layer "approximately 12 km"; predicted 9–19 km.
32. **Edge density.** §6 (l.455-456): "an edge density of order 0.2–0.3 per correlation length". OP5 (l.558-559): "spacing 60–100 km over width 20–50 km gives 1.2–5" (a spacing-to-width ratio, where §6 quotes a density per correlation length). Two different stated ranges for related quantities.
33. **α0\*.** 3.872 (abstract, fig. caption, OP8) vs 3.8717 (table, §5.2) — rounding.
34. **Steady onset value.** α0c = 12.696 (full domain; table, §5.2) vs α0c = 12.53 (hemispheric; OP2). Different domains; both recorded.
35. **Migration phase slope.** +3.03 (full domain, one shear sign; PD5) vs +1.25 / −0.36 (hemispheric; OP1).
36. **Michalke growth rate.** Table (l.80): "σ = 0.186 at k = 0.475"; §2.2 (l.184): "σ_max = 0.1855 at k = 0.475 against Michalke's 0.1897 at 0.445"; P1 (l.173-174): "σ_max ≈ 0.19 near k ≈ 0.44"; fastest-growing mode elsewhere "k_max d = 0.450" (l.203). The measured control peak (k = 0.475) and the k_max used for λ/d (0.450) differ.
37. **λ/d.** 13.96 (eq:ratio, abstract) vs "λ = 14.0 d" (table l.88) vs 13.963 (script comment) — rounding.
38. **Waiting-time tail.** "reproduces the −2.2 tail" (l.571) vs "reproduces the observed ≈ 2.1 tail" (l.596) [both attributed to wheatland]; "f(λ) ∼ λ^{−0.9}" with tail exponent 3 + β = 2.1.
39. **Pair-exchange tolerance.** "exact to 10⁻³" (§5.3, table l.95) vs "resolved to tolerance 5 × 10⁻³" (OP8).
40. **"Family thesis: one operator class, three boundary conditions"** (table l.105) vs §1, which names two boundary conditions (one-way; reflecting). The third is not enumerated.
41. **Figure/script tags.** Fig. ep caption is tagged "BH-DYNAMO-01 (FIG-SUNS-01)" and Fig. lane "SHEAR-LANE-01 (FIG-SUNS-01)"; Fig. braid "FIG-SUNS-02"; Fig. butterfly "FIG-SUNS-03". The SUN-N-01 gate (§5.3) is produced by a script named N-RECOVERY-01b (A.5), not by a script named SUN-N-01.
42. **"Every number in this paper is generated by the scripts below"** (App. A, l.653) vs abstract (l.61-63) "every computational number in this paper that is graded [V] ...; literature and observational values are cited separately."
43. **Grade [V]^computed** is used in two table rows (l.101-102) but is not defined in the grade paragraph (l.67-73), which defines only [V]^ansatz.
44. **Open-problem count.** §7 revisits OP1-OP8 of "the first version"; §8 lists 4 remaining. OP6 is headed "sharpened; open" yet ends "Status: closed at the statistical-inverse level; the first-principles hazard remains open."
45. **tex vs script.** The tex says "a companion radiation-MHD calculation" (no code name); the script names "MURaM". The script includes a "3d common tanh reporting" convention that the tex does not mention. The tex gives the convention range "2d (the scale width) to 4d".

## D-E. v2 vs July `(4)` — direct contradictions (subset of C.3 where the two versions assert incompatible things)

46. Shear block: July eqs (12)-(14) w-dependent and divergent at w_i = w_j ↔ v2 §2.1 "exactly diagonal with entries t1+t2, t1+t3, t2+t3", "no w-dependence".
47. Shape–shear coupling: July eqs (15)-(20) nonzero ↔ v2 "identically zero in the principal frame".
48. Singular locus: July — singular at binary collision w1 → w2 (B12), treated as a boundary with a normal direction E3 ↔ v2 — "nothing singular lives there"; only genuine wall is w3 = 0; B_ij codimension 3.
49. Decoupling rate: July O(Δw²) ↔ v2 O(w3).
50. Spectrum away from the wall: July — normal eigenvalues "purely imaginary, high-frequency pairs μ⊥ = ±i√(2λ)" at the collision; EPs as fixed-point failures of a feedback loop ↔ v2 — "Away from the wall the spectrum is real on the entire regular stratum ... exceptional points exist only on the boundary strata" (statement about the transport block (2); the ±i√(2λ) pair is kept for the transverse oscillator).
51. EP/Ricci equivalence: July Theorem V.1 (proved) ↔ v2 "unproven", retired.
52. Correspondence: July "identical canonical lifts", "Spectral Equivalence" ↔ v2 "No isomorphism is claimed."
53. Refraction law: July "This confirms that the universal refraction constraint R1 sin²θ1 = R2 sin²θ2 scales invariant" ↔ v2 "under audit ... the variational derivation in the foundational paper yields first-power Snell".
54. Trapping law: July "exact, coordinate-free" ↔ v2 "withdrawn as heuristic".
55. Extraction rate: July "exact energy extraction rate formula" ↔ v2 "ansatz ... has not been carried out".
56. Persistence result: July Theorem (proved; conclusion "≠ 0 whenever either ... or ...") ↔ v2 Proposition (conditional; "> 0 even at perfect spatial isotropy").
57. Information: July "a complete framework for information conservation at the horizon interface" ↔ v2 "no claim about information in quantum gravity is made."
58. Metric: July Frobenius-orthonormal basis used with a pullback/backreaction metric (24) ↔ v2 quotient metric of Theorem 1, "not a choice".
59. Riesz projector sign: July (A2) Π = −(1/2πi)∮(λI − A)⁻¹dλ ↔ v2 §4.2 Π = +(1/2πi)∮(λI − A)⁻¹dλ. (Both print Π′ − Π = −(1/2πi)∮ R_A E R_A′ dλ.)
60. Horizon-side spacetime: July "non-self-adjoint Kerr spacetime" ↔ v2 no Kerr; example operator "hyperboloidal Regge–Wheeler".
61. Wong equations: July "we derive" / "This derivation proves" ↔ v2 "This is classical [14, 15]".
62. July internal: Theorem A.2's closing paragraph says "Equation (44) establishes that ... the associated spectral projector varies continuously" (l.1021), but (44) in July is the superradiance rate; the bound it describes is (A10). FIG. 4's caption reads "FIG. 4. FIG. 1." (l.557). Two citations print as "[? ]" (l.98, l.395). Recorded as printed.
63. Date label: my assignment calls `BLKHOLE (4)` "the 2 July version"; the text prints "(Dated: July 3, 2026)". My assignment calls v2 "8 Aug 2026"; the PDF prints "August 2026".

---

# NOT READ / PROBLEMS

1. **Console output of the v2 scripts** — not present in the PDF. Gate outcomes above are the paper's prose statements, not printed script output. I ran nothing.
2. **FOURBODY-AUDIT-01/02/03** — named in v2 but not listed in the PDF and not in my assignment; not read.
3. **Suns paper script files** other than `dkist_compare_02.py` — `shear_lane_01.py`, `bh_dynamo_01.py`, `bh_dynamo_01b.py`, `fig_suns_01.py`, `n_recovery_01b.py`, `fig_suns_02.py`, `sun_open_01.py`, `fig_suns_03.py`, `sun_open_02.py`, `sun_open_02b.py` — are `\verbatiminput` by the tex but are not in the extracted folder. Not read (absent).
4. **Suns paper figures** `figS1_lane.pdf`, `figS2_ep.pdf`, `figS3_ladder.pdf`, `figS4_braid.pdf`, `figS5_butterfly.pdf` — referenced by the tex, not in the folder. Not seen; only their captions are recorded.
5. **Compiled Suns v1.5 PDF** — not in my assignment; I read the tex source only. Section/equation numbers given for the Suns paper are inferred from the source order (the `\section*{0. …}` is unnumbered; numbered sections run 1-8).
6. **July figures** — `BLKHOLE (4).txt` is a text extraction; FIG. 1 (graphical abstract) is an image whose internal text is not in the extraction, and FIGs 2-6 appear only as extracted labels. I did not open `BLKHOLE (4).pdf` (not assigned).
7. **Other July-era versions** (`BLKHOLE.txt`, `(1)`, `(2)`, `(3)`), the `Blackholes_and_Suns*.pdf` files, and later versions (v8.5.1, v10) — not assigned, not read. The rule-6(d) "holds that no other version holds" statements are therefore relative to `BLKHOLE (4)` only.
8. **Infographic** — a few tiny decorative plot labels in the lower panels are too small to read (see file 2). All panel text, headers, tags and the footer were read.
9. **Layout text vs PDF** — the layout text garbles some two-line equations (e.g. the abstract's ∫√(2λ)dt line, Theorem 1's display, Proposition 1's hypothesis (ii)); in every such place the reading recorded here was taken from the PDF page image.
10. Cited references [24] (v2), `foft` and the "companion spectral-stress work" / "foundational paper" mentioned in v2 were not read (not assigned).
