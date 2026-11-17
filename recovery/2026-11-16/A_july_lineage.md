# LEDGER A — The July lineage: the twelve earliest versions of the black-hole paper (1–2 July 2026)

Reader's ledger written under `/home/claude/bh_recovery/ledgers/READING_RULES.md`. No tests, no scripts, no computations, no web. Only `diff` between consecutive `raw/Jxx.txt` files was used as a spotting aid (J00 vs J01 only; the reflowed diff proved too noisy to be useful, so all change lists below come from reading the layout texts line by line). Grades are exactly the source's. Nothing is judged here.

Sources read: layout text in `/home/claude/bh_recovery/text/<name>.txt` (all twelve, every line), plus selected PDF pages in `/home/claude/bh_recovery/drive/older/` viewed to settle garbled equations, truncated tables and figures (pages listed per version and in "Not read / problems").

Label key (PDF creation times, US Central, from `pdfinfo`):

| Label | File | Created | Pages | Printed title |
|---|---|---|---|---|
| J00 | Blackholes_and_Suns.pdf | Wed 1 Jul 2026 22:05:47 | 9 | The Principle of Structural Persistence: Non-Normal Operators, Pseudospectral Transients, and Emergent Spacetime Horizons |
| J01 | Blackholes_and_Suns (1).pdf | Wed 1 Jul 22:19:31 | 5 | Non-Hermitian Stability Fields on Stratified Shape Manifolds: Co-Evolving Jacobi Structures, Exceptional Points, and Non-Abelian Gauge Pullbacks |
| J02 | Blackholes_and_Suns (2).pdf | Wed 1 Jul 23:24:33 | 7 | same as J01 |
| J03 | Blackholes_and_Suns (3).pdf | Wed 1 Jul 23:47:09 | 9 | same as J01 |
| J04 | Blackholes_and_Suns (4).pdf | Thu 2 Jul 00:00:08 | 9 | NO TITLE PRINTED (starts at Section I) |
| J05 | Blackholes_and_Suns (5).pdf | Thu 2 Jul 07:13:30 | 8 | NO TITLE PRINTED (starts at Section I) |
| J06 | Blackholes_and_Suns (6).pdf | Thu 2 Jul 08:07:55 | 10 | Beyond the Event Horizon: An Operator-First Theory of Persistent Geometry and Black Hole Dynamics |
| J07 | BLKHOLE.pdf | Thu 2 Jul 15:34:13 | 10 | (see J07 section) |
| J08 | BLKHOLE (1).pdf | Thu 2 Jul 18:22:41 | 13 | (see J08 section) |
| J09 | BLKHOLE (2).pdf | Thu 2 Jul 18:32:26 | 15 | (see J09 section) |
| J10 | BLKHOLE (3).pdf | Thu 2 Jul 19:17:36 | 16 | (see J10 section) |
| J11 | BLKHOLE (4).pdf | Thu 2 Jul 19:24:32 | 17 | (see J11 section) |

Notation used when writing equations out in plain text: `w'` means the time derivative ẇ; `d2U/dw1dw2` means a second partial derivative of U; `K^T` is the transpose; `||.||` a norm; `sqrt()` a square root; `Pi` the projector Π; `Sigma_4` the shape manifold Σ4; `H+` the future horizon.

---

## J00 — `/home/claude/bh_recovery/text/Blackholes_and_Suns.txt` (PDF `drive/older/Blackholes_and_Suns.pdf`)

- Read in full: YES (384 lines of layout text; PDF page 2 also viewed).
- Title as printed (page 2): "The Principle of Structural Persistence: Non-Normal Operators, Pseudospectral Transients, and Emergent Spacetime Horizons"
- Author line as printed: "Jeromie N. Beasley" (no affiliation line).
- Date as printed: "July 2, 2026" (PDF created 1 Jul 22:05 Central).
- Pages: 9. Article-style layout (arabic section numbers). Page 1 holds only the Abstract; the title is on page 2.
- Name of the horizon mechanism: **"The Barber Mechanism"** (Section 8 title: "The Barber Mechanism: Horizon Rank Collapse"; text: "The “barber” is the geometric filtering of stability.").

### Abstract (page 1, verbatim)
"We introduce a unified geometric mechanics framework proving that black hole horizons, many-body shape manifolds, and dissipative transport systems belong to a singular category of self-consistent field theories. Rather than postulating geometry as a static background, we demonstrate that observable spacetime structure emerges from the real-time projection of non-normal operators onto highly persistent invariant subspaces. Integrating recent advancements in black hole perturbation theory and pseudospectra, we derive the exact mathematical mechanism transforming decaying quasinormal modes into stable, long-lived transient plateaus. We formalize this via higher-derivative Sobolev inner products and prove that the black hole “no-hair” condition represents an extreme algebraic rank collapse driven by an infinite-frequency boundary-layer squeeze."

### Section list (J00)
1. Structural Matrix of the Compounded Field Theory
2. The Canonical Basis and Tangent Bundle Construction
3. The Jacobi-Driven Stability Spine
   - 3.1 Explicit Matrix Derivation of the Stability Operator
     - 3.1.1 The Pure Shape Block (2 × 2)
     - 3.1.2 The Pure Shear Block (3 × 3)
     - 3.1.3 The Shear Coupling Block / Refraction Terms (2 × 3)
4. Non-Abelian SU(3) Color-Gauge Extension
5. The Curvature-Induced Exceptional Point Theorem and Refraction Breakdown
6. The Core Operator Pipeline
7. Pseudospectral Transients and the Black Hole Spine
   - 7.1 Transient Plateaus and Energy Packets
8. The Barber Mechanism: Horizon Rank Collapse
9. Non-Abelian Gauge Pullback and Superradiance
References

### Section 1 — Structural Matrix of the Compounded Field Theory (ONLY in J00)
Text: "To easily scan how the physical properties map into this unified template, the operational mechanics of the paper can be tracked through the following matrix:" followed by a four-column table. Closing line: "The template is fully written out, self-contained, and structurally complete."

Table as far as it can be read. The fourth column runs off the right edge of the printed page in the PDF itself (confirmed by viewing PDF page 2), so its entries are cut off in the source:

| Manifold Feature | Mathematical Representation | Chromodynamic Injection | 4th column, header starts "Black … / Analog…" (cut off) |
|---|---|---|---|
| Stability Spine | K_ab = ⟨E_a, K E_b⟩ | Re-indexed by D_t and F_μν | "Govern… / Mode R…" (cut off) |
| Non-Normality | [K, K^T] ≠ 0 | Triggered by Lie Commutator [q_i, q_j] | "Source … / Transie…" (cut off) |
| Boundary Phase | Lower-Left Block → 0 | Deflected by Flux Tube Confinement | "Zero B… / Way Va…" (cut off) |
| Horizon State | μ_⊥ = ± i sqrt(2λ) | Hadronization Phase Transition | "High-Fr… / (Frictio…" (cut off) |

### Section 2 — The Canonical Basis and Tangent Bundle Construction
"Let the relational mass-weighted configuration space of a four-body system in three-dimensional physical space be governed by the diagonal shape tensor W = diag(w1, w2, w3) evaluated in its principal frame, subject to the absolute trace constraint Σ_{i=1}^{3} w_i = 1. The tangent space T_W Σ4 consists of symmetric, traceless 3 × 3 matrices. We define a canonical, coordinate-free orthonormal basis {E1, …, E5} with respect to the Frobenius inner product, satisfying Tr(E_a E_b) = δ_ab."

- "The pure shape deformation subspace, controlling structural strain and breathing modes, is spanned by:"
  - **Eq. (1):** E1 = (1/√2) diag-matrix [[1,0,0],[0,−1,0],[0,0,0]];  E2 = (1/√6) [[1,0,0],[0,1,0],[0,0,−2]].
- "The geometric shear subspace, capturing the non-commutative rotational couplings induced by the non-Abelian SO(3) mechanical connection, is spanned by:"
  - **Eq. (2):** E3 = (1/√2) [[0,1,0],[1,0,0],[0,0,0]];  E4 = (1/√2) [[0,0,1],[0,0,0],[1,0,0]];  E5 = (1/√2) [[0,0,0],[0,0,1],[0,1,0]].

No definition/theorem environment; no grade given.

### Section 3 — The Jacobi-Driven Stability Spine
- "The covariant evolution of a horizontal geometric deviation field J along a shape trajectory satisfies the second-order reduced N-body Jacobi equation:"
  - **Eq. (3):** ∇_t² J + R(J, W')W' + ∇²U(W) · J = 0
  - "where R is the Riemann curvature tensor of the stratified shape manifold Σ4, and ∇²U(W) is the intrinsic Hessian of the mass-weighted potential energy."
- "We map this second-order system into a first-order state-space formulation by introducing the descriptor vector Y = (J  ∇_t J)^T ∈ R^10. The horizontal updating law becomes:"
  - **Eq. (4):** ∇_t Y = A_Jacobi(W) Y,   A_Jacobi = [[0, I_5],[−K(W, W'), 0]]
  - "where K(W, W') is the 5 × 5 total stability stiffness tensor."

#### 3.1 Explicit Matrix Derivation of the Stability Operator
"By evaluating the horizontal projection forms dictated by the mechanical connection and mapping the connection form Ω = skew(W' W^{-1}) directly into the canonical basis, the entries of the 5 × 5 block-structured matrix partition precisely into shape, shear, and coupling sectors."

3.1.1 The Pure Shape Block (2 × 2):
- **Eq. (5):** K11 = 2(w1'² + w2'²) − (w1' − w2')² + d2U/dw1² − 2 d2U/dw1dw2 + d2U/dw2²
- **Eq. (6):** K22 = (2/3)[ w1'² + w2'² + 4 w3'² − (w1' + w2' − 2 w3')² ] + (1/3)( d2U/dw1² + d2U/dw2² + 4 d2U/dw3² ) − (4/3)( d2U/dw1dw3 + d2U/dw2dw3 )
- **Eq. (7):** K12 = sqrt(2/3) [ (w1'² − w2'²) + d2U/dw1² − d2U/dw2² − d2U/dw1dw3 + d2U/dw2dw3 ]

3.1.2 The Pure Shear Block (3 × 3):
- **Eq. (8):** K33 = [(w1' − w2')² / (w1 − w2)²] (t1 + t2) − 2(w1' − w2')(w1' w2') / (w1 − w2) + H12
- **Eq. (9):** K44 = [(w1' − w3')² / (w1 − w3)²] (t1 + t3) − 2(w1' − w3')(w1' w3') / (w1 − w3) + H13
- **Eq. (10):** K55 = [(w2' − w3')² / (w2 − w3)²] (t2 + t3) − 2(w2' − w3')(w2' w3') / (w2 − w3) + H23
- The symbols t_i and H_ij are used here without being defined anywhere in J00 (no definition given in the source).

3.1.3 The Shear Coupling Block / Refraction Terms (2 × 3):
- **Eq. (11):** K13 = √2 (t1 − t2) [w1' w2' / (w1 − w2)] + ( d2U/dw1dX12 − d2U/dw2dX12 )
- **Eq. (12):** K14 = (1/√2)(t1 − t3) [w1' w3' / (w1 − w3)] + ( d2U/dw1dX13 − d2U/dw2dX13 )
- **Eq. (13):** K15 = −(1/√2)(t2 − t3) [w2' w3' / (w2 − w3)] + ( d2U/dw1dX23 − d2U/dw2dX23 )
- **Eq. (14):** K23 = (1/√6)(t1 − t2) [w1' w2' / (w1 − w2)] + sqrt(2/3) ( d2U/dw1dX12 + d2U/dw2dX12 − 2 d2U/dw3dX12 )
- **Eq. (15):** K24 = −(2/√6)(t1 − t3) [w1' w3' / (w1 − w3)] + sqrt(2/3) ( d2U/dw1dX13 + d2U/dw2dX13 − 2 d2U/dw3dX13 )
- **Eq. (16):** K25 = −(2/√6)(t2 − t3) [w2' w3' / (w2 − w3)] + sqrt(2/3) ( d2U/dw1dX23 + d2U/dw2dX23 − 2 d2U/dw3dX23 )
- (Layout note: the text extraction puts the velocity fraction and the bracket of U-derivatives on separate lines; whether the printed form is "(t_i − t_j)·(fraction) + (bracket)" or "(t_i − t_j)·(fraction + bracket)" for (11)–(13) is not unambiguous from the text layout; in (11)–(13) the big parentheses in the layout enclose both the fraction and the U-derivative difference. Later readers should check the PDF glyphs. X12, X13, X23 are not defined in the source. Entries K34, K35, K45 are not given in any version.)

### Section 4 — Non-Abelian SU(3) Color-Gauge Extension
"We elevate the scalar mass-kinematics to a gauge-extended field landscape by introducing an internal SU(3) color-charge symmetry. Each body carries an internal color-charge vector q_{c,i} taking values in the Lie algebra su(3). The spatial inertia tensor is updated to the gauge-extended operator T_ij(W, q_c):"
- **Eq. (17):** T_ij(W, q_c) = T_ij(W) · I_3 + α_s Σ_{a=1}^{8} Tr( λ^a q_{c,i} ⊗ q†_{c,j} )
- "where α_s is the strong coupling constant and λ^a are the Gell-Mann matrices."
- "The non-normality of the stability system is now generated co-equally by spatial mass distribution asymmetry and internal color-charge commutation:"
- **Eq. (18):** ||[K, K^T]|| ∝ Σ_{i<j} (t_i − t_j)² · f(w) + g_s² Σ_{a=1}^{8} || [q^a_{c,i}, q^a_{c,j}] ||²
- No grade given.

### Section 5 — The Curvature-Induced Exceptional Point Theorem and Refraction Breakdown
"We treat the geometric boundaries of the system (binary collision walls B_ij or horizon interfaces) under a unified, non-linear pullback metric regime where the manifold metric g(t) is generated dynamically by the active transport fields:"
- **Eq. (19):** g_ab(t) = ⟨E_a, T(W) E_b⟩_Frob + γ · Tr( A_Jacobi Y Y^T A_Jacobi^T ),  "where γ > 0 is the backreaction coupling constant."

**Theorem 1** (grade: Theorem; no name in brackets in J00). Verbatim: "Let Σ4 be a stratified shape manifold governed by the transport-induced pullback metric g(t). The Exceptional Points (EPs) of the total stability operator A_Jacobi are non-linear fixed-point failures of the geometric feedback loop, manifesting as an instantaneous, self-reinforcing Ricci curvature blow-up:
- **Eq. (20):** lim_{t→t_col} |R_Ricci(t)| → ∞  ⟺  det(∂Φ/∂Y) = 0
At this critical interface, the operator degenerates into a non-diagonalizable size-2 Jordan block, forcing the normal components of the transport field to vanish identically."

Proof (as printed): "Without loss of generality, let the boundary layer be approached along the binary constraint w1 → w2. We separate the tangent space into the parallel sub-bundle T B12 (spanned by E1, E2, E4, E5) and the normal sub-bundle T^⊥ B12 (spanned by E3). As the collision boundary is reached, the stiffness operator takes a block-triangular form. The lower-left coupling block vanishes quadratically at the rate O(Δw²), forcing the total first-order transport matrix into an exact block-triangular structure. The normal state subspace decouples into an independent invariant sub-bundle. The corresponding normal eigenvalues are purely imaginary high-frequency pairs μ_⊥ = ± i sqrt(2λ). As λ → +∞, the normal velocity amplitude collapses:
- **Eq. (21):** |v_⊥(t)| ∝ 1/sqrt(2λ) → 0
The 5D transport cones flatten entirely parallel to T B_ij, executing continuous kinematic refraction along the boundary layer interface. This confirms the intrinsic Quantum Geometric Tensor dissipation bounds: the system cannot penetrate directions of infinite geometric obstruction."
(Φ in Eq. (20) is not defined in the text of J00.)

### Section 6 — The Core Operator Pipeline (verbatim)
"We define the physical universe not through coordinates, but via a mass-and-momentum weighted non-normal transport operator A(w) acting on a generalized Hilbert space H. The local directions of maximal capacity define a rank-1 projection density:
- **Eq. (22):** P(t) = N(t) N(t)^T
which is lifted to a higher-rank spectral projector Π on an ambient Grassmannian manifold. The classical metric g_Π and its associated gauge curvature Ω_Π emerge intrinsically as representations of this underlying transport capacity:
- **Eq. (23):** g_ab = Tr( Π · [D_a, D_b] Π )
Individual state vectors fluctuate under local environment dynamics, but the macroscopic subspace remains rigid. This is quantified by the projector overlap functional tracking persistence over an interval Δ:
- **Eq. (24):** C(Δ) = Tr( Π(t) Π(t + Δ) )
Structural persistence outlasts vector stability. Observable physical laws emerge precisely from the channels where C(Δ) → 1."
No grade given. (No normalisation by rank in C(Δ) in this version.)

### Section 7 — Pseudospectral Transients and the Black Hole Spine
"A black hole horizon is inherently dissipative due to one-way energy loss, rendering its governing perturbation Hamiltonian non-selfadjoint. Consequently, the resulting quasinormal modes (QNMs) lack standard orthogonality and completeness, giving rise to pronounced non-modal transient phenomena. We evaluate these transients by mapping the system’s time evolution operator E(t) = exp(−i A_Jacobi t) using the resolvent norm and the pseudospectrum:"
- **Eq. (25):** σ_ε(A_Jacobi) = { ω ∈ C : ||(ωI − A_Jacobi)^{-1}|| ≥ 1/ε }
- "A lower bound on the maximum transient energy growth is dictated by the Kreiss constant K_C:"
- **Eq. (26):** ||E(t)|| ≥ K_C ≡ sup_{Im(ω)>0} [ Im(ω) · ||(ωI − A_Jacobi)^{-1}|| ]

7.1 Transient Plateaus and Energy Packets:
"To guarantee numerical convergence and isolate the physical bulk profiles of these transient states, we introduce the higher-derivative Sobolev-k inner product:"
- **Eq. (27):** ⟨ψ, φ⟩_{H^k} = Σ_{j=0}^{k} ∫_{Σ4} (D_r^j ψ)† (D_r^j φ) sqrt(−g) dr,  "where k = 1 recovers the standard energy norm."
- "Let the solution be a sum of non-orthogonal QNMs:" **Eq. (28):** ψ(t, r) = Σ_n c_n e^{−iω_n t} φ_n(r).
- "While individual modes decay at the rate Im(ω_n), the total energy remains fixed throughout an arbitrary plateau duration τ ∝ N_modes:"
- **Eq. (29):** ||ψ(t)||²_{H^k} = Σ_n |c_n|² e^{2 Im(ω_n) t} + Σ_{n≠m} c_n* c_m e^{i(ω_n* − ω_m) t} ⟨φ_n, φ_m⟩_{H^k}.
- "The non-orthogonal cross-terms orchestrate precise cancellations, manifesting physically as localized energy packets traveling along the future horizon."
No grade given.

### Section 8 — The Barber Mechanism: Horizon Rank Collapse (verbatim)
"The classical “no-hair” theorem dictates the rapid erasure of structural asymmetries near a black hole horizon. We derive this “haircut” as an extreme algebraic rank collapse within the boundary layer of the self-consistent stiffness matrix K(W, W'). Decomposing the tangent bundle into parallel shape deformations j_∥ and the normal horizon-piercing shear mode j_⊥, the boundary limit takes the exact block-triangular form:
- **Eq. (30):** K_horizon = [[A_∥∥, E_shear],[0, 2λ]]
where λ → +∞ is the mass-density inertial squeeze eigenvalue. Because the lower-left back-coupling block vanishes identically, the normal state space forms an uncoupled invariant sub-bundle. The normal propagator operates as an extreme high-frequency oscillator whose velocity amplitude scales inversely with the squeeze parameter:
- **Eq. (31):** ||v_⊥(t)|| ∝ 1/sqrt(2λ) → 0.
The “barber” is the geometric filtering of stability. Asymmetric structural variations cannot be supported by the degenerate boundary spectrum; they are systematically projected out, forcing all incoming trajectories to flatten and skim parallel to the horizon surface."

### Section 9 — Non-Abelian Gauge Pullback and Superradiance
"Elevating this persistence engine to include an internal SU(3) color-gauge symmetry adds a non-Abelian field strength term F_μν to the stiffness spine. The total non-normality commutator picks up an explicit color-charge driver:"
- **Eq. (32):** ||[K, K^T]|| ∝ R_Ricci(Y, Y) + g_s² Σ_{a=1}^{8} || [q^a_{c,i}, q^a_{c,j}] ||².
- "When a net color-charge or U(1) current breaks global singlet symmetry, the system extracts energy directly from the rotating gauge background. This executes a transient form of superradiance within the modally stable regime, transferring energy from the background field to the transport fields before asymptotic decay sets in."
- No superradiance rate formula in J00.

### References (J00)
[1] J. Besson, J. Carballo, C. Pantelidou, and B. Withers, “Transients in black hole perturbation theory,” Front. Phys. 13, 1638583 (2025).

### Results inventory (J00)
- Theorems: 1 (Theorem 1, EP / Ricci blow-up). No propositions, no definitions, no appendix, no figures. One table (Section 1). 32 numbered equations.

### What J00 holds that no other version holds
- The title "The Principle of Structural Persistence: Non-Normal Operators, Pseudospectral Transients, and Emergent Spacetime Horizons".
- The J00 abstract (the "singular category of self-consistent field theories" / "infinite-frequency boundary-layer squeeze" wording).
- Section 1 "Structural Matrix of the Compounded Field Theory" with its table (Chromodynamic Injection column: "Re-indexed by D_t and F_μν", "Triggered by Lie Commutator [q_i, q_j]", "Deflected by Flux Tube Confinement", "Hadronization Phase Transition") and the line "The template is fully written out, self-contained, and structurally complete."
- Author line with no affiliation.
- (Shared only with J01:) the short superradiance paragraph mentioning "a net color-charge or U(1) current" with no rate formula.

---

## J01 — `/home/claude/bh_recovery/text/Blackholes_and_Suns (1).txt` (PDF `Blackholes_and_Suns (1).pdf`)

- Read in full: YES (340 lines).
- Title as printed: "Non-Hermitian Stability Fields on Stratified Shape Manifolds: Co-Evolving Jacobi Structures, Exceptional Points, and Non-Abelian Gauge Pullbacks"
- Author line as printed: "Jeromie N. Beasley¹" with affiliation line "¹Program in Complex Spectral Geometry and Projector Dynamics"
- Date as printed: "(Dated: July 2, 2026)"
- Pages: 5. Journal-style (REVTeX-like) layout, roman section numbers.
- Horizon mechanism name: **"The Barber Mechanism"** (Section VII).

### Abstract (verbatim)
"We formalize a rigorous, coordinate-free geometric field theory mapping the stability and transport kinetics of relational systems onto the five-dimensional stratified shape manifold Σ4. Rather than treating transport operators as passive probes over fixed metrics, we derive a self-consistent structural backbone directly from the first-order, horizontal projection of the mass-weighted Jacobi field deviation system. We explicitly calculate the structural matrix elements for the 5 × 5 geometric stiffness operator across its shape and shear subspaces. By embedding an internal non-Abelian SU(3) gauge symmetry, we demonstrate that spatial anisotropy and color-charge non-normality act as co-equal drivers of spectral defectiveness. Finally, we prove that the physical horizon boundaries act as a continuous locus of Exceptional Points (EPs), exhibiting a self-reinforcing Ricci-type curvature blow-up and a metric rank collapse that forces incoming 5D transport cones to flatten into an invariant, boundary-skimming 2D non-normal phase."

### Section list (J01)
- I. THE CANONICAL BASIS AND TANGENT BUNDLE CONSTRUCTION
- II. THE JACOBI-DRIVEN STABILITY SPINE
  - A. Explicit Matrix Derivation of the Stability Operator (1. The Pure Shape Block (2 × 2); 2. The Pure Shear Block (3 × 3); 3. The Shear Coupling Block / Refraction Terms (2 × 3))
- III. NON-ABELIAN SU(3) COLOR-GAUGE EXTENSION
- IV. THE CURVATURE-INDUCED EXCEPTIONAL POINT THEOREM AND REFRACTION BREAKDOWN
- V. THE CORE OPERATOR PIPELINE
- VI. PSEUDOSPECTRAL TRANSIENTS AND THE BLACK HOLE SPINE
  - A. Transient Plateaus and Energy Packets
- VII. THE BARBER MECHANISM: HORIZON RANK COLLAPSE
- VIII. NON-ABELIAN GAUGE PULLBACK AND SUPERRADIANCE
- Reference [1]

### Contents
Body text and Eqs. (1)–(32) are word-for-word the same as J00 Sections 2–9 (same equation numbers 1–32, same Theorem 1 statement and proof, same Core Operator Pipeline wording with Eqs. (22)–(24), same Barber text with Eqs. (30)–(31), same superradiance paragraph with Eq. (32)). Checked line by line against J00.

- **Theorem 1** (grade: Theorem; unnamed) — identical statement, Eq. (20), and proof with Eq. (21).
- No propositions, definitions, figures, tables or appendix.

### References (J01)
[1] J. Besson, J. Carballo, C. Pantelidou, and B. Withers, “Transients in black hole perturbation theory,” Front. Phys. 13, 1638583 (2025).

### Changes J00 → J01
- (a) Adds: new title; affiliation line "Program in Complex Spectral Geometry and Projector Dynamics"; "(Dated: July 2, 2026)" form; a completely new abstract (shape-manifold-first, "continuous locus of Exceptional Points (EPs)", "boundary-skimming 2D non-normal phase").
- (b) Drops: the J00 title; the J00 abstract; the whole of J00 Section 1 "Structural Matrix of the Compounded Field Theory" and its table; the "References" heading (the reference is kept as a footnote-style list).
- (c) Changes: layout from 9-page article style to 5-page two-level journal style; section numbers shift down by one and become roman (J00 §2 → I, … §9 → VIII). No change to any equation, number or grade.
- (d) Holds that no other version holds: nothing unique in content (it is the shortest version; J02 contains all of it).

---

## J02 — `/home/claude/bh_recovery/text/Blackholes_and_Suns (2).txt` (PDF `Blackholes_and_Suns (2).pdf`)

- Read in full: YES (437 lines).
- Title, author line, affiliation, date: identical to J01 ("Non-Hermitian Stability Fields on Stratified Shape Manifolds: …"; "Jeromie N. Beasley¹"; "¹Program in Complex Spectral Geometry and Projector Dynamics"; "(Dated: July 2, 2026)").
- Abstract: identical to J01.
- Pages: 7.
- Horizon mechanism name: **"The Barber Mechanism"** (Section VII).

### Section list (J02)
- I. THE CANONICAL BASIS AND TANGENT BUNDLE CONSTRUCTION
- II. THE JACOBI-DRIVEN STABILITY SPINE — A. Explicit Matrix Derivation of the Stability Operator (1, 2, 3 as before)
- III. NON-ABELIAN SU(3) COLOR-GAUGE EXTENSION
- IV. THE CURVATURE-INDUCED EXCEPTIONAL POINT THEOREM AND REFRACTION BREAKDOWN
- V. THE CORE OPERATOR PIPELINE
- VI. PSEUDOSPECTRAL TRANSIENTS AND THE BLACK HOLE SPINE
  - A. Transient Plateaus and Energy Packets
  - B. Transient Plateaus and Energy Packets on Shape Manifolds  (NEW)
- VII. THE BARBER MECHANISM: HORIZON RANK COLLAPSE
- VIII. NON-ABELIAN GAUGE PULLBACK AND SUPERRADIANCE (rewritten second half)
- IX. THE UNIFIED BOUNDARY CORRESPONDENCE (NEW)
- Reference [1]

### Contents unchanged from J01
Sections I–V and VI.A with Eqs. (1)–(29), Theorem 1 and its proof: word-for-word as J01.

### NEW: VI.B Transient Plateaus and Energy Packets on Shape Manifolds (verbatim)
"To establish structural equivalence between cosmological horizons and relational systems, we define the higher-derivative Sobolev-k inner product directly on the tangent bundle TΣ4 of the stratified shape space:
- **Eq. (30):** ⟨J, Y⟩_{H^k(Σ4)} = Σ_{j=0}^{k} ∫_{Σ4} G^{a1…aj b1…bj} ( D_{a1…aj} J^m  g_mn(t)  D_{b1…bj} Y^n ) sqrt(|g|) d⁵w
where g_mn(t) is the dynamic pullback metric driven by the backreaction flow, and D_a is the SU(3) color-gauge covariant derivative. Because the underlying stability tensor satisfies [K, K^T] ≠ 0, the spatial eigenfunctions φ_n(w) are non-orthogonal, yielding a non-vanishing overlap matrix ⟨φ_n, φ_m⟩_{H^1(Σ4)} = Δ_nm ≠ δ_nm. Consequently, a superposition of decaying modes J(t, w) = Σ_n c_n e^{−iω_n t} φ_n(w) maintains a fixed energy configuration profile over an extended plateau duration τ ∝ K_C:
- **Eq. (31):** ||J(t)||²_{H^1(Σ4)} = Σ_n |c_n|² e^{2 Im(ω_n) t} + Σ_{n≠m} c_n* c_m e^{i(ω_n* − ω_m) t} Δ_nm
The non-orthogonal cross-terms Δ_nm act as a phase-directed energy buffer. This proves that many-body shape manifolds support identical persistent non-modal transient wave packets as dissipative black hole horizons, lifting structural persistence to a universal, category-theoretic invariant of non-normal transport systems."
(Note: VI.A still says plateau duration "τ ∝ N_modes"; VI.B says "τ ∝ K_C". Both stand in the same document; see Disagreements.)

### VII. The Barber Mechanism
Text identical to J01; equations renumbered: K_horizon is now **Eq. (32)**, velocity collapse **Eq. (33)**.

### VIII. Non-Abelian Gauge Pullback and Superradiance (rewritten)
First paragraph and commutator equation as before, now **Eq. (34):** ||[K, K^T]|| ∝ R_Ricci(Y, Y) + g_s² Σ_{a=1}^{8} || [q^a_{c,i}, q^a_{c,j}] ||².

New text (verbatim): "When a net color-charge current J^μ_color = Σ_i q_{c,i} W'^μ_i breaks global singlet symmetry, the system undergoes transient superradiant amplification. Differentiating the total H¹(Σ4) field energy density and substituting the color-covariant Wong-type stability equations yields the exact energy extraction rate formula:
- **Eq. (35):** dE/dt = α_s ∫_{Σ4} Tr( J^μ_color F_μν W'^ν ) ||J||² sqrt(|g|) d⁵w  +  γ ∫_{Σ4} Tr( [D_t K, K^T] · (J J†) ) sqrt(|g|) d⁵w
where F_μν is the Lie-algebra valued SU(3) field strength tensor. The first term dictates the direct variational extraction of energy from the rotating non-Abelian gauge background, which becomes strictly positive under current-field alignment. The second term represents the advective pseudospectral driver generated by the time-dependent rotation of the non-normal commutator [K, K^T]. This dual-engine mechanism guarantees that even within a modally stable regime (Im(ω_n) < 0), the structural persistence of the underlying subspace protects these transient channels, allowing macroscopic energy extraction to execute a massive superradiant peak throughout the plateau window τ before asymptotic decay sets in."
Grade: none given ("exact energy extraction rate formula" is the source's phrase).

### NEW: IX. THE UNIFIED BOUNDARY CORRESPONDENCE
"We establish a formal mathematical isomorphism between the boundary configurations of relational shape spaces and the dissipative horizons of general relativity."

**Theorem 2 (Topological Boundary Dictionary).** Grade: Theorem. Verbatim: "Let ∂Σ4 represent the boundary stratum of the five-dimensional shape space containing the binary collision hypersurfaces B_ij, and let H+ represent a localized future event horizon patch of a non-selfadjoint Kerr black hole spacetime. Under the mapping of the self-consistent stability matrix K(W, W', q_c), ∂Σ4 and H+ are category-theoretic duals belonging to the same isomorphic equivalence class of non-Hermitian boundary layers, satisfying the explicit operational dictionary:
- **Eq. (36):** Binary Squeeze Boundary (w_i → w_j) ⟺ Horizonal Obstructive Screen (Δr → 0)
- **Eq. (37):** Inertial Mass-Squeeze Factor (2λ) ⟺ Horizon Surface Gravity (κ_surface)
- **Eq. (38):** Quadratic Rank SVD Collapse (O(Δw²)) ⟺ Black Hole “No-Hair” Absolutism
- **Eq. (39):** Zero Back-Coupling Entry (C_lower → 0) ⟺ Horizonal One-Way Valve Mechanics"

Proof (verbatim): "Let the boundary layer geometry be evaluated by tracking the non-normal commutator norm ||[K, K^T]|| across both systems. On a binary collision wall B_ij, the shape frame eigenvalues coalesce as w_i − w_j → 0, forcing the inertial squeeze parameter λ → +∞. In the vicinity of a black hole horizon H+, the radial horizon function vanishes (Δr → 0), driving the effective surface gravity fields to an extreme local localization parameter κ_surface → +∞. Reordering the state variables into parallel tracking vectors Y_∥ and transverse normal fields Y_⊥ yields the identical first-order structural update matrix across both interfaces:
- **Eq. (40):** A_boundary = [[0, I, 0, 0],[−A_∥∥, 0, −E_shear, 0],[0, 0, 0, 1],[0, 0, −χ, 0]]
where χ = 2λ on ∂Σ4 and χ = 2κ_surface on H+. Because the lower-left block vanishes identically across both boundary limits due to the quadratic rank collapse of the transverse projection operators, the incoming transport cones are forced into a block-triangular structure. Evaluating the time propagator for the decoupled normal sub-bundle yields the identical high-frequency micro-vibrational phase engine:
- **Eq. (41):** lim_{χ→+∞} exp( [[0, 1],[−χ, 0]] t ) = [[cos(√χ t), (1/√χ) sin(√χ t)],[−√χ sin(√χ t), cos(√χ t)]]
The transverse velocity amplitude scales identically as ||v_⊥(t)|| ∝ χ^{−1/2} → 0. For both the multi-body system and the general relativistic horizon, incoming kinetic energy normal to the interface is completely suppressed. The transport fields are flat-refracted into an invariant, boundary-skimming 2D non-normal phase layer. The structural information is preserved entirely within the phase relationships of the non-orthogonal edge states of the non-selfadjoint operator ledger. Therefore, the physical boundaries are topologically and spectrally isomorphic, proving that “no-hair” erasure, reflectionless absorption, and relational multi-body obstruction are identical structural manifestations of the Principle of Structural Persistence."

### References (J02)
[1] Besson, Carballo, Pantelidou, Withers, Front. Phys. 13, 1638583 (2025) (same single reference).

### Results inventory (J02)
- Theorem 1 (EP, unnamed) — Theorem. Theorem 2 (Topological Boundary Dictionary) — Theorem. 41 numbered equations. No figures.

### Changes J01 → J02
- (a) Adds: VI.B with Eqs. (30)–(31) (Sobolev-k product on TΣ4; overlap matrix Δ_nm; "τ ∝ K_C"; "phase-directed energy buffer"; "universal, category-theoretic invariant"); the color current J^μ_color = Σ_i q_{c,i} W'^μ_i; the superradiance energy-extraction rate formula Eq. (35) with its "dual-engine mechanism" paragraph; Section IX with Theorem 2 (Topological Boundary Dictionary), dictionary Eqs. (36)–(39), A_boundary Eq. (40), propagator Eq. (41), χ = 2λ / χ = 2κ_surface.
- (b) Drops: in the superradiance section, the phrase "or U(1)" (J00/J01: "a net color-charge or U(1) current breaks global singlet symmetry, the system extracts energy directly from the rotating gauge background. This executes a transient form of superradiance within the modally stable regime, transferring energy from the background field to the transport fields before asymptotic decay sets in.") — replaced by the rate-formula text.
- (c) Changes: Barber equations renumbered (30),(31) → (32),(33); commutator equation (32) → (34). No grade changes.
- (d) Holds that no other version holds: nothing unique (all of J02 is carried in J03 and J04).

---

## J03 — `/home/claude/bh_recovery/text/Blackholes_and_Suns (3).txt` (PDF `Blackholes_and_Suns (3).pdf`)

- Read in full: YES (580 lines).
- Title, author line, affiliation, date, abstract: identical to J01/J02.
- Pages: 9.
- Horizon mechanism name: **"The Barber Mechanism"** (Section VII).

### Section list (J03)
- I–VIII exactly as J02 (including VI.A, VI.B).
- IX. THE UNIFIED BOUNDARY CORRESPONDENCE (Theorem 2, as J02)
- X. THE UNIFIED BOUNDARY CORRESPONDENCE VIA THE HIERARCHY PRINCIPLE OF STRUCTURAL PERSISTENCE (NEW; Theorem 3)
- FIG. 1 (NEW), Reference [1]

### Contents unchanged from J02
Sections I–IX, Eqs. (1)–(41), Theorem 1, Theorem 2 (Topological Boundary Dictionary) with full proof: word-for-word as J02.

### NEW: X. THE UNIFIED BOUNDARY CORRESPONDENCE VIA THE HIERARCHY PRINCIPLE OF STRUCTURAL PERSISTENCE
Intro (verbatim): "We embed the correspondence between the boundary strata of relational shape space and the event horizons of general relativity inside the operator-first directional transport framework developed in this work. Both boundaries are realized as extreme rigidity interfaces at which admissible transport undergoes anisotropic compression. The correspondence is established at the level of the persistent higher invariants in the Hierarchy Principle of Structural Persistence, rather than at the level of fragile lower-level descriptors."

**Theorem 3 (Projector-Level Boundary Isomorphism).** Grade: Theorem. Verbatim: "Let ∂Σ4 denote the boundary stratum of the five-dimensional shape space containing the binary collision hypersurfaces B_ij. Let H+ be a localized future event-horizon patch of a non-self-adjoint Kerr spacetime. Both arise as rigidity interfaces governed by a Jacobi-driven stability spine whose linearized dynamics are encoded in a stiffness operator K that admits the canonical block decomposition into shape, shear, and refraction-coupling blocks. Under the operator-first construction, the dominant eigenspace of the weighted transport operator lifts canonically to a spectral projector bundle Π on the Grassmannian. At both interfaces the lower-level descriptors become singular, while the higher-level projector bundle remains continuous. Consequently, ∂Σ4 and H+ are isomorphic at the level of the emergent admissible-channel geometry: they realize identical canonical lifts through the four-tier Hierarchy Principle of Structural Persistence. The explicit operational dictionary at the projector level reads:
- **Eq. (42):** Binary Collision Hypersurface B_ij (w_i → w_j) ⟺ Horizon as Rigidity Interface (Δr → 0)
- **Eq. (43):** Inertial Squeeze Factor λ (χ = 2λ) ⟺ Effective Horizon Stiffness κ_eff (proper acceleration divergence)
- **Eq. (44):** Quadratic Rank Collapse of Transverse Projectors ⟺ No-Hair Uniqueness + One-Way Causal Structure
- **Eq. (45):** Zero Back-Coupling in Lower-Left Block of A_boundary ⟺ Block-Triangular Transport Cone (Normal Modes Suppressed)"

Proof ("We proceed in five steps, each corresponding to a stage in the operator-first pipeline and the Hierarchy Principle lift."):
- "Step 1 — Common Operator-First Origin. Both systems originate from a weighted transport operator whose dominant eigenspace defines the admissible direction. On the shape space Σ4 this is the intrinsic transport operator  A_intr = Π_H ∘ K(W, W'),  where K(W, W') is the total geometric stiffness tensor arising from the linearized reduced Jacobi equation on the five-dimensional tangent space (pure shape block + pure shear block + refraction coupling block). Near the Kerr horizon the analogous role is played by the linearized perturbation operator (or its membrane-paradigm effective description). In both cases the operator is non-normal; the commutator norm ||[K, K^T]|| quantifies the sensitivity responsible for tip–tail asymmetry."
- "Step 2 — Shared Stability Spine and Block Structure. Linearization about each interface yields the identical first-order structural matrix in the parallel/transverse splitting:" A_boundary = [[0, I, 0, 0],[−A_∥∥, 0, −E_shear, 0],[0, 0, 0, 1],[0, 0, −χ, 0]] (unnumbered here). "The lower-left block vanishes identically because of the quadratic rank collapse of the transverse projection operators. The transverse 2 × 2 block is the high-stiffness harmonic oscillator with frequency √χ, where χ diverges at both the binary collision wall (λ → +∞) and the horizon (effective stiffness arising from the diverging proper acceleration of stationary observers). The time propagator of the transverse block in the high-χ limit suppresses normal excursions while preserving tangential phase information inside the persistent projector bundle. This is the block-triangular transport cone that enforces one-way admissible channels at both boundaries."
- "Step 3 — Hierarchy Principle Lift (Fragile → Persistent). At both interfaces the lower-level descriptors become singular or defective: - On B_ij: individual Jacobi fields and relative velocities in the collision direction undergo rapid reorientation (the “dancing needle” effect). - On H+: local static observers experience diverging proper acceleration; the Killing vector becomes null. By the Hierarchy Principle of Structural Persistence we perform the canonical four-tier lift L_k : I_k → I_{k+1}. The explicit objects at each level for the two boundaries are displayed in the commutative diagram of Figure 1."
- "Step 4 — Refraction and No-Hair as Emergent Consequences. The same variational principle that yields the universal refraction law  R1 sin²θ1 = R2 sin²θ2  across rigidity interfaces governs both systems. Extreme anisotropy forces the transport cone to flatten and skim the interface. On the shape-space side this appears as directional filtering and cone collapse near binary collisions. On the GR side it appears as the one-way membrane behavior together with the uniqueness of stationary solutions (no-hair). Both are direct consequences of projector-level persistence."
- "Step 5 — Structural Isomorphism at the Persistent Level. Because both boundaries induce identical block structures in the stability spine, identical quadratic rank collapse of transverse projectors, identical high-χ transverse suppression, and identical canonical lifts through the Hierarchy Principle, the admissible-channel geometry on ∂Σ4 and on H+ are isomorphic at the level of the emergent Grassmannian projector bundle and its associated quantum geometric tensor Q_Π = g_Π + (i/2) Ω_Π. Unifying these components provides the rigorous conclusion that “no-hair” erasure, reflectionless absorption, and relational multi-body obstruction are identical structural manifestations of the Principle of Structural Persistence applied to extreme rigidity interfaces."

(The quantum geometric tensor is printed in the text layer as "QΠ = gΠ + 2i ΩΠ", which is the usual text-extraction rendering of the stacked fraction i/2; the J06 graphical abstract image prints "Q_Π = g_Π + (i/2) Ω_Π".)

### NEW: FIG. 1 (four-tier lift diagram)
Two columns, "Shape Boundary ∂Σ4" and "Kerr Horizon Patch H+", joined by horizontal labels "Isomorphic Duals", "Spectral Equivalence", "Grassmannian Lift", "Master Invariant Identity" (the text layer in J03 shows overlapping words "Complete … Identity Master … Invariant" at the last rung, i.e. the label overprints in this version); vertical maps L0, L1, L2.
- Level I0 (Raw Fields): "Jacobi fields J near B_ij (Singular reorientation)" | "Local static fields near H+ (Proper acceleration → ∞)"
- Level I1 (Covariant Currents): J^μ_color = Σ q_{c,i} W'^μ_i | J^μ_mem = (1/4π) E_r
- Level I2 (Projector Subspaces): "Rank-1 Density P = N N^T" | "Coalesced QNM Projector Π_QNM"
- Level I3 (Persistent Geometry): "Pullback field g_ab = Φ(W, W')" | "Pseudospectral Ledger Q_Π"
- Caption: "FIG. 1. The formal four-tier structural lift diagram, demonstrating the step-by-step migration from fragile singular microstates (I0) up to the persistent geometric master invariants (I3) that bridge many-body shape manifolds and black hole event horizons."

### References (J03)
[1] Besson, Carballo, Pantelidou, Withers (same).

### Results inventory (J03)
- Theorem 1 (EP, unnamed) — Theorem. Theorem 2 (Topological Boundary Dictionary) — Theorem. Theorem 3 (Projector-Level Boundary Isomorphism) — Theorem. 45 numbered equations. 1 figure.

### Changes J02 → J03
- (a) Adds: Section X; Theorem 3 (Projector-Level Boundary Isomorphism) with the projector-level dictionary Eqs. (42)–(45); the five-step proof; the phrases "operator-first", "Hierarchy Principle of Structural Persistence", "four-tier lift L_k : I_k → I_{k+1}", "extreme rigidity interfaces", "dancing needle", "tip–tail asymmetry", "membrane-paradigm effective description"; A_intr = Π_H ∘ K(W, W'); the refraction law R1 sin²θ1 = R2 sin²θ2; Q_Π = g_Π + (i/2)Ω_Π; κ_eff "Effective Horizon Stiffness … (proper acceleration divergence)"; FIG. 1 with J^μ_mem = (1/4π)E_r and Π_QNM.
- (b) Drops: nothing.
- (c) Changes: nothing in the earlier sections. Note the document now holds two boundary theorems side by side (Theorem 2 with κ_surface, Theorem 3 with κ_eff).
- (d) Holds that no other version holds: nothing strictly unique in content — J04 carries the same text. Unique detail: the overprinted FIG. 1 label, and first-row figure wording "Jacobi fields J near B_ij" (J04 onward: "Jacobi deviation fields J near B_ij"). J03 and J04 are the only two versions that carry BOTH Theorem 2 (Topological Boundary Dictionary) and Theorem 3 (Projector-Level Boundary Isomorphism).

---

## J04 — `/home/claude/bh_recovery/text/Blackholes_and_Suns (4).txt` (PDF `Blackholes_and_Suns (4).pdf`)

- Read in full: YES (551 lines; PDF page 1 also viewed).
- Title as printed: **none.** Author line: **none.** Date: **none.** Abstract: **none.** The PDF's page 1 begins directly with "I. THE CANONICAL BASIS AND TANGENT BUNDLE CONSTRUCTION" under page number 1 (confirmed by viewing the PDF page).
- Pages: 9 (single-column wide layout; FIG. 1 on its own last page after the reference).
- Horizon mechanism name: **"The Barber Mechanism"** (Section VII; "The “barber” is the geometric filtering of stability.").

### Section list (J04)
I–X exactly as J03 (I Canonical Basis; II Jacobi-Driven Stability Spine + A with 1,2,3; III SU(3); IV EP Theorem; V Core Operator Pipeline; VI Pseudospectral Transients + A, B; VII Barber Mechanism; VIII Non-Abelian Gauge Pullback and Superradiance; IX The Unified Boundary Correspondence; X The Unified Boundary Correspondence via the Hierarchy Principle of Structural Persistence); Reference [1]; FIG. 1.

### Contents
Body is word-for-word J03: Eqs. (1)–(45); Theorem 1 (unnamed, Theorem); Theorem 2 (Topological Boundary Dictionary), Theorem; Theorem 3 (Projector-Level Boundary Isomorphism), Theorem; five-step proof; reference [1].

FIG. 1: same diagram, now cleanly set on its own page: first rung reads "Jacobi deviation fields J near B_ij (Singular reorientation)"; the bottom horizontal label reads "Master Invariant Identity". Same caption as J03.

### Changes J03 → J04
- (a) Adds: nothing in content. FIG. 1 wording "Jacobi deviation fields" (was "Jacobi fields").
- (b) Drops: the title, author line, affiliation, date and abstract (none printed in this file).
- (c) Changes: page layout (figure moved to last page, after the reference); FIG. 1 bottom label now legible as "Master Invariant Identity".
- (d) Holds that no other version holds: nothing unique in content. It is the last version that contains Section "IX. THE UNIFIED BOUNDARY CORRESPONDENCE" with Theorem 2 (Topological Boundary Dictionary), Eqs. (36)–(41) incl. the numbered A_boundary (40) and the propagator limit (41), and the last version that uses the name "Barber".

---

## J05 — `/home/claude/bh_recovery/text/Blackholes_and_Suns (5).txt` (PDF `Blackholes_and_Suns (5).pdf`)

- Read in full: YES (532 lines).
- Title / author / date / abstract: **none printed** (text begins at "I. THE CANONICAL BASIS AND TANGENT BUNDLE CONSTRUCTION" under page number 1, same as J04).
- Pages: 8.
- Horizon mechanism name: **"The Hairdresser Mechanism"** — first appearance. Section VII title: "THE HAIRDRESSER MECHANISM: HORIZON RANK COLLAPSE"; text: "The “Hairdresser” is the geometric filtering of stability."

### Section list (J05)
- I. THE CANONICAL BASIS AND TANGENT BUNDLE CONSTRUCTION
- II. THE JACOBI-DRIVEN STABILITY SPINE — A (1, 2, 3)
- III. NON-ABELIAN SU(3) COLOR-GAUGE EXTENSION
- IV. THE CURVATURE-INDUCED EXCEPTIONAL POINT THEOREM AND REFRACTION BREAKDOWN
- V. THE CORE OPERATOR PIPELINE
- VI. PSEUDOSPECTRAL TRANSIENTS AND THE BLACK HOLE SPINE — A, B
- VII. THE HAIRDRESSER MECHANISM: HORIZON RANK COLLAPSE
- VIII. NON-ABELIAN GAUGE PULLBACK AND SUPERRADIANCE
- IX. THE UNIFIED BOUNDARY CORRESPONDENCE VIA THE HIERARCHY PRINCIPLE OF STRUCTURAL PERSISTENCE
- X. POLARITON MASS-COUPLING MATRICES AND THE CHROMODYNAMIC EDGE (NEW)
- FIG. 1; Reference [1]

### Contents
- Sections I–III, V, VI (A and B), VIII: word-for-word as J04, Eqs. (1)–(19), (22)–(31), (34)–(35).
- Section IV: **Theorem 1 now carries a name: "Theorem 1 (Curvature-Induced Exceptional Point Theorem)."** Statement, Eq. (20), proof and Eq. (21) unchanged. Grade: Theorem.
- Section VII (Hairdresser): same text as the Barber section with the two word changes (title "HAIRDRESSER", and "The “Hairdresser” is the geometric filtering of stability."). Eqs. (32) K_horizon and (33) velocity collapse unchanged.
- Section IX: this is the former Section X. **"Theorem 2 (Projector-Level Boundary Isomorphism)."** Grade: Theorem. Statement word-for-word as J03/J04 Theorem 3. Dictionary now numbered **Eqs. (36)–(39)** (same four lines as J03 (42)–(45)). Five-step proof word-for-word as J03 (A_boundary matrix unnumbered; refraction law; Q_Π = g_Π + (i/2)Ω_Π; "commutative diagram of Figure 1").

### NEW: X. POLARITON MASS-COUPLING MATRICES AND THE CHROMODYNAMIC EDGE (verbatim; matrix form confirmed from the J06 PDF page 10, which prints the same passage)
"To map the Principle of Structural Persistence onto condensed-matter rigidity interfaces, we define the non-Hermitian polariton mass-coupling matrix M_polariton operating over hybridized light-matter fields Ψ_edge = (A⃗  u_phonon)^T:
- **Eq. (40):** M_polariton = [[ ω_c²(k_∥),  Ω_Rabi ],[ Ω_Rabi,  ω² − iγ_phonon + g_ep ∂u_phonon/∂x ]]
where Ω_Rabi tracks the dipole coupling density, and δB_n ⊃ ∂ω²/∂x² + g_ep · u_phonon defines the structural field modification zone (Δ_n). Evaluating the system eigenvalues near the non-normal Exceptional Point boundary reveals an acute rank collapse in the transverse tracking projectors. The allowed opening angles of incoming transport fields compress symmetrically as a function of the localized phonon field gradient. This drives the exact, coordinate-free angular trapping law at the quantum edge:
- **Eq. (41):** θ_lock = arctan( ξ_λ Δ_n ),  where  ξ_λ = 2 Ω_Rabi · m_c / ( ħ sqrt( ||[K, K^T]|| ) )
This confirms that the universal refraction constraint R1 sin²θ1 = R2 sin²θ2 scales invariant of system dimensions: at both macro-cosmological black hole horizons and micro-engineered atomic junctions, extreme field anisotropy collapses transport capacity, storing structural configuration states inside a flat, persistent non-normal ledger."
Grade: none given (source calls Eq. (41) "the exact, coordinate-free angular trapping law").

- FIG. 1: as J04 (sits in the middle of Section X in the page flow).
- Reference [1]: Besson et al. (same).

### Results inventory (J05)
- Theorem 1 (Curvature-Induced Exceptional Point Theorem) — Theorem. Theorem 2 (Projector-Level Boundary Isomorphism) — Theorem. 41 numbered equations. 1 figure.

### Changes J04 → J05
- (a) Adds: the name "Hairdresser"; the bracketed name on Theorem 1; Section X (polariton matrix Eq. (40), θ_lock law Eq. (41), ξ_λ, Ω_Rabi, g_ep, γ_phonon, Δ_n, δB_n, m_c).
- (b) Drops: the whole of old Section IX "THE UNIFIED BOUNDARY CORRESPONDENCE": Theorem 2 (Topological Boundary Dictionary), its dictionary lines (Binary Squeeze Boundary ⟺ Horizonal Obstructive Screen; Inertial Mass-Squeeze Factor (2λ) ⟺ Horizon Surface Gravity (κ_surface); Quadratic Rank SVD Collapse (O(Δw²)) ⟺ Black Hole “No-Hair” Absolutism; Zero Back-Coupling Entry (C_lower → 0) ⟺ Horizonal One-Way Valve Mechanics), the numbered A_boundary (40), "χ = 2κ_surface on H+", the propagator limit (41), "||v_⊥(t)|| ∝ χ^{−1/2} → 0", and the sentences "category-theoretic duals" and "topologically and spectrally isomorphic". The name "Barber".
- (c) Changes: "Barber" → "Hairdresser" (title and one sentence). Theorem 3 → Theorem 2 (number only; still Theorem). Dictionary numbers (42)–(45) → (36)–(39). Section X → IX.
- (d) Holds that no other version holds: nothing unique in content (J06 carries all of it); it is the only untitled version with the Hairdresser name and the polariton section.

---

## J06 — `/home/claude/bh_recovery/text/Blackholes_and_Suns (6).txt` (PDF `Blackholes_and_Suns (6).pdf`)

- Read in full: YES (630 lines; PDF pages 2 and 10 also viewed).
- Title as printed: "Beyond the Event Horizon: An Operator-First Theory of Persistent Geometry and Black Hole Dynamics" — first appearance of this title.
- Author line as printed: "Jeromie N. Beasley¹"; "¹Program in Complex Spectral Geometry and Projector Dynamics"
- Date as printed: "(Dated: July 2, 2026)"
- Pages: 10.
- Horizon mechanism name: **"The Hairdresser Mechanism"**; new object **"Horizon Hairdresser Operator D_H"**.

### Front matter (printed where an abstract would sit; no "Abstract" label) — verbatim
Line set as a heading/first paragraph: "Black Holes as Persistent Operator Filters: An Operator-First Framework for Horizon Geometry, Pseudospectral Dynamics, and Structural Compression"

"Black holes are traditionally described through spacetime geometry, where horizons, geodesics, and quasi-normal modes arise as consequences of the Einstein field equations. In this work we investigate the complementary viewpoint that many observable properties of black holes can instead be formulated at the level of transport operators acting on admissible subspaces. Rather than beginning with geometry, we begin with a non-normal transport operator whose spectral projectors define the dynamically persistent directions of propagation.

Within this framework the event horizon is interpreted as an extreme rigidity interface at which unstable transport channels undergo progressive operator compression while persistent projector bundles remain analytically well-defined. The resulting geometric quantities—including effective transport metrics, Berry curvature, spectral projectors, and zeta-regularized spectral ledgers—emerge from the continuation of these invariant subspaces rather than being imposed a priori.

The operator decomposition naturally separates transport, obstruction, and non-normal sectors, providing a unified description of transient pseudospectral amplification, superradiant energy extraction, quasi-normal mode persistence, and horizon filtering. We propose that the classical no-hair property may be interpreted as the external manifestation of persistent projector reduction, in which only structurally stable operator channels remain observable while transient microscopic information is compressed beyond the horizon.

Although exploratory in scope, this operator-first perspective provides a common mathematical language connecting non-selfadjoint spectral theory, Grassmannian geometry, projector continuation, and black-hole perturbation theory. Rather than replacing the geometric formulation of general relativity, it offers an alternative structural description in which spacetime geometry appears as a persistent consequence of transport dynamics."

### Section list (J06)
- I. INTRODUCTION (NEW)
- II. THE CANONICAL BASIS AND TANGENT BUNDLE CONSTRUCTION
- III. THE JACOBI-DRIVEN STABILITY SPINE — A. Explicit Matrix Derivation of the Stability Operator (1, 2, 3)
- IV. NON-ABELIAN SU(3) COLOR-GAUGE EXTENSION
- V. THE CURVATURE-INDUCED EXCEPTIONAL POINT THEOREM AND REFRACTION BREAKDOWN
- VI. THE CORE OPERATOR PIPELINE
- VII. PSEUDOSPECTRAL TRANSIENTS AND THE BLACK HOLE SPINE — A. Transient Plateaus and Energy Packets; B. Transient Plateaus and Energy Packets on Shape Manifolds
- VIII. THE HAIRDRESSER MECHANISM: HORIZON RANK COLLAPSE (rewritten)
- IX. NON-ABELIAN GAUGE PULLBACK AND SUPERRADIANCE
- X. THE UNIFIED BOUNDARY CORRESPONDENCE VIA THE HIERARCHY PRINCIPLE OF STRUCTURAL PERSISTENCE
- XI. POLARITON MASS-COUPLING MATRICES AND THE CHROMODYNAMIC EDGE
- FIG. 1 (Graphical Abstract, NEW), FIG. 2 (four-tier lift), Reference [1]

### I. INTRODUCTION (NEW) — key statements verbatim
- "Black holes occupy a unique position in modern physics. They are simultaneously exact solutions of general relativity, laboratories for quantum field theory in curved spacetime, and testing grounds for ideas ranging from thermodynamics to quantum information."
- "At the same time, many of the mathematical tools used to analyze black-hole perturbations are fundamentally operator-theoretic. … Recent work on pseudospectra has demonstrated that significant physical behavior may occur even when classical eigenvalue analysis predicts stability, highlighting the importance of non-normal operator theory in relativistic systems."
- "This observation motivates a simple but fundamental question: Can black-hole geometry itself be viewed as an emergent manifestation of persistent operator structure?"
- "Rather than beginning with spacetime geometry and deriving operators, we reverse the logical direction. We begin with an effective transport operator describing admissible propagation channels. Spectral projectors associated with this operator are lifted onto Grassmannian manifolds, where projector continuation defines intrinsic transport metrics and Berry curvature. Geometry therefore appears not as an assumed background, but as the regularized description of persistent transport."
- "Within this perspective the event horizon assumes a new interpretation. Instead of functioning solely as a causal boundary, it becomes an extreme operator interface. Near the horizon increasing anisotropy and non-normality amplify transient dynamics while simultaneously compressing unstable transport directions into lower-dimensional persistent subspaces. Individual eigenvectors may become highly sensitive or defective, yet higher-rank spectral projectors remain continuous under appropriate spectral separation conditions. The physically observable exterior is therefore governed by persistent operator bundles rather than isolated state vectors."
- "This viewpoint naturally unifies several phenomena that are often treated independently. Superradiant amplification appears through the weighted transport sector of the effective operator. Transient growth follows from pseudospectral bulges generated by non-normality. Quasi-normal modes correspond to persistent projector evolution rather than isolated eigenvectors alone. The classical no-hair property may be reinterpreted as an operator-compression principle in which repeated horizon filtering removes unstable transport channels while preserving only those invariant structures that remain externally measurable."
- "The framework developed here is intended as a mathematical reformulation rather than a replacement for general relativity. The standard Kerr geometry, perturbation equations, and conservation laws remain intact. Our objective is instead to investigate whether projector persistence, non-normal transport theory, and spectral continuation provide a unifying operator language for understanding horizon dynamics and black-hole observables."
- "The paper proceeds by constructing an effective transport operator adapted to the near-horizon region, deriving its projector geometry, analyzing its pseudospectral behavior, and exploring the resulting implications for quasi-normal modes, superradiance, and persistent horizon invariants. Throughout, we distinguish established mathematical results from speculative extensions, emphasizing which conclusions follow directly from operator theory and which are proposed as new hypotheses for future investigation."

### FIG. 1 — Graphical Abstract (NEW; raster image, page 2; viewed)
Caption verbatim: "FIG. 1. Graphical Abstract. Operator-first framework for black hole dynamics. The figure summarizes the core concepts developed in this work: (1) emergence of geometry from persistent transport operators, (2) pseudospectral transients and non-modal amplification, (3) the Hairdresser mechanism of horizon rank collapse, (4) superradiance driven by non-Abelian color currents, (5) the unified boundary correspondence between shape-space collision hypersurfaces and black hole horizons, and (6) the four-tier structural lift connecting fragile microstates to persistent geometric invariants."

Six numbered panels, as far as legible in the page image (small type; items marked "(small)" were read with difficulty):
1. "OPERATOR-FIRST FRAMEWORK — From Transport to Geometry": "Weighted Transport Operator A(w) = M^{-1} K M^{-1}" (small); boxes "Dominant Directions (Maximal Capacity) N(w)" → "Rank-1 Density P = N N^T" → "Spectral Projector Π (on Grassmannian)" → "Emergent Geometry g_Π, Ω_Π"; funnel labelled Raw Microstates (Fragile) / Projectors (Structure) / Geometry (Persistent) / Observables (Laws); footer "Physical laws = persistent channels where C(Δ) → 1".
2. "PSEUDOSPECTRA AND TRANSIENT GROWTH — Non-normal operators → transient energy amplification": pseudospectrum definition; "Maximum Transient Growth K_C = sup …"; plateau sketch "Plateau τ ∝ K_C" with "Modal Decay"; "Energy from Non-Orthogonal Modes" formula; footer "Cross-terms orchestrate cancellations → persistent energy packets".
3. "THE HAIRDRESSER MECHANISM (RANK COLLAPSE) — Boundary “haircut” = algebraic rank filtering": "Block Structure Near Horizon K_horizon = [[A_∥∥, E_shear],[0, 2λ]]"; quadrant labels "Parallel (Macroscopic Tracking)", "Shear (Coupling)", "0 — Zero Back-Coupling (Decoupled Normal Sector)", "Normal (High-Stiffness Squeeze)"; "Normal Sector Dynamics" with an oscillator equation (small); "Velocity Suppression ||v_⊥(t)|| ∝ 1/sqrt(2λ) → 0"; "Hairdresser Result: Asymmetries shaved off. Trajectories skim the horizon."
4. "SUPERRADIANCE FROM NON-ABELIAN CURRENTS": "Energy Extraction Rate" (the two-term dE/dt formula); "Direct Extraction Term — Alignment of color current with gauge field → positive work"; "Pseudospectral Driver — Rotation of non-normal commutator → advective pumping"; "Mechanism: Rotating BH + Color-Gauge Field (SU(3)), Color Current J^μ_color"; footer "Persistent channels protect amplification during plateau τ → superradiant peak".
5. "UNIFIED BOUNDARY CORRESPONDENCE": two-column dictionary "Shape Space Boundary ∂Σ4 (Binary Collision w_i → w_j)" ⟺ "Black Hole Horizon H+ (Δr → 0)"; rows "Binary Squeeze Boundary ⟺ Horizonal Obstructive Screen", "Inertial Mass-Squeeze Factor (2λ) ⟺ Horizon Surface Gravity (κ_surface)", "Quadratic Rank Collapse (O(Δw²)) ⟺ No-Hair Absolutism", "Zero Back-Coupling Entry (C_lower → 0) ⟺ One-Way Valve Mechanics"; "Identical Boundary Operator Form A_boundary = [[0, I, 0, 0],[−A_∥∥, 0, −E_shear, 0],[0,0,0,1],[0,0,−χ,0]]" with "χ = 2λ (∂Σ4) = 2κ_surface (H+)"; footer "Structural, spectral, and topological duality → same persistence engine". (This panel reproduces the J02–J04 Theorem 2 "Topological Boundary Dictionary" wording, which is no longer in the body text of J06.)
6. "FOUR-TIER STRUCTURAL LIFT (FIG. 1)" — the lift diagram (Level I0 … I3; Color Current / Membrane Current J^μ_mem = (1/4π)E_r; Rank-1 Density / Coalesced QNM Projector Π_QNM; Pullback Metric g_ab = Φ(W, W') / Pseudospectral Ledger Q_Π = g_Π + (i/2)Ω_Π); footer "Emergent Laws Match — Persistent Geometry Isomorphic". The panel title itself says "(FIG. 1)" although in J06 the lift diagram is FIG. 2.

### Sections II–VII (J06)
Word-for-word the J05 Sections I–VI (shifted by one section number), Eqs. (1)–(31). Theorem 1 (Curvature-Induced Exceptional Point Theorem), Theorem, unchanged, in Section V. Core Operator Pipeline (Section VI) unchanged, Eqs. (22)–(24).

### VIII. THE HAIRDRESSER MECHANISM: HORIZON RANK COLLAPSE (rewritten; verbatim)
"The classical “no-hair” theorem dictates the rapid erasure of structural asymmetries near a black hole horizon. We derive this “haircut” not as the destructive annihilation of information, but as an extreme algebraic rank compression within the boundary layer of the self-consistent stiffness matrix K(W, W') driven by an active persistence filter.

Let H be a non-normal spacetime transport operator, and let Π_p be the spectral projector onto the persistent admissible subspace satisfying the temporal stability criteria established in Section V. The Horizon Hairdresser Operator D_H is the induced non-normal operator compression mapping:
- **Eq. (32):** D_H(X) = Π_p X Π_p
acting on an arbitrary structural field descriptor X ∈ H_states.

Decomposing the tangent bundle into parallel shape deformations j_∥ and the normal horizon-piercing shear mode j_⊥, the boundary limit of the stiffness spine takes the exact block-triangular form:
- **Eq. (33):** K_horizon = [[A_∥∥, E_shear],[0, 2λ]]
where λ → +∞ is the mass-density inertial squeeze eigenvalue. Because the lower-left back-coupling block vanishes identically under the compression (C_lower → 0), the normal state space forms an uncoupled invariant sub-bundle. The normal propagator operates as an extreme high-frequency oscillator whose velocity amplitude scales inversely with the squeeze parameter:
- **Eq. (34):** ||v_⊥(t)|| ∝ 1/sqrt(2λ) → 0
The “Hairdresser” is the formal geometric filtering of stability. Asymmetric structural variations (quantum fields or configuration “hair”) cannot be supported by the degenerate boundary spectrum. The application of D_H(X) systematically prunes away these transient, non-orthogonal components. This forces all incoming trajectories to flatten and skim parallel to the horizon surface, locking the structural information entirely within the persistent phase relationships of the projector ledger."
(The source's cross-reference says "Section V"; in J06 Section V is the Exceptional Point theorem and Section VI is the Core Operator Pipeline. Recorded as printed.)

### IX. NON-ABELIAN GAUGE PULLBACK AND SUPERRADIANCE
Unchanged text; commutator equation is now **Eq. (35)**, rate formula **Eq. (36)**.

### X. THE UNIFIED BOUNDARY CORRESPONDENCE VIA THE HIERARCHY PRINCIPLE OF STRUCTURAL PERSISTENCE
**Theorem 2 (Projector-Level Boundary Isomorphism).** Grade: Theorem. Statement and five-step proof word-for-word as J05; dictionary now **Eqs. (37)–(40)**; Step 3 now cites "the commutative diagram of Figure 2".

### XI. POLARITON MASS-COUPLING MATRICES AND THE CHROMODYNAMIC EDGE
Word-for-word as J05 Section X; M_polariton is **Eq. (41)**, θ_lock law **Eq. (42)** (page 10 of the PDF viewed: M_polariton = [[ω_c²(k_∥), Ω_Rabi],[Ω_Rabi, ω² − iγ_phonon + g_ep ∂u_phonon/∂x]]; δB_n ⊃ ∂ω²/∂x² + g_ep · u_phonon; θ_lock = arctan(ξ_λ Δ_n), ξ_λ = 2Ω_Rabi · m_c / (ħ sqrt(||[K, K^T]||))).

### FIG. 2
The four-tier lift diagram (same as J04/J05 FIG. 1), caption text unchanged but numbered "FIG. 2."

### References (J06)
[1] Besson, Carballo, Pantelidou, Withers (same single reference).

### Results inventory (J06)
- Theorem 1 (Curvature-Induced Exceptional Point Theorem) — Theorem. Theorem 2 (Projector-Level Boundary Isomorphism) — Theorem. Horizon Hairdresser Operator D_H — introduced in running text (no Definition environment; no grade given). 42 numbered equations. 2 figures.

### Changes J05 → J06
- (a) Adds: the title "Beyond the Event Horizon: An Operator-First Theory of Persistent Geometry and Black Hole Dynamics"; author/affiliation/date lines restored; the four-paragraph front text headed "Black Holes as Persistent Operator Filters: …"; Section I Introduction; FIG. 1 Graphical Abstract; the Horizon Hairdresser Operator D_H(X) = Π_p X Π_p (Eq. 32); phrases "not as the destructive annihilation of information", "active persistence filter", "(C_lower → 0)", "(quantum fields or configuration “hair”)", "prunes away", "projector ledger"; "zeta-regularized spectral ledgers" (front text only); the statement of intent "mathematical reformulation rather than a replacement for general relativity" and "we distinguish established mathematical results from speculative extensions".
- (b) Drops: nothing from the J05 body.
- (c) Changes: all section numbers +1; equation numbers from the Hairdresser section on are +1 (K_horizon 32→33, velocity 33→34, commutator 34→35, rate 35→36, dictionary 36–39 → 37–40, polariton 40→41, θ_lock 41→42); lift diagram FIG. 1 → FIG. 2; "rank collapse" → "rank compression" in the first Hairdresser paragraph (section title still says "RANK COLLAPSE"); "The “Hairdresser” is the geometric filtering of stability" → "is the formal geometric filtering of stability". Tone change between front matter and body: front text says "We propose that the classical no-hair property may be interpreted as…" and "Although exploratory in scope", while the body keeps "We derive this “haircut”…" and Theorem-grade statements (see Disagreements).
- (d) Holds that no other version holds: see the list "Holds that no other version holds — resolved per version" under the cross-version table near the end.


---

## J07 — `/home/claude/bh_recovery/text/BLKHOLE.txt` (PDF `drive/older/BLKHOLE.pdf`)

- Read in full: YES (639 lines).
- Title as printed: "Beyond the Event Horizon: An Operator-First Theory of Persistent Geometry and Black Hole Dynamics"
- Author line as printed: "Jeromie N. Beasley¹"; "¹Program in Complex Spectral Geometry and Projector Dynamics"
- Date as printed: "(Dated: July 2, 2026)" (PDF created 2 Jul 15:34 Central — a gap of about seven and a half hours after J06; the filename changes from Blackholes_and_Suns to BLKHOLE).
- Pages: 10.
- Horizon mechanism name: the SECTION is now "PERSISTENT OPERATOR COMPRESSION AND HORIZON RANK COLLAPSE"; the operator is renamed **"Horizon Compression Operator D_H"**; "hairdresser" survives as an informal word ("Informally, this compression acts as a mathematical “hairdresser,”…"), in the FIG. 1 caption ("the Hairdresser mechanism of horizon rank collapse") and in the FIG. 3 caption ("Horizon Hairdresser Interface Mechanics under extreme inertial squeeze.").

### Abstract (verbatim; a real abstract block again)
"We formalize an alternative, operator-first field theory demonstrating that many observable properties of black holes and relational multi-body mechanics can be unified at the level of non-normal transport operators acting on admissible subspaces. Rather than postulating a smooth spacetime metric a priori, we show that classical geometry emerges intrinsically from the spectral projection of a non-selfadjoint stability spine onto persistent invariant subspaces of an ambient Grassmannian manifold. We derive the explicit 5 × 5 stiffness components across the pure shape and shear sectors of the 5D stratified shape manifold Σ4. By extending the framework to encompass non-Abelian SU(3) symmetries, we prove that spatial anisotropy and internal gauge fields act as co-equal drivers of spectral defectiveness. Finally, we establish that dissipative event horizons function as extreme rigidity interfaces that execute a continuous rank collapse, trapping incoming configurations inside a flat, reflectionless, boundary-skimming 2D non-normal phase ledger."

### Section list (J07)
- I. INTRODUCTION
- II. THE CANONICAL BASIS AND TANGENT BUNDLE CONSTRUCTION
- III. THE JACOBI-DRIVEN STABILITY SPINE — A. Explicit Matrix Derivation of the Stability Operator (1. The Pure Shape Block (2 × 2); 2. The Pure Shear Block (3 × 3); 3. The Shear Coupling Block / Refraction Terms (2 × 3))
- IV. NON-ABELIAN SU(3) COLOR-GAUGE EXTENSION
- V. THE CURVATURE-INDUCED EXCEPTIONAL POINT THEOREM
- VI. TRANSIENT PLATEAUS AND ENERGY PACKETS ON SHAPE MANIFOLDS
- VII. POLARITON MASS-COUPLING MATRICES AND THE CHROMODYNAMIC EDGE
- VIII. PERSISTENT OPERATOR COMPRESSION AND HORIZON RANK COLLAPSE
- IX. THE UNIFIED BOUNDARY CORRESPONDENCE
- X. QUANTITATIVE NON-ABELIAN SUPERRADIANCE ENERGY FLUX
- Appendix A: Spectral Gap Stability and Projector Persistence Bounds (NEW)
- Reference [1]
- Figures: FIG. 1 Graphical Abstract; FIG. 2 Pseudospectral Transient Energy Profile on Σ4 (NEW); FIG. 3 Horizon Hairdresser Interface Mechanics (NEW); FIG. 4 four-tier lift.

**There is NO "Core Operator Pipeline" section in J07**, and no section "Pseudospectral Transients and the Black Hole Spine" (see "Drops" below).

### I. INTRODUCTION (J07)
The Introduction is now the four paragraphs that formed the J06 front text (not the J06 Introduction), with two wording changes:
- "arise as direct consequences of the Einstein field equations" (J06 front text: "arise as consequences").
- "We propose an operator-theoretic interpretation of the classical no-hair theorem, in which only structurally stable operator channels remain observable while transient microscopic information is compressed beyond the horizon." (J06 front text: "We propose that the classical no-hair property may be interpreted as the external manifestation of persistent projector reduction, in which only …").
- Still present: "Although exploratory in scope, this operator-first perspective provides a common mathematical language…"; "zeta-regularized spectral ledgers".
- FIG. 1 Graphical Abstract with the same six-item caption as J06 (the caption still names "the Hairdresser mechanism of horizon rank collapse").

### II. THE CANONICAL BASIS AND TANGENT BUNDLE CONSTRUCTION
Same text; the trace constraint now carries a citation and its own number: "subject to the absolute trace constraint [1]:  **Eq. (1):** Σ_{i=1}^{3} w_i = 1".
- **Eq. (2):** E1, E2 (as before). **Eq. (3):** E3, E4. **Eq. (4):** E5 (same matrices as before, split over two numbered displays).

### III. THE JACOBI-DRIVEN STABILITY SPINE
- **Eq. (5):** ∇_t² J + R(J, W')W' + ∇²U(W) · J = 0.
- **Eq. (6):** ∇_t Y = A_Jacobi(W) Y, A_Jacobi = [[0, I_5],[−K(W, W'), 0]].
- NEW wording: "where K(W, W') is the 5×5 total stability stiffness tensor representing the compressed shape-space projection of the total stability operator:
  - **Eq. (7):** K_ab(W, W') = ⟨E_a, R(·, W')W' E_b⟩_Frob + ⟨E_a, ∇²U(W) E_b⟩_Frob"
- A.1 Pure Shape Block: **Eq. (8)** K11, **Eq. (9)** K22, **Eq. (10)** K12 — same expressions as J00 Eqs. (5)–(7).
- A.2 Pure Shear Block — NEW lead-in: "The shear modes are mediated by the geometric denominators of the principal frame connection Ω_ij = w'_ij / (w_i − w_j), mixing with the off-diagonal mass-potential Hessian terms H_ij = ∂²U/∂X_ik ∂X_jl |_off-diag:" then **Eq. (11)** K33, **Eq. (12)** K44, **Eq. (13)** K55 (same expressions as J00 Eqs. (8)–(10)), followed by the NEW line "where T(W) = diag(t1, t2, t3) is the spatial anisotropic mass-inertia tensor."
- A.3 Shear Coupling Block / Refraction Terms: **Eqs. (14)–(19)** K13, K14, K15, K23, K24, K25 — same expressions as J00 Eqs. (11)–(16).

### IV. NON-ABELIAN SU(3) COLOR-GAUGE EXTENSION (expanded; verbatim)
"The non-normality of the baseline stability spine has been shown to depend strictly on the spatial anisotropy of the mass-inertia tensor T(W). To determine whether non-normal transport is an intrinsic property of geometric stratification rather than an artifact of gravitational setups, we elevate the scalar mass-kinematics to a gauge-extended field landscape. By introducing an internal SU(3) color-charge symmetry, we test the persistence framework against non-Abelian degree-of-freedom expansions.
Let each body carry an internal color-charge vector q_{c,i} taking values in the Lie algebra su(3). The spatial inertia tensor is canonically updated to a gauge-extended operator T_ij(W, q_c), where the localized metric tracking field incorporates the dynamic color-exchange trace:
- **Eq. (20):** T_ij(W, q_c) = T_ij(W) · I_3 + α_s Σ_{a=1}^{8} Tr( λ^a q_{c,i} ⊗ q†_{c,j} )
where α_s is the strong coupling constant and λ^a are the standard Gell-Mann matrices. The baseline space derivative is replaced by the non-Abelian color-covariant derivative D_t = ∇_t − i g_s A_μ W'^μ. The total stability matrix picks up an explicit color-magnetic field curvature contribution driven by the field strength tensor F_μν = [D_μ, D_ν]:
- **Eq. (21):** K_color := R(·, W')W' + D²U(W, q_c) + g_s F(·, W') q_c
The non-normality of the stability system is now generated co-equally by spatial mass distribution asymmetry and internal color-charge commutation metrics:
- **Eq. (22):** ||[K, K^T]|| ∝ Σ_{i<j} (t_i − t_j)² · f(w) + g_s² Σ_{a=1}^{8} || [q^a_{c,i}, q^a_{c,j}] ||²"

### V. THE CURVATURE-INDUCED EXCEPTIONAL POINT THEOREM (title shortened; proof rewritten)
"We treat the geometric boundaries of the system (such as binary collision walls B_ij or horizonal black hole interfaces) under a unified, non-linear pullback metric regime where the manifold metric g(t) is generated dynamically by the active transport fields:"
- **Eq. (23):** g_ab(t) = ⟨E_a, T(W)E_b⟩_Frob + γ · Tr( A_Jacobi Y Y^T A_Jacobi^T ), γ > 0 "the backreaction coupling constant".

**Theorem V.1.** Grade: Theorem (section-numbered; no bracketed name in J07). Statement word-for-word as before, with **Eq. (24):** lim_{t→t_col} |R_Ricci(t)| → ∞ ⟺ det(∂Φ/∂Y) = 0, and "At this critical interface, the operator degenerates into a non-diagonalizable size-2 Jordan block, forcing the normal components of the transport field to vanish identically."

Proof (NEW long form; verbatim): "Without loss of generality, let the boundary layer be approached along the binary constraint w1 → w2. We separate the tangent space into the parallel sub-bundle T B12 (spanned by E1, E2, E4, E5) and the normal sub-bundle T^⊥ B12 (spanned by E3). Reordering the state vector into parallel and normal components (j_∥  j_⊥)^T, the stiffness operator takes the block form:
- **Eq. (25):** K(W, W', q_c) = [[A_∥∥, E_shear],[C_lower − M_color, K33]]
where M_color is the explicit non-Abelian color-torque matrix acting as a confinement shield. For a global color singlet (white matter), M_color = 0. As the collision boundary is reached, K33 → 2λ, where λ → +∞ is the extreme mass-density squeeze eigenvalue driving the gravitational potential spike.
We isolate the boundary scaling behavior by applying the non-normal rescaling matrix S = diag(1, 1, 1, 1, Δw), where Δw = w1 − w2 → 0:
- **Eq. (26):** lim_{W→B12} S^{-1} K S = [[A_∥∥, lim(Δw · E_shear)],[lim (1/Δw) C_lower, 2λ]]
Because the lower-left coupling block C_lower is driven by the parallel projection of the collision boundary constraint, its entries vanish quadratically at the rate O(Δw²). Thus, lim (1/Δw) C_lower = 0, forcing the total first-order transport matrix A_Jacobi into an exact, non-heuristic block-triangular form:
- **Eq. (27):** A_Jacobi^(boundary) = [[0, I_4, 0, 0],[−A_∥∥, 0, −E_shear, 0],[0, 0, 0, 1],[0, 0, −2λ, 0]]
Because the lower-left coupling block vanishes identically, the normal state subspace Y_⊥ = (j_⊥  v_⊥)^T decouples into an independent invariant sub-bundle. The corresponding normal eigenvalues are purely imaginary, high-frequency pairs μ_⊥ = ± i sqrt(2λ). Propagating the normal state via the matrix exponential yields:
- **Eq. (28):** exp( [[0, 1],[−2λ, 0]] t ) = [[cos(√(2λ) t), (1/√(2λ)) sin(√(2λ) t)],[−√(2λ) sin(√(2λ) t), cos(√(2λ) t)]]
As λ → +∞, the oscillation frequency becomes infinite while the allowed normal velocity amplitude collapses symmetrically:
- **Eq. (29):** |v_⊥(t)| ∝ 1/sqrt(2λ) → 0
The transport wavefront has its transverse kinetic energy erased by the infinite-frequency micro-vibrational hum of the self-consistent metric backreaction. The 5D transport cones flatten entirely parallel to T B_ij, executing continuous kinematic refraction along the boundary layer interface, completing the proof."

### VI. TRANSIENT PLATEAUS AND ENERGY PACKETS ON SHAPE MANIFOLDS
This is the former subsection B promoted to a section (the former subsection A and the pseudospectrum/Kreiss lead-in are gone).
- **Eq. (30):** ⟨J, Y⟩_{H^k(Σ4)} = Σ_{j=0}^{k} ∫_{Σ4} G^{a1…bj} ( D_{a1…aj} J^m g_mn(t) D_{b1…bj} Y^n ) sqrt(|g|) d⁵w  (the index string on G is printed "a1…bj" here; earlier versions print "a1…aj b1…bj").
- Text as before: overlap matrix ⟨φ_n, φ_m⟩_{H^1(Σ4)} = Δ_nm ≠ δ_nm; "extended plateau duration τ ∝ K_C" — but K_C (the Kreiss constant) is no longer defined anywhere in J07, because Eq. (26) of J06 was removed.
- **Eq. (31):** ||J(t)||²_{H^1(Σ4)} = Σ_n |c_n|² e^{2 Im(ω_n) t} + Σ_{n≠m} c_n* c_m e^{i(ω_n* − ω_m) t} Δ_nm
- "The non-orthogonal cross-terms [1] Δ_nm act as a phase-directed energy buffer. This proves that many-body shape manifolds support identical persistent non-modal transient wave packets as dissipative black hole horizons, lifting structural persistence to a universal, category-theoretic invariant of non-normal transport systems." (citation [1] newly attached).
- NEW **FIG. 2**: plot titled "Pseudospectral Transient Energy Profile on Σ4"; vertical axis "Field Energy (|J(t)|²_{H¹})" with ticks 0, 0.5, 1; horizontal axis "Time (t)" with ticks 0, 2, 4, 6, 8, 10; legend "Orthogonal Decay (Δ_nm = 0)" and "Non-Normal Plateau (Δ_nm ≠ 0)"; in-plot label "Persistence Window τ". Caption: "FIG. 2. Evolution profile contrasting standard self-adjoint orthogonal decay against our non-normal phase-directed transient plateau (τ)."

### VII. POLARITON MASS-COUPLING MATRICES AND THE CHROMODYNAMIC EDGE
Word-for-word as J05/J06 (moved forward to sit before the horizon section). **Eq. (32):** M_polariton = [[ω_c²(k_∥), Ω_Rabi],[Ω_Rabi, ω² − iγ_phonon + g_ep ∂u_phonon/∂x]]; δB_n ⊃ ∂ω²/∂x² + g_ep · u_phonon; **Eq. (33):** θ_lock = arctan(ξ_λ Δ_n), ξ_λ = 2Ω_Rabi · m_c / (ħ sqrt(||[K, K^T]||)). Closing sentence on R1 sin²θ1 = R2 sin²θ2 unchanged.

### VIII. PERSISTENT OPERATOR COMPRESSION AND HORIZON RANK COLLAPSE (verbatim)
"The classical “no-hair” theorem dictates the rapid erasure of structural asymmetries near a black hole horizon. Within this framework, we propose an operator-theoretic interpretation of this phenomenon, viewing the “haircut” not as the destructive annihilation of information, but as an instance of extreme algebraic rank compression within the boundary layer of the self-consistent stiffness matrix K(W, W') driven by an active persistence filter. Informally, this compression acts as a mathematical “hairdresser,” pruning transient degrees of freedom while preserving the persistent operator structure.
Let H be a non-normal spacetime transport operator, and let Π_p be the spectral projector onto the persistent admissible subspace satisfying the temporal stability criteria established in Section V. The Horizon Compression Operator D_H is the induced non-normal operator compression mapping:
- **Eq. (34):** D_H(X) = Π_p X Π_p
acting on an arbitrary structural field descriptor X ∈ H_states.
Decomposing the tangent bundle into parallel shape deformations j_∥ and the normal horizon-piercing shear mode j_⊥, the boundary limit of the stiffness spine demonstrates an exact block-triangular form:
- **Eq. (35):** K_horizon = [[A_∥∥, E_shear],[0, 2λ]]
where λ → +∞ is the mass-density inertial squeeze eigenvalue. Because the lower-left back-coupling block vanishes identically under the compression (C_lower → 0), the normal state space forms an uncoupled invariant sub-bundle. The normal propagator operates as an extreme high-frequency oscillator whose velocity amplitude scales inversely with the squeeze parameter:
- **Eq. (36):** ||v_⊥(t)|| ∝ 1/sqrt(2λ) → 0
Asymmetric structural variations cannot be supported by the degenerate boundary spectrum. The application of D_H(X) systematically prunes away these transient, non-orthogonal components, demonstrating how incoming trajectories flatten and skim parallel to the horizon surface."
- NEW **FIG. 3**: small drawing with labels "Horizon Edge" and "C_lower → 0". Caption: "FIG. 3. Horizon Hairdresser Interface Mechanics under extreme inertial squeeze."

### IX. THE UNIFIED BOUNDARY CORRESPONDENCE
Intro paragraph as before ("We embed the correspondence … rather than at the level of fragile lower-level descriptors.").

**Proposition IX.1 (Projector-Level Boundary Correspondence).** Grade: **Proposition** (was "Theorem 2 (Projector-Level Boundary Isomorphism)" in J05/J06). Verbatim: "Let ∂Σ4 denote the boundary stratum of the five-dimensional shape space containing the binary collision hypersurfaces B_ij. Let H+ be a localized future event-horizon patch of a non-self-adjoint Kerr spacetime. Both arise as rigidity interfaces governed by a Jacobi-driven stability spine whose linearized dynamics are encoded in a stiffness operator K that admits the canonical block decomposition into shape, shear, and refraction-coupling blocks. Under the operator-first construction, the dominant eigenspace of the weighted transport operator lifts canonically to a spectral projector bundle Π on the Grassmannian. At both interfaces the lower-level descriptors become singular, while the higher-level projector bundle remains continuous. Consequently, ∂Σ4 and H+ demonstrate a structural correspondence at the level of the emergent admissible-channel geometry: they realize identical canonical lifts through the four-tier Hierarchy Principle of Structural Persistence."
- No proof is printed in J07. The four-line operational dictionary and the five-step proof are gone.
- **FIG. 4** (four-tier lift): top horizontal label now reads "Structural Correspondence" (was "Isomorphic Duals"); other labels as before ("Spectral Equivalence", "Grassmannian Lift", "Master Invariant Identity"); entries as before (Jacobi deviation fields J near B_ij (Singular reorientation) / Local static fields near H+ (Proper acceleration → ∞); J^μ_color = Σ q_{c,i} W'^μ_i / J^μ_mem = (1/4π)E_r; Rank-1 Density P = N N^T / Coalesced QNM Projector Π_QNM; Pullback field g_ab = Φ(W, W') / Pseudospectral Ledger Q_Π). Caption as printed: "FIG. 4. FIG. 1. The formal four-tier structural lift diagram, demonstrating the step-by-step migration from fragile singular microstates (I0) up to the persistent geometric master invariants (I3) bridging multi-body shapes and black hole event horizons." (the stray "FIG. 1." is in the source.)

### X. QUANTITATIVE NON-ABELIAN SUPERRADIANCE ENERGY FLUX
"When a net color-charge current J^μ_color = Σ_i q_{c,i} W'^μ_i breaks global singlet symmetry, the system undergoes transient superradiant amplification. Differentiating the total H¹(Σ4) field energy density and substituting the color-covariant Wong-type stability equations yields the exact energy extraction rate formula:
- **Eq. (37):** dE/dt = α_s ∫_{Σ4} Tr( J^μ_color F_μν W'^ν ) |J|² sqrt(|g|) d⁵w + γ ∫_{Σ4} Tr( [D_t K, K^T] · (J J†) ) sqrt(|g|) d⁵w
where F_μν is the Lie-algebra valued SU(3) field strength tensor. The first term dictates the direct variational extraction of energy from the rotating non-Abelian gauge background, which becomes strictly positive under current-field alignment. The second term represents the advective pseudospectral driver generated by the real-time rotation of the non-normal commutator [K, K^T]. This dual-engine mechanism guarantees that even within a modally stable regime (Im(ω_n) < 0), the structural persistence of the underlying subspace protects these transient channels, allowing macroscopic energy extraction to execute a massive superradiant peak throughout the plateau window τ before asymptotic decay sets in."
(Printed with single bars |J|² here; J02–J06 print ||J||². "real-time rotation" here; "time-dependent rotation" before.)

### Appendix A: Spectral Gap Stability and Projector Persistence Bounds (NEW; verbatim key text)
"We establish a rigorous, coordinate-free functional analysis proof demonstrating that the higher-rank spectral projector bundle Π remains stable under bounded non-normal perturbations, even when individual constituent eigenvectors become ill-conditioned or defective.
Let A be an unperturbed non-normal transport operator acting on the Hilbert space H, and let A′ = A + E be its perturbed counterpart, where E is a bounded perturbation operator such that |E| ≤ ε. Let Γ be a closed, isolated contour path in the complex plane C that encloses an isolated subset of the spectrum σ_Γ(A) ⊂ σ(A) containing the dominant eigenvalues of interest. We define the clear, distance-based spectral gap to the remainder of the spectrum as:
- **Eq. (A1):** δ_gap ≡ dist( Γ, σ(A) \ σ_Γ(A) ) > 0
The unperturbed and perturbed spectral projectors Π and Π′ are expressed via the Riesz Cauchy-integral formulation:
- **Eq. (A2):** Π = −(1/2πi) ∮_Γ (λI − A)^{-1} dλ,   Π′ = −(1/2πi) ∮_Γ (λI − A′)^{-1} dλ
For clarity of notation, we denote the unperturbed resolvent operator as R_A(λ) ≡ (λI − A)^{-1}."

**Lemma A.1 (Neumann Resolvent Bound).** Grade: Lemma. "If the perturbation operator norm satisfies the strict bounding condition |E| < ( sup_{λ∈Γ} |R_A(λ)| )^{-1}, then the perturbed resolvent operator (λI − A′)^{-1} exists for every λ ∈ Γ and satisfies the explicit inequality:
- **Eq. (A3):** |(λI − A′)^{-1}| ≤ |R_A(λ)| / ( 1 − |R_A(λ)| · |E| )"
Proof: "By factoring the perturbed resolvent generator, we invoke the standard algebraic identity: **Eq. (A4):** λI − A′ = λI − A − E = (λI − A)(I − R_A(λ)E). Taking the inverse yields (λI − A′)^{-1} = (I − R_A(λ)E)^{-1} R_A(λ). Because the operator norm satisfies the geometric convergence criterion |R_A(λ)E| ≤ |R_A(λ)| · |E| < 1, the middle term can be expanded as a uniformly convergent Neumann series: **Eq. (A5):** (I − R_A(λ)E)^{-1} = Σ_{k=0}^{∞} (R_A(λ)E)^k. Applying the triangle inequality to the expanded series and computing the geometric summation limit yields: **Eq. (A6):** |(λI − A′)^{-1}| ≤ Σ_{k=0}^{∞} |R_A(λ)|^k · |E|^k · |R_A(λ)| = |R_A(λ)| / (1 − |R_A(λ)| · |E|), which completes the analytical proof of the lemma."

"To package the localized non-normal pseudospectral amplification into a single, observable scalar condition number, we define the dimensionless growth factor:
- **Eq. (A7):** C_Γ ≡ sup_{λ∈Γ} |R_A(λ)| · δ_gap
Substituting the result of Lemma A.1 under the bounded condition ε < δ_gap / C_Γ, the perturbed resolvent is uniformly controlled along the contour path by |(λI − A′)^{-1}| ≤ C_Γ / (δ_gap − ε C_Γ). We utilize the classical resolvent identity, R_{A′}(λ) − R_A(λ) = R_A(λ) E R_{A′}(λ), to express the difference between the spectral projectors:
- **Eq. (A8):** Π′ − Π = −(1/2πi) ∮_Γ R_A(λ) E R_{A′}(λ) dλ
Taking the operator norm, applying the triangle inequality for integrals, and inserting our uniform resolvent bounds yields the quantitative Projector Drift Estimate:
- **Eq. (A9):** |Π′ − Π| ≤ (ℓ(Γ)/2π) sup_{λ∈Γ}|R_A(λ)| · |E| · sup_{λ∈Γ}|R_{A′}(λ)| ≤ [ ℓ(Γ) C_Γ² / ( 2π δ_gap (δ_gap − ε C_Γ) ) ] · ε
where ℓ(Γ) is the total arc length of the closed path Γ."

**Theorem A.2 (Projector Persistence Lipschitz Bound).** Grade: Theorem. "Let the structural Persistence Functional P(A, E) tracking subspace overlap be defined as P(A, E) ≡ 1 − |Π − Π′|. Under bounded non-normal perturbations satisfying ε < δ_gap / C_Γ, the persistence functional is strictly bounded below by:
- **Eq. (A10):** P(A, E) ≥ 1 − K_Γ ε,  where  K_Γ = ℓ(Γ) C_Γ² / ( 2π δ_gap (δ_gap − ε C_Γ) )"

Closing paragraph (verbatim): "Equation (37) establishes that, under bounded perturbations satisfying the spectral-gap hypothesis, the associated spectral projector varies continuously with perturbation size. Thus, projector persistence is quantitatively controlled even when individual eigenvectors become poorly conditioned or defective. Geometrically, this confirms that the mapping Π : A → Gr(k, H) from the space of non-normal operators to the Grassmannian projector manifold is locally Lipschitz continuous, verifying that higher-level geometric subspaces remain stable while lower-level state descriptors break down."
(As printed the closing paragraph says "Equation (37)"; in J07 Eq. (37) is the superradiance rate formula, and the bound just stated is (A10). Recorded as printed.)

### References (J07)
[1] J. Besson, J. Carballo, C. Pantelidou, and B. Withers, “Transients in black hole perturbation theory,” Front. Phys. 13, 1638583 (2025). — now cited in the text at the trace constraint (Section II) and at "non-orthogonal cross-terms [1]" (Section VI).

### Results inventory (J07)
- Theorem V.1 (EP / Ricci blow-up; unnamed) — Theorem.
- Proposition IX.1 (Projector-Level Boundary Correspondence) — Proposition; no proof printed.
- Lemma A.1 (Neumann Resolvent Bound) — Lemma, with proof.
- Theorem A.2 (Projector Persistence Lipschitz Bound) — Theorem (argument given in the text before it; no separate "Proof" block).
- Horizon Compression Operator D_H — introduced in running text; no grade given.
- 37 numbered body equations + (A1)–(A10). 4 figures.

### Changes J06 → J07
- (a) Adds: a true abstract (new wording: "alternative, operator-first field theory", "extreme rigidity interfaces that execute a continuous rank collapse", "flat, reflectionless, boundary-skimming 2D non-normal phase ledger"); numbered trace constraint with citation [1]; Eq. (7) K_ab = ⟨E_a, R(·,W')W' E_b⟩ + ⟨E_a, ∇²U E_b⟩; definitions Ω_ij = w'_ij/(w_i − w_j), H_ij = ∂²U/∂X_ik∂X_jl|_off-diag, T(W) = diag(t1,t2,t3); SU(3) motivation paragraph, D_t = ∇_t − i g_s A_μ W'^μ, F_μν = [D_μ, D_ν], K_color (Eq. 21); the long EP proof with M_color ("color-torque matrix acting as a confinement shield"; "For a global color singlet (white matter), M_color = 0"), K33 → 2λ, rescaling S = diag(1,1,1,1,Δw), Eqs. (25)–(28), "exact, non-heuristic block-triangular form", "infinite-frequency micro-vibrational hum"; FIG. 2 (energy profile plot); FIG. 3; Appendix A (Lemma A.1, C_Γ, Projector Drift Estimate, Theorem A.2, P(A,E) ≡ 1 − |Π − Π′|, K_Γ, Π : A → Gr(k, H) locally Lipschitz).
- (b) Drops:
  - **Section "THE CORE OPERATOR PIPELINE" entirely** — the text "We define the physical universe not through coordinates, but via a mass-and-momentum weighted non-normal transport operator A(w)…", P(t) = N(t)N(t)^T, g_ab = Tr(Π·[D_a, D_b]Π), **C(Δ) = Tr(Π(t)Π(t+Δ))**, and "Structural persistence outlasts vector stability. Observable physical laws emerge precisely from the channels where C(Δ) → 1."
  - Section "PSEUDOSPECTRAL TRANSIENTS AND THE BLACK HOLE SPINE" lead-in and subsection A: the non-selfadjoint horizon paragraph, E(t) = exp(−iA_Jacobi t), the pseudospectrum definition σ_ε, the Kreiss constant K_C lower bound, the radial Sobolev-k product ⟨ψ,φ⟩_{H^k}, the QNM sum ψ(t,r), "τ ∝ N_modes", the norm identity for ψ, "localized energy packets traveling along the future horizon".
  - The J06 Introduction text (the six paragraphs beginning "Black holes occupy a unique position in modern physics", the question "Can black-hole geometry itself be viewed as an emergent manifestation of persistent operator structure?", "mathematical reformulation rather than a replacement for general relativity", and "Throughout, we distinguish established mathematical results from speculative extensions…"); the heading line "Black Holes as Persistent Operator Filters: …".
  - The commutator relation with the Ricci term: ||[K, K^T]|| ∝ R_Ricci(Y, Y) + g_s² Σ ||[q^a_{c,i}, q^a_{c,j}]||², and the sentence "Elevating this persistence engine to include an internal SU(3) color-gauge symmetry adds a non-Abelian field strength term F_μν to the stiffness spine."
  - From the EP proof: the closing sentence "This confirms the intrinsic Quantum Geometric Tensor dissipation bounds: the system cannot penetrate directions of infinite geometric obstruction."
  - From the boundary section: the four-line projector-level dictionary (Binary Collision Hypersurface ⟺ Horizon as Rigidity Interface; Inertial Squeeze Factor λ (χ = 2λ) ⟺ Effective Horizon Stiffness κ_eff; Quadratic Rank Collapse ⟺ No-Hair Uniqueness + One-Way Causal Structure; Zero Back-Coupling ⟺ Block-Triangular Transport Cone); the entire five-step proof incl. A_intr = Π_H ∘ K(W, W'), "tip–tail asymmetry", "dancing needle", the in-proof refraction law, Q_Π = g_Π + (i/2)Ω_Π, and the "rigorous conclusion" sentence. "VIA THE HIERARCHY PRINCIPLE OF STRUCTURAL PERSISTENCE" from the section title.
  - From the horizon section: the name "Horizon Hairdresser Operator"; the sentences "The “Hairdresser” is the formal geometric filtering of stability." and "…locking the structural information entirely within the persistent phase relationships of the projector ledger."; "(quantum fields or configuration “hair”)".
  - "AND REFRACTION BREAKDOWN" from the EP section title; the bracketed theorem name "(Curvature-Induced Exceptional Point Theorem)".
- (c) Changes in wording / number / grade:
  - **Boundary result: "Theorem 2 (Projector-Level Boundary Isomorphism)" → "Proposition IX.1 (Projector-Level Boundary Correspondence)"**; "∂Σ4 and H+ are isomorphic at the level of…" → "∂Σ4 and H+ demonstrate a structural correspondence at the level of…"; FIG. label "Isomorphic Duals" → "Structural Correspondence".
  - "We derive this “haircut” …" → "Within this framework, we propose an operator-theoretic interpretation of this phenomenon, viewing the “haircut” … as an instance of extreme algebraic rank compression…"; "takes the exact block-triangular form" → "demonstrates an exact block-triangular form"; "This forces all incoming trajectories to flatten…" → "demonstrating how incoming trajectories flatten…".
  - "Horizon Hairdresser Operator D_H" → "Horizon Compression Operator D_H"; section title "THE HAIRDRESSER MECHANISM: HORIZON RANK COLLAPSE" → "PERSISTENT OPERATOR COMPRESSION AND HORIZON RANK COLLAPSE".
  - Theorem numbering style: "Theorem 1" → "Theorem V.1".
  - Section order: transient plateaus (VI), polariton (VII), horizon compression (VIII), boundary correspondence (IX), superradiance (X; new title "QUANTITATIVE NON-ABELIAN SUPERRADIANCE ENERGY FLUX"). In J06 the order was Core Pipeline (VI), Pseudospectral (VII), Hairdresser (VIII), Superradiance (IX), Boundary (X), Polariton (XI).
  - Superradiance formula: ||J||² → |J|²; "time-dependent rotation" → "real-time rotation".
  - All equation numbers change (basis now (1)–(4); K entries (8)–(19); etc.).
- (d) Holds that no other version holds: see the cross-version table at the end (J07's unique features are checked there against J08–J11).

---

## J08 — `/home/claude/bh_recovery/text/BLKHOLE (1).txt` (PDF `drive/older/BLKHOLE (1).pdf`)

- Read in full: YES (817 lines; PDF page 11 also viewed).
- Title, author line, affiliation, date: as J07 ("Beyond the Event Horizon: An Operator-First Theory of Persistent Geometry and Black Hole Dynamics"; "Jeromie N. Beasley¹"; "¹Program in Complex Spectral Geometry and Projector Dynamics"; "(Dated: July 2, 2026)").
- Pages: 13.
- Horizon mechanism name: section still "PERSISTENT OPERATOR COMPRESSION AND HORIZON RANK COLLAPSE" with "Horizon Compression Operator D_H" and informal “hairdresser”; the abstract and introduction now speak of a "formal four-tier “Hairdresser” pruning tensor" and a "comprehensive “Hairdresser” boundary toolkit" with "the “scissors” and “fingers” operators" — but no such tensor/toolkit section exists in the body of J08 (nor in J09; see J10/J11 sections for whether it ever arrives).

### Abstract (verbatim)
"We formalize an alternative, operator-first field theory demonstrating that many observable properties of black holes and relational multi-body mechanics can be unified at the level of non-normal transport operators acting on admissible subspaces. Rather than postulating a smooth spacetime metric a priori, we show that classical geometry emerges intrinsically from the spectral projection of a non-selfadjoint stability spine onto persistent invariant subspaces of an ambient Grassmannian manifold. We derive the explicit 5×5 stiffness components across the pure shape and shear sectors of the 5D stratified shape manifold Σ4. By extending the framework to encompass internal non-Abelian symmetries via an additive multi-sector operator sum K = K_geom + K_gauge + K_boundary, we prove that spatial anisotropy and internal gauge fields act as co-equal, independent drivers of spectral defectiveness. We derive the explicit Wong-type evolution equations to show how internal charge vectors are dynamically rotated and dragged by the transport sector. Furthermore, we provide a formal Persistence Theorem proving that operator non-normality is a stable feature that survives even in perfectly uniform, spatially isotropic configurations under controlled mixed cross-commutator bounds. Finally, we establish that dissipative event horizons function as extreme rigidity interfaces that execute a continuous rank collapse—interpreted through a formal four-tier “Hairdresser” pruning tensor—trapping incoming configurations inside a flat, reflectionless 2D non-normal phase ledger evaluated via Dunford trace-log contour regularizations."

### Section list (J08)
- I. INTRODUCTION (rewritten/expanded)
- II. THE CANONICAL BASIS AND TANGENT BUNDLE CONSTRUCTION
- III. THE JACOBI-DRIVEN STABILITY SPINE — A (1, 2, 3)
- IV. NON-ABELIAN SU(3) COLOR-GAUGE EXTENSION
- V. THE CURVATURE-INDUCED EXCEPTIONAL POINT THEOREM
- VI. TRANSIENT PLATEAUS AND ENERGY PACKETS ON SHAPE MANIFOLDS
- VII. POLARITON MASS-COUPLING MATRICES AND THE CHROMODYNAMIC EDGE
- VIII. PERSISTENT OPERATOR COMPRESSION AND HORIZON RANK COLLAPSE
- IX. THE UNIFIED BOUNDARY CORRESPONDENCE
- X. QUANTITATIVE NON-ABELIAN SUPERRADIANCE ENERGY FLUX
- XI. DERIVATION OF THE WONG-TYPE GAUGE EQUATIONS (NEW) — A. Variation of the Internal Charge; B. Induced Lorentz-Type Geometric Force
- XII. THEOREM: PERSISTENCE OF DEFECTIVENESS UNDER GAUGE EXTENSION (NEW)
- Appendix A: Spectral Gap Stability and Projector Persistence Bounds
- Reference [1]. Figures 1–4 as J07.

### I. INTRODUCTION (J08; verbatim of the new material)
Paragraphs 1–2 as J07 with small edits ("In this work, we investigate…"; "formulated at the level of non-normal transport operators"; "Rather than beginning with a fixed geometric background"; "emerge from the continuous tracking of these invariant subspaces on an ambient Grassmannian manifold rather than being imposed a priori").

New: "To achieve this, the total stability stiffness operator K is factored into an explicit, additive multi-sector decomposition:
- **Eq. (1):** K = K_geom + K_gauge + K_boundary
where K_geom captures classical mass-inertia shape variations, K_gauge introduces internal non-Abelian Lie algebra connection fields, and K_boundary models singular horizon constraints. While the spatial layout is purely additive, the global real-time evolution remains dynamically coupled, as the individual sector coefficients depend explicitly on a time-dependent active pullback metric g_ab(t) driven by system trajectories.
Crucially, the gauge extension is not merely an optional patch for uniform layouts, but an expansion of the class of admissible physical systems. By deriving the Wong-type gauge equations directly from a unified interaction action, we show that the internal charge vector q(t) is continuously dragged and rotated by the advective transport velocity. This interaction generates an induced Lorentz-type geometric force that actively modifies the trajectory, ensuring the gauge variables are natively generated by the core transport kinematics.
This dual-engine architecture allows us to establish a formal Persistence Theorem. We prove that the global departure from normality is a stable property of the field landscape. Under exact hypotheses that bound the mixed cross-commutator tensor R_mixed, the system’s commutator remains strictly non-vanishing even when the surrounding macroscopic geometry hits perfect spatial mass isotropy.
Furthermore, we propose a formal operator-theoretic interpretation of the classical no-hair theorem, visualized through a comprehensive “Hairdresser” boundary toolkit. Instead of treating information entering the horizon as destructively erased, the interface executes a systematic algebraic rank compression. Microscopic shape variations and unaligned internal gauge fluctuations are radiatively sheared away by intense local field torques (the “scissors” and “fingers” operators), leaving only the aligned, structurally stable operator channels observable on the interface.
Because standard eigenvalue summation breaks down over these degenerate, defective boundary blocks, we introduce a rigorous Dunford trace-log contour calculus. By integrating complex resolvent metrics over a closed Cauchy contour Γ running at a safe regularization distance η ≳ √ε around the vertical pseudospectral bulges, we show that finite, measurable topological energy states are securely preserved inside a flat, boundary-skimming 2D non-normal phase ledger."
Last paragraph "Although exploratory in scope…" unchanged. FIG. 1 Graphical Abstract and caption unchanged.

(Note: the introduction and abstract of J08 announce a "Dunford trace-log contour calculus" and the Hairdresser toolkit; the body of J08 contains neither. Recorded as printed.)

### Sections II–X (J08)
Word-for-word J07, with every body equation number raised by one because of the new Eq. (1):
- (2) trace constraint; (3) E1,E2; (4) E3,E4; (5) E5; (6) Jacobi equation; (7) A_Jacobi; (8) K_ab projection formula; (9)–(11) K11, K22, K12; (12)–(14) K33, K44, K55; (15)–(20) K13, K14, K15, K23, K24, K25; (21) T_ij(W,q_c); (22) K_color; (23) commutator proportionality; (24) pullback metric; (25) Theorem V.1 equation; (26) block form with C_lower − M_color; (27) S^{-1}KS limit; (28) A_Jacobi^(boundary); (29) matrix exponential; (30) |v_⊥| ∝ 1/sqrt(2λ); (31) Sobolev-k product on TΣ4; (32) plateau norm identity; (33) M_polariton; (34) θ_lock; (35) D_H(X) = Π_p X Π_p; (36) K_horizon; (37) ||v_⊥|| ∝ 1/sqrt(2λ); (38) superradiance rate dE/dt.
- **Theorem V.1** — Theorem, unchanged statement and long proof.
- **Proposition IX.1 (Projector-Level Boundary Correspondence)** — Proposition, unchanged; no proof printed. FIG. 4 with the "FIG. 4. FIG. 1." caption as J07.
- FIG. 2, FIG. 3 unchanged.

### NEW: XI. DERIVATION OF THE WONG-TYPE GAUGE EQUATIONS (verbatim)
"To show that the internal gauge variables are dynamically integrated rather than appended by declaration, we derive their equations of motion from a unified action principle over the trajectory x^μ(t) on the manifold. Let the internal color-charge vector of the transport packet be denoted by q ∈ g. The gauge connection field along the path is A_μ = A^a_μ λ_a, where λ_a are the non-commuting generators of the Lie algebra. We define the classical interaction Lagrangian L coupling the spacetime velocity x'^μ to the internal charge vector q:
- **Eq. (39):** L(x, x', q) = (1/2) g_μν(t) x'^μ x'^ν + g_s Tr( q A_μ(x) ) x'^μ." (bracket placement as printed in the PDF of the identical J09 passage, page 11: the trace closes before x'^μ.)

A. Variation of the Internal Charge: "The charge vector q evolves on a coadjoint orbit of the Lie group. To find its equation of motion, we take the variation of the action with respect to the group element g(t), where q(t) = g(t) q(0) g^{-1}(t). This yields the advective, color-covariant derivative condition:
- **Eq. (40):** q' = −g_s [ A_μ x'^μ , q ].
Expanding this coordinate expression into component form using the structure constants f_abc of the algebra [λ_a, λ_b] = i f_abc λ_c yields:
- **Eq. (41):** q'^a = g_s f_abc A^b_μ x'^μ q^c.
This derivation proves that the internal charge vector is continuously dragged and rotated by the transport dynamics x'^μ. The gauge variable configuration is generated by the same kinematics that drive spatial deformation."

B. Induced Lorentz-Type Geometric Force: "Taking the variation of the Lagrangian with respect to the spatial coordinates x^μ determines how this internal rotation feeds back into the geometric trajectory:
- **Eq. (42):** d/dt( g_μν x'^ν ) − (1/2) ∂_μ g_αβ x'^α x'^β = g_s Tr( q F_μν x'^ν ),
where the non-Abelian field strength tensor F_μν is explicitly evaluated as:
- **Eq. (43):** F_μν = ∂_μ A_ν − ∂_ν A_μ + g_s [A_μ, A_ν].
This closes the dynamical loop. The internal charge is rotated by the gauge fields it passes through, and the resulting color-current generates a geometric force that modifies the trajectory. This interaction provides the precise physical mechanism that drives the additive stability component K_gauge."

### NEW: XII. THEOREM: PERSISTENCE OF DEFECTIVENESS UNDER GAUGE EXTENSION
Lead-in (verbatim): "With the explicit dynamics of the gauge variables established, we now prove that the combined operator K = K_geom + K_gauge remains non-normal even when all geometric anisotropy is removed. To satisfy the referee, we explicitly establish the hypotheses required to control the mixed cross-commutator terms."

**Theorem XII.1.** Grade: Theorem (no bracketed name; the section title carries the name). Verbatim (PDF page 11 viewed to confirm the displays): "Let K_geom be the geometric stability operator acting on the state space H, and let K_gauge be the gauge operator driven by a non-vanishing field strength F_μν ≠ 0. Let the total operator be K = K_geom + K_gauge. Assume that:
1. The geometric and gauge sectors act on orthogonal subspaces of H with respect to the Frobenius inner product, such that Tr(K_geom^T K_gauge) = 0.
2. The mixed cross-commutator tensor  R_mixed = [K_geom, K_gauge^T] + [K_gauge, K_geom^T]  is strictly bounded in operator norm by the minimum internal gauge contribution:  ||R_mixed|| < g_s² Σ_a ||[q^a_i, q^a_j]||².
Then the total system commutator is strictly non-vanishing:
- **Eq. (44):** ||[K, K^T]|| ≠ 0
whenever either the spatial mass-inertia anisotropy is non-trivial (∃ i, j : t_i ≠ t_j) or the gauge field strength curvature is non-vanishing (F_μν ≠ 0)."

Proof (verbatim): "We expand the global system commutator directly from its additive definition: [K, K^T] = [K_geom + K_gauge, K_geom^T + K_gauge^T]. Distributing the terms yields four distinct commutator components: [K, K^T] = [K_geom, K_geom^T] + [K_gauge, K_gauge^T] + [K_geom, K_gauge^T] + [K_gauge, K_geom^T]. We isolate the final two terms as the mixed cross-commutator tensor R_mixed. Taking the operator norm of both sides and applying the reverse triangle inequality gives: ||[K, K^T]|| ≥ || [K_geom, K_geom^T] + [K_gauge, K_gauge^T] || − ||R_mixed||. To test the resilience of the non-normal transport framework, we evaluate the system under a perfect spatial mass-inertia isotropy condition (t1 = t2 = t3). Under this geometric symmetry constraint, K_geom becomes entirely self-adjoint under the uniform metric, causing its independent commutator to vanish identically: ||[K_geom, K_geom^T]||_isotropic = 0. Substituting this value back into the norm inequality collapses the expression to the gauge terms:
- **Eq. (45):** ||[K, K^T]||_isotropic ≥ g_s² Σ_{a=1}^{dim(G)} ||[q^a_i, q^a_j]||² − ||R_mixed||.
Because the gauge group G = SU(3) is a compact non-Abelian Lie group, its generators do not commute. For a non-vanishing field strength background, the internal charge commutator is strictly positive. By Hypothesis 2, the mixed cross-commutator norm ||R_mixed|| is strictly smaller than this intrinsic gauge term. Therefore: ||[K, K^T]||_isotropic > 0. This completes the proof. The operator’s departure from normality is a stable, persistent feature of the system. It is preserved by the internal non-Abelian gauge algebra even when the macroscopic spatial geometry becomes completely uniform."

### Appendix A (J08)
Word-for-word J07: (A1)–(A10), Lemma A.1 (Neumann Resolvent Bound) with proof, C_Γ, Projector Drift Estimate (A9), Theorem A.2 (Projector Persistence Lipschitz Bound), P(A,E) ≡ 1 − |Π − Π′|, K_Γ. The closing paragraph now reads "Equation (38) establishes that…" (J07: "Equation (37)"); in J08 Eq. (38) is the superradiance rate formula.

### References (J08)
[1] Besson, Carballo, Pantelidou, Withers, Front. Phys. 13, 1638583 (2025).

### Results inventory (J08)
- Theorem V.1 — Theorem. Proposition IX.1 (Projector-Level Boundary Correspondence) — Proposition. Theorem XII.1 (section title "Persistence of Defectiveness under Gauge Extension") — Theorem. Lemma A.1 — Lemma. Theorem A.2 — Theorem. 45 numbered body equations + (A1)–(A10). 4 figures.

### Changes J07 → J08
- (a) Adds: the additive decomposition K = K_geom + K_gauge + K_boundary (Eq. 1) with its three role descriptions; the abstract sentences on Wong-type equations, the "formal Persistence Theorem", the "formal four-tier “Hairdresser” pruning tensor" and "Dunford trace-log contour regularizations"; introduction paragraphs on the gauge extension ("not merely an optional patch"), Persistence Theorem, R_mixed, "Hairdresser" boundary toolkit, "scissors" and "fingers" operators, Dunford trace-log contour calculus, η ≳ √ε; Section XI (Lagrangian (39), Wong equation (40)–(41), force law (42), field strength (43)); Section XII with Theorem XII.1 and Eqs. (44)–(45); the phrase "To satisfy the referee".
- (b) Drops: from the abstract, "boundary-skimming" before "2D non-normal phase ledger" and "SU(3)" (now "internal non-Abelian symmetries"); from the introduction, the J07 sentence "The operator decomposition naturally separates transport, obstruction, and non-normal sectors, providing a unified description of transient pseudospectral amplification, superradiant energy extraction, quasi-normal mode persistence, and horizon filtering." and "We propose an operator-theoretic interpretation of the classical no-hair theorem, in which only structurally stable operator channels remain observable while transient microscopic information is compressed beyond the horizon." (replaced by the new paragraphs).
- (c) Changes: all body equation numbers +1; Appendix cross-reference "Equation (37)" → "Equation (38)". No grade changes. Field strength now given two forms in one document: Section IV "F_μν = [D_μ, D_ν]" and Section XI "F_μν = ∂_μ A_ν − ∂_ν A_μ + g_s [A_μ, A_ν]" (see Disagreements).
- (d) Holds that no other version holds: see cross-version table (in particular the Theorem XII.1 wording with two hypotheses and "To satisfy the referee" must be checked against J09–J11 there).

---

## J09 — `/home/claude/bh_recovery/text/BLKHOLE (2).txt` (PDF `drive/older/BLKHOLE (2).pdf`)

- Read in full: YES (924 lines; PDF pages 10–11 also viewed).
- Title, author line, affiliation, date: as J07/J08.
- Abstract: word-for-word J08.
- Pages: 15.
- Horizon mechanism name: unchanged from J08 (section "PERSISTENT OPERATOR COMPRESSION AND HORIZON RANK COLLAPSE", "Horizon Compression Operator D_H", informal “hairdresser”; abstract "four-tier “Hairdresser” pruning tensor"; intro "“Hairdresser” boundary toolkit", "“scissors” and “fingers” operators"; FIG. 3 caption "Horizon Hairdresser Interface Mechanics"). Still no toolkit/tensor section in the body.

### Section list (J09)
- I. INTRODUCTION
- II. THE CANONICAL BASIS AND TANGENT BUNDLE CONSTRUCTION
- III. THE JACOBI-DRIVEN STABILITY SPINE — A (1, 2, 3)
- IV. NON-ABELIAN SU(3) COLOR-GAUGE EXTENSION
- V. THE CURVATURE-INDUCED EXCEPTIONAL POINT THEOREM
- VI. TRANSIENT PLATEAUS AND ENERGY PACKETS ON SHAPE MANIFOLDS
- VII. POLARITON MASS-COUPLING MATRICES AND THE CHROMODYNAMIC EDGE
- VIII. PERSISTENT OPERATOR COMPRESSION AND HORIZON RANK COLLAPSE
- IX. THE UNIFIED BOUNDARY CORRESPONDENCE
- X. BOUNDARY JUNCTION CONDITIONS AND CONTINUUM LENSING MATCHING (NEW) — A. The Extrinsic Curvature Jump Definition; B. Matching the Operator Turning Angle to Continuous Lensing; C. Geodesic Deflection Verification
- XI. QUANTITATIVE NON-ABELIAN SUPERRADIANCE ENERGY FLUX
- XII. DERIVATION OF THE WONG-TYPE GAUGE EQUATIONS — A, B
- XIII. THEOREM: PERSISTENCE OF DEFECTIVENESS UNDER GAUGE EXTENSION
- Appendix A: Spectral Gap Stability and Projector Persistence Bounds
- Reference [1]. Figures 1–4 as J08; FIG. 5 NEW.

### Sections I–IX (J09)
Word-for-word J08, Eqs. (1)–(37). Theorem V.1 (Theorem) unchanged. Proposition IX.1 (Projector-Level Boundary Correspondence) (Proposition) unchanged, no proof. Figures 1–4 unchanged (FIG. 4 caption still "FIG. 4. FIG. 1. …").

### NEW: X. BOUNDARY JUNCTION CONDITIONS AND CONTINUUM LENSING MATCHING (verbatim; displays confirmed from PDF page 10–11)
"To guarantee that the discrete lattice transport dynamics transfer smoothly into the continuous geometric manifold without generating unphysical edge reflections or coordinate shocks, we must formalize the Boundary Junction Condition Equations. At the interface layer τ = τ_crit, the discrete turning angle field Θ_n = arccos(⟨v_max(n), v_max(n + 1)⟩) must align with the continuous geodesic lensing profile. We enforce this match by evaluating the jump conditions across the spatial boundary via the Darmois-Israel formalism, mapping the discrete operator mismatch directly onto an internal sheet stress-energy tensor S_ab."

A. The Extrinsic Curvature Jump Definition: "Let Σ denote the 3D matching hypersurface separating the discrete lattice interior (M−) from the continuous spacetime exterior (M+). The metric components g_ab must be continuous across the boundary layer:
- **Eq. (38):** [g_ab] ≡ g_ab^+ − g_ab^− = 0.
However, the non-normal advective tracking vector forces a sharp discontinuity in the derivatives of the metric, producing a non-zero jump in the extrinsic curvature tensor K_ab = e^μ_a e^ν_b ∇_μ n_ν:
- **Eq. (39):** [K_ab] ≡ K_ab^+ − K_ab^− ≠ 0.
Using the Darmois-Israel junction conditions, this geometric jump is directly sourced by the edge-localized surface stress tensor S_ab on the boundary interface:
- **Eq. (40):** S_ab = −(1/8π) ( [K_ab] − h_ab [K] ),
where h_ab is the induced metric on Σ, and [K] = h^{ab}[K_ab] represents the trace of the extrinsic curvature mismatch."

**FIG. 5** (NEW): two boxes joined by an arrow "Junction Matching". Left box: "DISCRETE LATTICE INTERIOR — Discrete Turning Angle: Θ_n — Hotspot Anisotropy Metric: Δ_n — [ JUNCTION CONDITION WALL ]", and beneath it the formula "S_ab = −(1/8π)([K_ab] − g_ab[K])". Right box: "CONTINUUM METRIC EXTERIOR — Extrinsic Curvature Jump: [K_ab] — Continuous Lensing Profile: α(b)". Caption: "FIG. 5. The Boundary Junction Matching Interface between the discrete lattice interior and the continuous metric exterior." (The figure prints g_ab[K]; Eq. (40) prints h_ab[K]. See Disagreements.)

B. Matching the Operator Turning Angle to Continuous Lensing: "To map our discrete lattice parameters (Δ_n, Θ_n) directly onto this continuum geometric jump, we construct the interfacial matching conditions. The discrete localized anisotropy peak Δ_hotspot acts as the raw driver for the metric slope discontinuity. By taking the continuum limit of the discrete shift operator, the extrinsic curvature jump components align with the lattice parameters:
- **Eq. (41):** [K_ab] = lim_{n→N/2} [ (Θ_n / δ) · ( h_ab + ξ_λ Δ_n u_a u_b ) ],
where δ is the discrete lattice spacing, u_a is the unit vector parallel to the tracking axis, and ξ_λ is the characteristic coupling coefficient. Substituting this structural matching condition back into the Darmois-Israel equation yields the complete Interfacial Junction Identity:
- **Eq. (42):** S_ab = −(1/(8πδ)) Θ_hotspot [ ξ_λ Δ_hotspot ( u_a u_b − h_ab ) − h_ab ].
This equation establishes that the surface energy-momentum profile required to hold the horizon interface stable is not an arbitrary input. It is determined by the discrete lattice turning angle Θ_hotspot and the vertical pseudospectral bulge height."

C. Geodesic Deflection Verification: "To close the verification loop, this surface stress tensor is passed into the continuum ray-tracing equation. The total continuous lensing deflection angle α(b) for an incoming wave packet traveling at an impact parameter b is evaluated by integrating the transversal components of the jump:
- **Eq. (43):** α(b) = 2 ∫_{τ_crit}^{∞} ( ∂_τ g_φφ / sqrt( g_ττ g_φφ ) ) dτ + ∮_Σ 8π S_ab x'^a x'^b dΣ.
The second term introduces a discrete boundary torque. When an incoming wave packet skims the junction wall, the sudden jump in the operator’s non-normality exerts an immediate advective pull. This pull matches the continuous infinite redshift profiles of general relativity, ensuring that discrete trapping mimics macroscopic gravitational lensing."

Grade: none given for the junction section (source names: "Boundary Junction Condition Equations", "Interfacial Junction Identity", "Geodesic Deflection Verification"). Note: the "discrete lattice", Θ_n, v_max(n), Δ_hotspot, N/2, τ_crit are used here without being introduced earlier in J09.

### XI. QUANTITATIVE NON-ABELIAN SUPERRADIANCE ENERGY FLUX
Text unchanged; rate formula now **Eq. (44)** (same two terms, |J|²).

### XII. DERIVATION OF THE WONG-TYPE GAUGE EQUATIONS
Unchanged text; **Eq. (45)** Lagrangian L(x, x', q) = (1/2) g_μν(t) x'^μ x'^ν + g_s Tr( q A_μ(x) ) x'^μ; **Eq. (46)** q' = −g_s [A_μ x'^μ, q]; **Eq. (47)** q'^a = g_s f_abc A^b_μ x'^μ q^c; **Eq. (48)** d/dt(g_μν x'^ν) − (1/2) ∂_μ g_αβ x'^α x'^β = g_s Tr( q F_μν x'^ν ); **Eq. (49)** F_μν = ∂_μ A_ν − ∂_ν A_μ + g_s [A_μ, A_ν].

### XIII. THEOREM: PERSISTENCE OF DEFECTIVENESS UNDER GAUGE EXTENSION
**Theorem XIII.1.** Grade: Theorem. Statement (two hypotheses, R_mixed bound), proof and lead-in ("To satisfy the referee…") word-for-word as J08 Theorem XII.1; conclusion equation now **Eq. (50)** ||[K, K^T]|| ≠ 0; isotropic bound **Eq. (51)**.

### Appendix A (J09)
Word-for-word J08; closing paragraph now "Equation (44) establishes that…" (in J09 Eq. (44) is the superradiance rate formula).

### References (J09)
[1] Besson, Carballo, Pantelidou, Withers (same single reference).

### Results inventory (J09)
- Theorem V.1 — Theorem. Proposition IX.1 (Projector-Level Boundary Correspondence) — Proposition. Theorem XIII.1 — Theorem. Lemma A.1 — Lemma. Theorem A.2 — Theorem. 51 numbered body equations + (A1)–(A10). 5 figures.

### Changes J08 → J09
- (a) Adds: Section X (Darmois–Israel junction conditions; discrete turning angle Θ_n = arccos⟨v_max(n), v_max(n+1)⟩; τ = τ_crit; matching hypersurface Σ with M−/M+; Eqs. (38)–(43); S_ab; h_ab; lattice spacing δ; unit vector u_a; Θ_hotspot; Δ_hotspot; "Interfacial Junction Identity"; lensing deflection α(b); "discrete boundary torque"); FIG. 5.
- (b) Drops: nothing.
- (c) Changes: sections after IX renumbered (+1): superradiance X → XI, Wong XI → XII, persistence XII → XIII; Theorem XII.1 → Theorem XIII.1 (number only); equation numbers after (37) shift by +6 (superradiance 38 → 44, Lagrangian 39 → 45, …, 44 → 50, 45 → 51); Appendix cross-reference "Equation (38)" → "Equation (44)".
- (d) Holds that no other version holds: see cross-version table.

---

## J10 — `/home/claude/bh_recovery/text/BLKHOLE (3).txt` (PDF `drive/older/BLKHOLE (3).pdf`)

- Read in full: YES (1033 lines).
- Title as printed: "Beyond the Event Horizon: An Operator-First Theory of Persistent Geometry and Black Hole Dynamics"
- Author line as printed: "Jeromie N. Beasley" (no superscript footnote mark now), next line "Program in Complex Spectral Geometry and Projector Dynamics".
- Date as printed: **"(Dated: July 3, 2026)"** — first version to print July 3 (PDF created Thu 2 Jul 19:17 Central).
- Abstract: word-for-word J08/J09.
- Pages: 16.
- Horizon mechanism name: as J09 in Section VIII ("Horizon Compression Operator D_H"; informal “hairdresser”); NEW in the concluding section: "the “Hairdresser” rank collapse systematically shears away asymmetric fluctuations via the scissors (C_lower → 0) and fingers (Π_p) boundary operators" — the first place the body identifies what "scissors" and "fingers" are.

### Section list (J10)
- I. INTRODUCTION
- II. THE CANONICAL BASIS AND TANGENT BUNDLE CONSTRUCTION
- III. THE JACOBI-DRIVEN STABILITY SPINE — A (1, 2, 3)
- IV. NON-ABELIAN SU(3) COLOR-GAUGE EXTENSION
- V. THE CURVATURE-INDUCED EXCEPTIONAL POINT THEOREM
- VI. TRANSIENT PLATEAUS AND ENERGY PACKETS ON SHAPE MANIFOLDS
- VII. POLARITON MASS-COUPLING MATRICES AND THE CHROMODYNAMIC EDGE
- VIII. PERSISTENT OPERATOR COMPRESSION AND HORIZON RANK COLLAPSE
- IX. THE UNIFIED BOUNDARY CORRESPONDENCE
- X. BOUNDARY JUNCTION CONDITIONS AND CONTINUUM LENSING MATCHING — A, B, C
- XI. QUANTITATIVE NON-ABELIAN SUPERRADIANCE ENERGY FLUX
- XII. DERIVATION OF THE WONG-TYPE GAUGE EQUATIONS — A, B
- XIII. THEOREM: PERSISTENCE OF DEFECTIVENESS UNDER GAUGE EXTENSION
- XIV. CONCLUDING SUMMARY AND MULTI-LAYER DISCUSSION (NEW) — A. Level I0: The Raw Field Microstate Layer; B. Level I1: The Covariant Current Layer; C. Level I2: The Projector Subspace Layer; D. Level I3: The Persistent Geometry Master Invariant; E. Future Outlook and Open Paths
- Appendix A: Spectral Gap Stability and Projector Persistence Bounds
- Reference [1]. Figures 1–5 as J09; FIG. 6 NEW.

### Sections I–XIII (J10)
Word-for-word J09 with the same equation numbers (1)–(51):
- Theorem V.1 — Theorem (Eq. 25; long proof Eqs. 26–30).
- Proposition IX.1 (Projector-Level Boundary Correspondence) — Proposition; no proof.
- Junction section X: Eqs. (38)–(43) as J09; FIG. 5 as J09 (figure formula still prints g_ab[K]; Eq. (40) prints h_ab[K]). In the J10 layout the "[ JUNCTION CONDITION WALL ]" label and the formula sit centred below the two boxes.
- Superradiance Eq. (44); Wong Eqs. (45)–(49); Theorem XIII.1 — Theorem, Eqs. (50)–(51), "To satisfy the referee" lead-in retained.
- FIG. 2: the text layer shows a stray string "small textPersistence Window τ" inside the plot (J07–J09: "Persistence Window τ").
- FIG. 4 caption still "FIG. 4. FIG. 1. The formal four-tier structural lift diagram…".

### NEW: XIV. CONCLUDING SUMMARY AND MULTI-LAYER DISCUSSION (verbatim)
"The operator-first field theory established in this work replaces traditional static geometric backgrounds with an emergent, dynamic projection system. By shifting the analytical focus from coordinate-dependent spacetime manifolds to the tracking of non-selfadjoint stability spines on an ambient Grassmannian manifold, the framework resolves long-standing singularities through smooth geometric continuation. The structural integrity of this framework relies entirely on the hierarchical persistence of the four-tier structural lift, which maps fragile microstates up to coordinate-free master invariants at the horizon boundary."

A. Level I0: The Raw Field Microstate Layer — "At the lowest tier of the transport hierarchy, the system is populated by localized microscopic variables, including raw Jacobi deviation fields J near collision walls and static spatial field components near the horizon patch. As trajectories approach an extreme rigidity interface, these lower-level descriptors encounter absolute coordinate breakdowns. Proper acceleration diverges to infinity, and standard metric profiles break down into singular reorientations. If the theory were restricted to this level, information would be destructively erased at the boundary layer."

**FIG. 6** (NEW): four stacked boxes, each with a side label — "LEVEL I3: PERSISTENT GEOMETRY — Pullback Metric & Pseudospectral Ledger" | "Master Invariant Layer"; "LEVEL I2: PROJECTOR SUBSPACES — Rank-1 Densities & Coalesced QNMs" | "Grassmannian Projection Layer"; "LEVEL I1: COVARIANT CURRENTS — Color Currents & Membrane Quantities" | "Regularized Transport Layer"; "LEVEL I0: RAW FIELD MICROSTATES — Jacobi Deviations & Static Vectors" | "Singular Microstate Layer". Caption: "FIG. 6. The Architectural Liftline of the Landscape: Four-tier hierarchical mapping from fragile microstates to persistent geometric invariants."

B. Level I1: The Covariant Current Layer — "To protect tracking capacity against individual field singularities, the framework lifts these microstates into covariant transport currents. In the geometric relational sector, this manifests as the multi-body mass-weighted momentum stream; in the internal gauge sector, it defines the non-Abelian color current J^μ_color = Σ_i q_{c,i} W'^μ. This current matches the classical electromagnetic membrane current at the event horizon layer. By coupling the internal charge rotation to advective path velocities via Wong-type dynamics, Level I1 regularizes local fluctuations, ensuring that charge and momentum are conserved dynamically through field alignment torques."

C. Level I2: The Projector Subspace Layer — "The regularized currents lift to define invariant tracking channels on the Grassmannian manifold, translating kinematics into pure operator structures. Microscopic paths coalesce onto a stable rank-1 density matrix projection operator P = N N^T, which corresponds directly to the coalesced Quasi-Normal Mode (QNM) projector bundle Π_QNM of perturbed black hole horizons. At this layer, the “Hairdresser” rank collapse systematically shears away asymmetric fluctuations via the scissors (C_lower → 0) and fingers (Π_p) boundary operators. Individual, defective wave vectors flatten completely parallel to the interface, compressing complex three-dimensional waves into highly stable, two-dimensional parallel tracking fields."

D. Level I3: The Persistent Geometry Master Invariant — "At the highest tier of the structural lift, classical macroscopic geometry emerges from the integration of the underlying projector bundles. The continuous tracking of these invariant subspaces defines both the active pullback metric g_ab(t) and the coordinate-free non-normal phase ledger Q_Π. While lower-level variables diverge or flatten into a degenerate Jordan block, the Dunford trace-log calculus integrates complex resolvents around the vertical pseudospectral bulges at a regularized safety buffer η ≳ √ε. This contour integration proves that finite, measurable topological invariants are securely preserved inside the boundary ledger, providing a complete framework for information conservation at the horizon interface."

E. Future Outlook and Open Paths — "The multi-layer integration demonstrates that whether a trajectory skims a micro-engineered atomic polariton junction or falls toward a macroscopic spinning black hole, the transport wavefront obeys identical subspace continuation paths on the Grassmannian. Future expansions of this operator field theory will target:
- Formalizing the supersymmetric extension of the additive multi-sector operator sum to balance the geometric stiffness invariants against fermion partner fields.
- Constructing explicit numerical ray-tracing templates using the Darmois-Israel junction tensor to test discrete packet lensing under extreme multi-body close approaches.
- Evaluating the asymptotic stability boundaries of the advective Wong equations under highly turbulent, multi-flavor gauge field fluctuations."
(These three bullets are the open paths the source itself lists.)

Note recorded without judgement: Section XIV.D speaks of "the Dunford trace-log calculus" as doing a contour integration that "proves" invariants are preserved; no section, equation or appendix in J10 sets out a Dunford trace-log calculation (Appendix A is the Riesz-projector Lipschitz bound).

### Appendix A (J10)
Word-for-word J09: (A1)–(A10), Lemma A.1 (Neumann Resolvent Bound), Theorem A.2 (Projector Persistence Lipschitz Bound); closing paragraph "Equation (44) establishes that…".

### References (J10)
[1] Besson, Carballo, Pantelidou, Withers (same single reference).

### Results inventory (J10)
- Theorem V.1 — Theorem. Proposition IX.1 — Proposition. Theorem XIII.1 — Theorem. Lemma A.1 — Lemma. Theorem A.2 — Theorem. 51 numbered body equations + (A1)–(A10). 6 figures. Three "future expansions" bullets.

### Changes J09 → J10
- (a) Adds: Section XIV with subsections A–E; FIG. 6; identification "scissors (C_lower → 0) and fingers (Π_p) boundary operators"; "resolves long-standing singularities through smooth geometric continuation"; "a complete framework for information conservation at the horizon interface"; the three future-work bullets (supersymmetric extension; numerical ray-tracing templates with the Darmois-Israel junction tensor; stability of the advective Wong equations under multi-flavor gauge fluctuations).
- (b) Drops: the superscript "1" affiliation mark on the author line.
- (c) Changes: printed date "July 2, 2026" → "July 3, 2026"; FIG. 5 layout; stray "small text" string in FIG. 2. No equation, number or grade changes in Sections I–XIII and Appendix A.
- (d) Holds that no other version holds: see cross-version table.

---

## J11 — `/home/claude/bh_recovery/text/BLKHOLE (4).txt` (PDF `drive/older/BLKHOLE (4).pdf`)

- Read in full: YES (1061 lines; PDF page 2 also viewed).
- Title as printed: "Beyond the Event Horizon: An Operator-First Theory of Persistent Geometry and Black Hole Dynamics"
- Author line as printed: "Jeromie N. Beasley"; next line "Program in Complex Spectral Geometry and Projector Dynamics".
- Date as printed: "(Dated: July 3, 2026)" (PDF created Thu 2 Jul 19:24 Central — seven minutes after J10).
- Abstract: word-for-word J08/J09/J10.
- Pages: 17.
- Horizon mechanism name: exactly as J10 (Section VIII "PERSISTENT OPERATOR COMPRESSION AND HORIZON RANK COLLAPSE", "Horizon Compression Operator D_H", informal “hairdresser”; XIV.C "the “Hairdresser” rank collapse … via the scissors (C_lower → 0) and fingers (Π_p) boundary operators"; FIG. 1 caption "the Hairdresser mechanism of horizon rank collapse"; FIG. 3 caption "Horizon Hairdresser Interface Mechanics").

### Section list (J11)
Identical to J10: I Introduction; II Canonical Basis; III Jacobi-Driven Stability Spine (A; 1, 2, 3); IV Non-Abelian SU(3) Color-Gauge Extension; V The Curvature-Induced Exceptional Point Theorem; VI Transient Plateaus and Energy Packets on Shape Manifolds; VII Polariton Mass-Coupling Matrices and the Chromodynamic Edge; VIII Persistent Operator Compression and Horizon Rank Collapse; IX The Unified Boundary Correspondence; X Boundary Junction Conditions and Continuum Lensing Matching (A, B, C); XI Quantitative Non-Abelian Superradiance Energy Flux; XII Derivation of the Wong-Type Gauge Equations (A, B); XIII Theorem: Persistence of Defectiveness under Gauge Extension; XIV Concluding Summary and Multi-Layer Discussion (A–E); Appendix A; reference list (11 items). Figures 1–6.

### Contents (J11) — full statement of the final state of this lineage
Body text is word-for-word J10 from the abstract to the end of Appendix A, with two citation changes noted below. For the record, the complete equation and result list of J11 (identical numbering in J09/J10):

- (1) K = K_geom + K_gauge + K_boundary.
- (2) Σ_{i=1}^{3} w_i = 1. (3) E1 = (1/√2)[[1,0,0],[0,−1,0],[0,0,0]], E2 = (1/√6)[[1,0,0],[0,1,0],[0,0,−2]]. (4) E3 = (1/√2)[[0,1,0],[1,0,0],[0,0,0]], E4 = (1/√2)[[0,0,1],[0,0,0],[1,0,0]]. (5) E5 = (1/√2)[[0,0,0],[0,0,1],[0,1,0]].
- (6) ∇_t² J + R(J, W')W' + ∇²U(W)·J = 0. (7) ∇_t Y = A_Jacobi(W)Y, A_Jacobi = [[0, I_5],[−K(W,W'), 0]], Y = (J ∇_t J)^T ∈ R^10. (8) K_ab(W,W') = ⟨E_a, R(·,W')W' E_b⟩_Frob + ⟨E_a, ∇²U(W)E_b⟩_Frob.
- (9) K11, (10) K22, (11) K12 — expressions as J00 (5)–(7).
- (12) K33, (13) K44, (14) K55 — expressions as J00 (8)–(10); Ω_ij = w'_ij/(w_i − w_j); H_ij = ∂²U/∂X_ik∂X_jl|_off-diag; T(W) = diag(t1,t2,t3) "the spatial anisotropic mass-inertia tensor".
- (15)–(20) K13, K14, K15, K23, K24, K25 — expressions as J00 (11)–(16).
- (21) T_ij(W,q_c) = T_ij(W)·I_3 + α_s Σ_{a=1}^{8} Tr(λ^a q_{c,i} ⊗ q†_{c,j}); D_t = ∇_t − i g_s A_μ W'^μ; F_μν = [D_μ, D_ν]. (22) K_color := R(·,W')W' + D²U(W,q_c) + g_s F(·,W')q_c. (23) ||[K,K^T]|| ∝ Σ_{i<j}(t_i − t_j)²·f(w) + g_s² Σ_{a=1}^{8} ||[q^a_{c,i}, q^a_{c,j}]||².
- (24) g_ab(t) = ⟨E_a, T(W)E_b⟩_Frob + γ·Tr(A_Jacobi Y Y^T A_Jacobi^T).
- **Theorem V.1** (Theorem): EPs of A_Jacobi "are non-linear fixed-point failures of the geometric feedback loop, manifesting as an instantaneous, self-reinforcing Ricci curvature blow-up": (25) lim_{t→t_col}|R_Ricci(t)| → ∞ ⟺ det(∂Φ/∂Y) = 0; "the operator degenerates into a non-diagonalizable size-2 Jordan block, forcing the normal components of the transport field to vanish identically." Proof with (26) K(W,W',q_c) = [[A_∥∥, E_shear],[C_lower − M_color, K33]]; (27) lim S^{-1}KS with S = diag(1,1,1,1,Δw); (28) A_Jacobi^(boundary) = [[0,I_4,0,0],[−A_∥∥,0,−E_shear,0],[0,0,0,1],[0,0,−2λ,0]]; (29) exp([[0,1],[−2λ,0]]t) = [[cos(√(2λ)t), sin(√(2λ)t)/√(2λ)],[−√(2λ) sin(√(2λ)t), cos(√(2λ)t)]]; (30) |v_⊥(t)| ∝ 1/√(2λ) → 0; μ_⊥ = ±i√(2λ).
- (31) Sobolev-k inner product on TΣ4. (32) ||J(t)||²_{H¹(Σ4)} = Σ_n |c_n|² e^{2Im(ω_n)t} + Σ_{n≠m} c_n* c_m e^{i(ω_n* − ω_m)t} Δ_nm; "τ ∝ K_C"; FIG. 2.
- (33) M_polariton = [[ω_c²(k_∥), Ω_Rabi],[Ω_Rabi, ω² − iγ_phonon + g_ep ∂u_phonon/∂x]]. (34) θ_lock = arctan(ξ_λ Δ_n), ξ_λ = 2Ω_Rabi·m_c/(ħ sqrt(||[K,K^T]||)); R1 sin²θ1 = R2 sin²θ2.
- (35) D_H(X) = Π_p X Π_p ("Horizon Compression Operator"). (36) K_horizon = [[A_∥∥, E_shear],[0, 2λ]]. (37) ||v_⊥(t)|| ∝ 1/√(2λ) → 0. FIG. 3.
- **Proposition IX.1 (Projector-Level Boundary Correspondence)** (Proposition; no proof printed): "…Consequently, ∂Σ4 and H+ demonstrate a structural correspondence at the level of the emergent admissible-channel geometry: they realize identical canonical lifts through the four-tier Hierarchy Principle of Structural Persistence." FIG. 4.
- (38) [g_ab] = 0. (39) [K_ab] ≠ 0. (40) S_ab = −(1/8π)([K_ab] − h_ab[K]). (41) [K_ab] = lim_{n→N/2}[(Θ_n/δ)·(h_ab + ξ_λ Δ_n u_a u_b)]. (42) S_ab = −(1/(8πδ)) Θ_hotspot [ξ_λ Δ_hotspot(u_a u_b − h_ab) − h_ab]. (43) α(b) = 2∫_{τ_crit}^{∞} ∂_τ g_φφ / sqrt(g_ττ g_φφ) dτ + ∮_Σ 8π S_ab x'^a x'^b dΣ. FIG. 5.
- (44) dE/dt = α_s ∫_{Σ4} Tr(J^μ_color F_μν W'^ν)|J|² sqrt(|g|) d⁵w + γ ∫_{Σ4} Tr([D_t K, K^T]·(JJ†)) sqrt(|g|) d⁵w; J^μ_color = Σ_i q_{c,i} W'^μ_i.
- (45) L = (1/2) g_μν(t) x'^μ x'^ν + g_s Tr(q A_μ(x)) x'^μ. (46) q' = −g_s[A_μ x'^μ, q]. (47) q'^a = g_s f_abc A^b_μ x'^μ q^c. (48) d/dt(g_μν x'^ν) − (1/2)∂_μ g_αβ x'^α x'^β = g_s Tr(q F_μν x'^ν). (49) F_μν = ∂_μ A_ν − ∂_ν A_μ + g_s[A_μ, A_ν].
- **Theorem XIII.1** (Theorem; section title "THEOREM: PERSISTENCE OF DEFECTIVENESS UNDER GAUGE EXTENSION"): hypotheses 1 (Tr(K_geom^T K_gauge) = 0) and 2 (||R_mixed|| < g_s² Σ_a ||[q^a_i, q^a_j]||², R_mixed = [K_geom, K_gauge^T] + [K_gauge, K_geom^T]); conclusion (50) ||[K,K^T]|| ≠ 0 "whenever either the spatial mass-inertia anisotropy is non-trivial (∃ i, j : t_i ≠ t_j) or the gauge field strength curvature is non-vanishing (F_μν ≠ 0)"; (51) ||[K,K^T]||_isotropic ≥ g_s² Σ_{a=1}^{dim(G)} ||[q^a_i,q^a_j]||² − ||R_mixed||.
- Section XIV A–E and FIG. 6 as J10 (including the three future-work bullets).
- Appendix A: (A1)–(A10); **Lemma A.1 (Neumann Resolvent Bound)** (Lemma); **Theorem A.2 (Projector Persistence Lipschitz Bound)** (Theorem): P(A,E) ≡ 1 − |Π − Π′| ≥ 1 − K_Γ ε, K_Γ = ℓ(Γ)C_Γ²/(2π δ_gap(δ_gap − εC_Γ)), under ε < δ_gap/C_Γ; closing paragraph "Equation (44) establishes that…".

### Citation changes in the J11 body
- Section II: "subject to the absolute trace constraint [? ]:" (J07–J10: "[1]").
- Section VI: "The non-orthogonal cross-terms [? ] Δ_nm act as a phase-directed energy buffer." (J07–J10: "[1]").
The "[? ]" marks are printed in the source (unresolved citation keys). None of the eleven new references is cited by number anywhere in the J11 body text.

### References (J11) — as printed, including the bracketed notes
[1] L. N. Trefethen and M. Embree, Spectra and Pseudospectra: The Behavior of Nonnormal Matrices and Operators, Princeton University Press, Princeton, NJ (2005). "[Essential foundation for the vertical pseudospectral bulges and transient energy plateaus used in Sections V and VI.]"
[2] H.-O. Kreiss, “Über die Stabilitätsdefinition für Differenzengleichungen die partielle Differentialgleichungen approximieren,” Math. Scand. 10, 85–91 (1962). "[ Establishes the matrix theorem underpinning the transient amplification growth ceiling at your boundary layers.]"
[3] T. Kato, Perturbation Theory for Linear Operators, Classics in Mathematics, Springer-Verlag, Berlin (1995). "[Provides the standard analytical continuation mechanics for the projector bundles on the Grassmannian manifold.]"
[4] T. Regge and J. A. Wheeler, “Stability of a Schwarzschild Singularity,” Phys. Rev. 108, 1063 (1957). "[Grounds your transport formulation in classic black hole stability and perturbation theory.]"
[5] E. Berti, V. Cardoso, and A. O. Starinets, “Quasinormal modes of black holes and black branes,” Class. Quantum Grav. 26, 163001 (2009). "[Maps directly onto the coalesced Quasi-Normal Mode (QNM) projector bundles discussed in your Level I2 architecture.]"
[6] K. S. Thorne, R. H. Price, and D. A. Macdonald, Black Holes: The Membrane Paradigm, Yale University Press, New Year, CT (1986). "[Justifies the horizon as an extreme rigidity interface and matches the continuous membrane currents in Level I1.]" ("New Year, CT" is as printed.)
[7] S. K. Wong, “Field and particle equations of motion in a gauge theory,” Nuovo Cimento A 65, 689–694 (1970). "[The explicit historical source for your derived color-charge advective rotation equations in Section XII.]"
[8] R. Jackiw and N. S. Manton, “Classical and quantum dynamics of a particle with color,” Ann. Phys. 105, 103–134 (1977). "[Anchors the geometric coupling of internal non-Abelian Lie algebras to classical trajectories.]"
[9] J. Barbour, “The End of Time: The Next Revolution in Physics,” Oxford University Press (1999). "[Provides the conceptual philosophy for utilizing relational mechanics independent of background spacetime metrics.]"
[10] R. Montgomery, “Infinitely many syzygies and the Choreographies of the n-body problem,” Central Motions in N-Body Mechanics, 53–64 (2002). "[Validates the geometric construct of the stratified shape manifold Σ4 derived in Section II.]"
[11] W. Israel, “Singular hypersurfaces and thin shells in general relativity,” Nuovo Cimento B 44, 1–14 (1966); Erratum, ibid. 48, 463 (1967). "[The core Darmois-Israel mathematical mechanism used to source your boundary metric derivative jumps in Section X.]"

The Besson–Carballo–Pantelidou–Withers reference (the only reference of J00–J10) is NOT in the J11 list.

### Results inventory (J11)
- Theorem V.1 — Theorem. Proposition IX.1 (Projector-Level Boundary Correspondence) — Proposition. Theorem XIII.1 — Theorem. Lemma A.1 — Lemma. Theorem A.2 — Theorem. 51 body equations + (A1)–(A10). 6 figures. 11 references. Three future-work bullets.

### Changes J10 → J11
- (a) Adds: the eleven-item annotated reference list (Trefethen–Embree; Kreiss; Kato; Regge–Wheeler; Berti–Cardoso–Starinets; Thorne–Price–Macdonald; Wong; Jackiw–Manton; Barbour; Montgomery; Israel), each with a bracketed note in second person ("your boundary layers", "your transport formulation", "your Level I2 architecture", "your derived color-charge advective rotation equations", "your boundary metric derivative jumps").
- (b) Drops: the reference J. Besson, J. Carballo, C. Pantelidou, B. Withers, “Transients in black hole perturbation theory,” Front. Phys. 13, 1638583 (2025).
- (c) Changes: the two in-text citations "[1]" become "[? ]". Nothing else in the text, equations, numbering or grades.
- (d) Holds that no other version holds: the eleven references with their notes; the unresolved "[? ]" citations; a reference list that does not contain Besson et al.

---

## Cross-version table (what is present where)

"Y" = present; "–" = absent. Numbers in brackets are the equation or item numbers in that version.

| Item | J00 | J01 | J02 | J03 | J04 | J05 | J06 | J07 | J08 | J09 | J10 | J11 |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Title "The Principle of Structural Persistence…" | Y | – | – | – | – | – | – | – | – | – | – | – |
| Title "Non-Hermitian Stability Fields on Stratified Shape Manifolds…" | – | Y | Y | Y | – | – | – | – | – | – | – | – |
| No title printed | – | – | – | – | Y | Y | – | – | – | – | – | – |
| Title "Beyond the Event Horizon: An Operator-First Theory…" | – | – | – | – | – | – | Y | Y | Y | Y | Y | Y |
| Printed date | Jul 2 | Jul 2 | Jul 2 | Jul 2 | none | none | Jul 2 | Jul 2 | Jul 2 | Jul 2 | Jul 3 | Jul 3 |
| "Structural Matrix of the Compounded Field Theory" table | Y | – | – | – | – | – | – | – | – | – | – | – |
| Canonical basis E1–E5 | Y(1–2) | Y | Y | Y | Y | Y | Y | Y(2–4) | Y(3–5) | Y | Y | Y |
| Jacobi equation and A_Jacobi | Y(3–4) | Y | Y | Y | Y | Y | Y | Y(5–6) | Y(6–7) | Y | Y | Y |
| K_ab = ⟨E_a,R(·,W')W'E_b⟩+⟨E_a,∇²U E_b⟩ | – | – | – | – | – | – | – | Y(7) | Y(8) | Y | Y | Y |
| K entries K11…K25 (12 entries) | Y(5–16) | Y | Y | Y | Y | Y | Y | Y(8–19) | Y(9–20) | Y | Y | Y |
| Definitions of Ω_ij, H_ij, T(W)=diag(t_i) | – | – | – | – | – | – | – | Y | Y | Y | Y | Y |
| SU(3) T_ij(W,q_c) | Y(17) | Y | Y | Y | Y | Y | Y | Y(20) | Y(21) | Y | Y | Y |
| D_t, F=[D,D], K_color | – | – | – | – | – | – | – | Y(21) | Y(22) | Y | Y | Y |
| ‖[K,K^T]‖ ∝ Σ(t_i−t_j)² f(w) + g_s²Σ‖[q,q]‖² | Y(18) | Y | Y | Y | Y | Y | Y | Y(22) | Y(23) | Y | Y | Y |
| ‖[K,K^T]‖ ∝ R_Ricci(Y,Y) + g_s²Σ‖[q,q]‖² | Y(32) | Y(32) | Y(34) | Y(34) | Y(34) | Y(34) | Y(35) | – | – | – | – | – |
| Pullback metric g_ab(t) with γ | Y(19) | Y | Y | Y | Y | Y | Y | Y(23) | Y(24) | Y | Y | Y |
| EP theorem — label | Thm 1 | Thm 1 | Thm 1 | Thm 1 | Thm 1 | Thm 1 (named) | Thm 1 (named) | Thm V.1 | Thm V.1 | Thm V.1 | Thm V.1 | Thm V.1 |
| EP proof: short form | Y | Y | Y | Y | Y | Y | Y | – | – | – | – | – |
| EP proof: long form (M_color, S rescaling, exp matrix) | – | – | – | – | – | – | – | Y | Y | Y | Y | Y |
| "confirms the intrinsic Quantum Geometric Tensor dissipation bounds" | Y | Y | Y | Y | Y | Y | Y | – | – | – | – | – |
| **Core Operator Pipeline** section (P=NN^T; g_ab=Tr(Π[D_a,D_b]Π); **C(Δ)=Tr(Π(t)Π(t+Δ))**) | Y(22–24) | Y | Y | Y | Y | Y | Y | – | – | – | – | – |
| Pseudospectrum σ_ε and Kreiss constant K_C | Y(25–26) | Y | Y | Y | Y | Y | Y | – | – | – | – | – |
| Radial Sobolev-k product, QNM sum, "τ ∝ N_modes" | Y(27–29) | Y | Y | Y | Y | Y | Y | – | – | – | – | – |
| Sobolev-k on TΣ4, Δ_nm, "τ ∝ K_C" | – | – | Y(30–31) | Y | Y | Y | Y | Y(30–31) | Y(31–32) | Y | Y | Y |
| Plateau plot (FIG. 2 of J07+) | – | – | – | – | – | – | – | Y | Y | Y | Y | Y |
| Horizon section name | Barber | Barber | Barber | Barber | Barber | Hairdresser | Hairdresser | Persistent Operator Compression | same | same | same | same |
| K_horizon block form and ‖v_⊥‖∝1/√(2λ) | Y(30–31) | Y | Y(32–33) | Y | Y | Y | Y(33–34) | Y(35–36) | Y(36–37) | Y | Y | Y |
| D_H(X)=Π_p X Π_p | – | – | – | – | – | – | Y(32) "Horizon Hairdresser Operator" | Y(34) "Horizon Compression Operator" | Y(35) | Y | Y | Y |
| Superradiance: short paragraph with "color-charge or U(1) current" | Y | Y | – | – | – | – | – | – | – | – | – | – |
| Superradiance rate formula dE/dt | – | – | Y(35) | Y(35) | Y(35) | Y(35) | Y(36) | Y(37) | Y(38) | Y(44) | Y(44) | Y(44) |
| Theorem 2 (Topological Boundary Dictionary), κ_surface, A_boundary numbered, lim exp | – | – | Y | Y | Y | – | – (panel 5 of FIG. 1 image only) | – (image only) | – (image only, not re-viewed) | – (not re-viewed) | – (not re-viewed) | – (image only) |
| Projector-level boundary result — label and grade | – | – | – | Theorem 3 (…Isomorphism) | Theorem 3 | Theorem 2 (…Isomorphism) | Theorem 2 (…Isomorphism) | Proposition IX.1 (…Correspondence) | Prop IX.1 | Prop IX.1 | Prop IX.1 | Prop IX.1 |
| Projector-level dictionary (4 lines) + five-step proof + A_intr=Π_H∘K + Q_Π=g_Π+(i/2)Ω_Π | – | – | – | Y(42–45) | Y | Y(36–39) | Y(37–40) | – | – | – | – | – |
| Four-tier lift diagram | – | – | – | FIG.1 | FIG.1 | FIG.1 | FIG.2 | FIG.4 | FIG.4 | FIG.4 | FIG.4 | FIG.4 |
| Polariton matrix and θ_lock | – | – | – | – | – | Y(40–41) | Y(41–42) | Y(32–33) | Y(33–34) | Y | Y | Y |
| Graphical Abstract (FIG. 1 image) | – | – | – | – | – | – | Y | Y | Y | Y | Y | Y |
| J06-style Introduction ("Black holes occupy a unique position…") | – | – | – | – | – | – | Y | – | – | – | – | – |
| K = K_geom + K_gauge + K_boundary | – | – | – | – | – | – | – | – | Y(1) | Y | Y | Y |
| Wong-type derivation (Lagrangian, q', force, F) | – | – | – | – | – | – | – | – | Y(39–43) | Y(45–49) | Y | Y |
| Persistence-of-defectiveness theorem | – | – | – | – | – | – | – | – | Thm XII.1 | Thm XIII.1 | Thm XIII.1 | Thm XIII.1 |
| Junction conditions section (Darmois–Israel), FIG. 5 | – | – | – | – | – | – | – | – | – | Y(38–43) | Y | Y |
| Concluding Summary XIV, FIG. 6, future-work bullets | – | – | – | – | – | – | – | – | – | – | Y | Y |
| Appendix A (Lemma A.1, Theorem A.2) | – | – | – | – | – | – | – | Y | Y | Y | Y | Y |
| Reference: Besson et al. 2025 | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | – |
| References: 11-item list | – | – | – | – | – | – | – | – | – | – | – | Y |

### "Holds that no other version holds" — resolved per version
- J00: its title; its abstract; the "Structural Matrix of the Compounded Field Theory" section and table; bare author line.
- J01: nothing unique.
- J02: nothing unique.
- J03: only the overprinted FIG. 1 bottom label and the figure wording "Jacobi fields J near B_ij".
- J04: nothing unique in content (a titleless copy of J03 with the figure cleaned). Last version with "Barber" and with Theorem 2 (Topological Boundary Dictionary) in the body.
- J05: nothing unique in content (titleless; first Hairdresser; first polariton section).
- J06: the six-paragraph Introduction beginning "Black holes occupy a unique position in modern physics" with the question "Can black-hole geometry itself be viewed as an emergent manifestation of persistent operator structure?" and the sentence "Throughout, we distinguish established mathematical results from speculative extensions…"; the heading line "Black Holes as Persistent Operator Filters: An Operator-First Framework for Horizon Geometry, Pseudospectral Dynamics, and Structural Compression"; the name "Horizon Hairdresser Operator D_H"; the sentences "The “Hairdresser” is the formal geometric filtering of stability." and "…locking the structural information entirely within the persistent phase relationships of the projector ledger."; the front-text sentence "We propose that the classical no-hair property may be interpreted as the external manifestation of persistent projector reduction…". J06 is also the only version that holds the Core Operator Pipeline (with C(Δ)) and the operator D_H together, and the last version with the Core Operator Pipeline, the pseudospectrum/Kreiss material, the five-step boundary proof and the projector-level dictionary.
- J07: its abstract wording (with "non-Abelian SU(3) symmetries" and "flat, reflectionless, boundary-skimming 2D non-normal phase ledger"); its Introduction form (J06 front text turned into the Introduction with the sentence "We propose an operator-theoretic interpretation of the classical no-hair theorem, in which only structurally stable operator channels remain observable while transient microscopic information is compressed beyond the horizon."); Appendix cross-reference "Equation (37)".
- J08: nothing unique in content (all carried in J09–J11); unique numbering only (Theorem XII.1; Eqs. 38–45; "Equation (38)").
- J09: nothing unique in content (all carried in J10–J11).
- J10: the only version that has Section XIV together with the Besson et al. reference and resolved "[1]" citations.
- J11: the eleven-item annotated reference list; "[? ]" citations.

---

## Wording tracker for the items the assignment singled out

1. **Core Operator Pipeline.** Present J00–J06 only, word-for-word the same in all seven (J00 §6; J01–J05 §V; J06 §VI): "We define the physical universe not through coordinates, but via a mass-and-momentum weighted non-normal transport operator A(w) acting on a generalized Hilbert space H. The local directions of maximal capacity define a rank-1 projection density: P(t) = N(t)N(t)^T which is lifted to a higher-rank spectral projector Π on an ambient Grassmannian manifold. The classical metric g_Π and its associated gauge curvature Ω_Π emerge intrinsically as representations of this underlying transport capacity: g_ab = Tr(Π·[D_a, D_b]Π)". Absent as a section from J07–J11; in those versions it survives only inside the unchanged FIG. 1 graphical-abstract image (panel 1, incl. "A(w) = M^{-1}KM^{-1}" as read from the image) and in the phrase "operator-first pipeline" no longer present after J06 (the five-step proof that used the phrase was dropped in J07).
2. **Persistence functional C(Δ).** J00–J06: "This is quantified by the projector overlap functional tracking persistence over an interval Δ: C(Δ) = Tr(Π(t)Π(t + Δ)). Structural persistence outlasts vector stability. Observable physical laws emerge precisely from the channels where C(Δ) → 1." No grade given. Not in the body of J07–J11 (only in the FIG. 1 image footer "Physical laws = persistent channels where C(Δ) → 1"). J07–J11 Appendix A introduce a different object under a similar name: "the structural Persistence Functional P(A, E) tracking subspace overlap be defined as P(A, E) ≡ 1 − |Π − Π′|" (Theorem A.2).
3. **Stability spine K and its entries.** Twelve entries (K11, K22, K12, K33, K44, K55, K13, K14, K15, K23, K24, K25) printed identically in all twelve versions (J00–J06 Eqs. 5–16; J07 Eqs. 8–19; J08–J11 Eqs. 9–20). K34, K35, K45 never printed. Definitions of t_i, H_ij, Ω_ij supplied only from J07 on. X12, X13, X23 never defined. From J07 on K is additionally described as "the compressed shape-space projection of the total stability operator" with Eq. K_ab = ⟨E_a, R(·,W')W'E_b⟩_Frob + ⟨E_a, ∇²U(W)E_b⟩_Frob.
4. **SU(3) colour extension.** J00–J06: short form (T_ij(W,q_c) and the commutator proportionality), opening "We elevate the scalar mass-kinematics to a gauge-extended field landscape by introducing an internal SU(3) color-charge symmetry." J07–J11: expanded with the motivation "To determine whether non-normal transport is an intrinsic property of geometric stratification rather than an artifact of gravitational setups…we test the persistence framework against non-Abelian degree-of-freedom expansions", D_t, F_μν = [D_μ, D_ν], K_color. J08–J11 add K_gauge as a sector of K, the Wong derivation and the persistence theorem.
5. **Theorem on Exceptional Points / Ricci blow-up.** Statement identical in all twelve; grade Theorem in all twelve. Label: "Theorem 1." (J00–J04), "Theorem 1 (Curvature-Induced Exceptional Point Theorem)." (J05–J06), "Theorem V.1." (J07–J11). Proof short in J00–J06, long in J07–J11.
6. **Transient plateaus.** J00–J01: horizon-side only (QNM sum, τ ∝ N_modes). J02–J06: both horizon-side (τ ∝ N_modes) and shape-manifold-side (τ ∝ K_C, Δ_nm). J07–J11: shape-manifold side only, plus FIG. 2 plot.
7. **Boundary correspondence / isomorphism / dictionary and its grade.**
   - J00–J01: none.
   - J02: "Theorem 2 (Topological Boundary Dictionary)" — Theorem; "category-theoretic duals belonging to the same isomorphic equivalence class of non-Hermitian boundary layers"; proof ends "topologically and spectrally isomorphic".
   - J03–J04: that Theorem 2 PLUS "Theorem 3 (Projector-Level Boundary Isomorphism)" — Theorem; "isomorphic at the level of the emergent admissible-channel geometry"; five-step proof.
   - J05–J06: only "Theorem 2 (Projector-Level Boundary Isomorphism)" — Theorem (the Topological Boundary Dictionary theorem removed).
   - J07–J11: "Proposition IX.1 (Projector-Level Boundary Correspondence)" — Proposition; "demonstrate a structural correspondence at the level of the emergent admissible-channel geometry"; no dictionary lines, no proof.
8. **Junction conditions.** J09–J11 only (Section X; Eqs. 38–43; FIG. 5). No grade given.
9. **Superradiance rate.** None in J00–J01. J02–J06: "the exact energy extraction rate formula" dE/dt = α_s∫Tr(J^μ_color F_μν W'^ν)‖J‖² sqrt|g| d⁵w + γ∫Tr([D_t K, K^T]·(JJ†)) sqrt|g| d⁵w. J07–J11: same with |J|² and "real-time rotation"; section retitled "QUANTITATIVE NON-ABELIAN SUPERRADIANCE ENERGY FLUX". No grade given.
10. **Polariton / θ_lock.** J05–J11, identical wording: θ_lock = arctan(ξ_λ Δ_n), ξ_λ = 2Ω_Rabi·m_c/(ħ sqrt‖[K,K^T]‖); called "the exact, coordinate-free angular trapping law at the quantum edge". No grade given. ξ_λ reused in J09–J11 Eq. (41)–(42) as "the characteristic coupling coefficient".
11. **Persistence-of-defectiveness theorem.** J08 (Theorem XII.1), J09–J11 (Theorem XIII.1); grade Theorem; identical statement and proof; lead-in "To satisfy the referee, we explicitly establish the hypotheses required to control the mixed cross-commutator terms."
12. **Appendix A.** J07–J11, identical: "Spectral Gap Stability and Projector Persistence Bounds"; Lemma A.1 (Neumann Resolvent Bound); Projector Drift Estimate (A9); Theorem A.2 (Projector Persistence Lipschitz Bound). Only the trailing cross-reference number changes: "Equation (37)" (J07), "(38)" (J08), "(44)" (J09–J11).

---

## Disagreements

Listed without resolution. "Within" means both statements stand in the same version.

1. **Title.** J00 "The Principle of Structural Persistence: Non-Normal Operators, Pseudospectral Transients, and Emergent Spacetime Horizons" / J01–J03 "Non-Hermitian Stability Fields on Stratified Shape Manifolds: Co-Evolving Jacobi Structures, Exceptional Points, and Non-Abelian Gauge Pullbacks" / J04–J05 none printed / J06–J11 "Beyond the Event Horizon: An Operator-First Theory of Persistent Geometry and Black Hole Dynamics". J06 additionally prints a second title-like line, "Black Holes as Persistent Operator Filters: …".
2. **Printed date vs file date.** J00–J03 print "July 2, 2026" but were created on 1 July (22:05–23:47 Central); J06–J09 print July 2 and were created 2 July; J10–J11 print "July 3, 2026" but were created on 2 July (19:17, 19:24 Central).
3. **Author line.** J00 "Jeromie N. Beasley" with no affiliation; J01–J03, J06–J09 "Jeromie N. Beasley¹ / ¹Program in Complex Spectral Geometry and Projector Dynamics"; J04–J05 no author line; J10–J11 name and programme line without the superscript.
4. **Name of the horizon mechanism.** "Barber" (J00–J04: section "The Barber Mechanism: Horizon Rank Collapse"; "The “barber” is the geometric filtering of stability.") / "Hairdresser" (J05–J06: "THE HAIRDRESSER MECHANISM"; J06 "Horizon Hairdresser Operator D_H") / "Horizon Compression Operator D_H" in section "PERSISTENT OPERATOR COMPRESSION AND HORIZON RANK COLLAPSE" with “hairdresser” only "Informally" (J07–J11). Within J07–J11: the body section avoids the name while the FIG. 1 caption ("the Hairdresser mechanism of horizon rank collapse"), the FIG. 3 caption ("Horizon Hairdresser Interface Mechanics"), the abstract of J08–J11 ("formal four-tier “Hairdresser” pruning tensor") and J10–J11 §XIV.C ("the “Hairdresser” rank collapse") keep it.
5. **Grade and name of the boundary result.** Theorem ("Theorem 2 (Topological Boundary Dictionary)", J02–J04) / Theorem ("Theorem 3 (Projector-Level Boundary Isomorphism)" J03–J04; "Theorem 2 (Projector-Level Boundary Isomorphism)" J05–J06) / Proposition ("Proposition IX.1 (Projector-Level Boundary Correspondence)" J07–J11). Claim wording: "are category-theoretic duals belonging to the same isomorphic equivalence class" and "topologically and spectrally isomorphic" (J02–J04 Thm 2) / "are isomorphic at the level of the emergent admissible-channel geometry" (J03–J06) / "demonstrate a structural correspondence at the level of the emergent admissible-channel geometry" (J07–J11). Within J06–J11: the FIG. 1 image (viewed in J06, J07, J11) still shows the J02-style dictionary panel ("Horizon Surface Gravity (κ_surface)", "χ = 2λ (∂Σ4) = 2κ_surface (H+)", "Structural, spectral, and topological duality") and "Persistent Geometry Isomorphic", while the J07–J11 body says Proposition/"structural correspondence".
6. **Number "Theorem 2".** In J02–J04 "Theorem 2" is the Topological Boundary Dictionary; in J05–J06 "Theorem 2" is the Projector-Level Boundary Isomorphism (which was "Theorem 3" in J03–J04).
7. **Horizon-side squeeze quantity.** J02–J04 Thm 2: "Inertial Mass-Squeeze Factor (2λ) ⟺ Horizon Surface Gravity (κ_surface)", "χ = 2κ_surface on H+", "κ_surface → +∞" (Eqs. 37, 40 and proof). J03–J06 projector-level theorem: "Inertial Squeeze Factor λ (χ = 2λ) ⟺ Effective Horizon Stiffness κ_eff (proper acceleration divergence)" and Step 2 "effective stiffness arising from the diverging proper acceleration of stationary observers". Both stand within J03 and J04.
8. **No-hair dictionary line.** "Quadratic Rank SVD Collapse (O(Δw²)) ⟺ Black Hole “No-Hair” Absolutism" (J02–J04 Eq. 38) vs "Quadratic Rank Collapse of Transverse Projectors ⟺ No-Hair Uniqueness + One-Way Causal Structure" (J03–J04 Eq. 44; J05 Eq. 38; J06 Eq. 39). Both within J03, J04.
9. **Plateau duration.** "τ ∝ N_modes" (J00–J06, Transient Plateaus subsection A, before Eq. 29) vs "τ ∝ K_C" (J02–J11, shape-manifold passage). Both within J02–J06. In J07–J11 K_C is used but its definition (the Kreiss-constant equation) is no longer in the document. The FIG. 1 image prints "Plateau τ ∝ K_C".
10. **Lower-left block.** "vanishes quadratically at the rate O(Δw²)" vs "vanishes identically" — both phrases stand within every version (EP proof; Barber/Hairdresser/Compression section; boundary theorem proofs). J07–J11 EP proof adds "Thus, lim (1/Δw) C_lower = 0".
11. **Block form of K at the boundary.** J07–J11 Eq. (25)/(26): lower-left entry "C_lower − M_color"; Eq. (26)/(27): lower-left entry "lim (1/Δw) C_lower" (no M_color); Eq. (35)/(36) K_horizon: lower-left entry 0. J00–J06 give only K_horizon with 0.
12. **Normal propagator.** J02–J04 Eq. (41): "lim_{χ→+∞} exp([[0,1],[−χ,0]]t) = [[cos(√χ t), (1/√χ) sin(√χ t)],[−√χ sin(√χ t), cos(√χ t)]]" (a limit sign on the left, χ-dependent matrix on the right). J07–J11 Eq. (28)/(29): the same matrix identity with 2λ in place of χ and no limit sign.
13. **A_boundary blocks.** J02–J06: identity block printed "I" and transverse entry "−χ" (matrix named A_boundary). J07–J11: identity block "I_4", entry "−2λ" (matrix named A_Jacobi^(boundary)); FIG. 1 image keeps "A_boundary" with "−χ".
14. **Statement vs proof wording of the EP theorem (within all versions).** Statement: "forcing the normal components of the transport field to vanish identically"; proof: "|v_⊥(t)| ∝ 1/sqrt(2λ) → 0" as λ → +∞. Statement: "degenerates into a non-diagonalizable size-2 Jordan block"; proof: "normal eigenvalues are purely imaginary high-frequency pairs μ_⊥ = ± i sqrt(2λ)". Recorded as two wordings, not resolved.
15. **Dropped closing claim of the EP proof.** J00–J06: "This confirms the intrinsic Quantum Geometric Tensor dissipation bounds: the system cannot penetrate directions of infinite geometric obstruction." J07–J11: replaced by "The transport wavefront has its transverse kinetic energy erased by the infinite-frequency micro-vibrational hum of the self-consistent metric backreaction. … completing the proof."
16. **Two proportionalities for the non-normality norm (within J00–J06).** "‖[K,K^T]‖ ∝ Σ_{i<j}(t_i − t_j)²·f(w) + g_s² Σ‖[q^a_{c,i},q^a_{c,j}]‖²" (SU(3) section) vs "‖[K,K^T]‖ ∝ R_Ricci(Y,Y) + g_s² Σ‖[q^a_{c,i},q^a_{c,j}]‖²" (superradiance section). The second is absent from J07–J11.
17. **Three expressions for the emergent metric.** Core Operator Pipeline (J00–J06): "g_ab = Tr(Π·[D_a, D_b]Π)"; EP section (all versions): "g_ab(t) = ⟨E_a, T(W)E_b⟩_Frob + γ·Tr(A_Jacobi Y Y^T A_Jacobi^T)"; lift diagram (J03–J11): "Pullback field g_ab = Φ(W, W')". Φ also appears in det(∂Φ/∂Y) = 0 without definition.
18. **Persistence functional.** C(Δ) = Tr(Π(t)Π(t+Δ)) with "C(Δ) → 1" (J00–J06 body; FIG. 1 image J06–J11) vs "structural Persistence Functional P(A, E) ≡ 1 − |Π − Π′|" (J07–J11 Appendix A, Theorem A.2).
19. **Superradiance.** J00–J01: "When a net color-charge or U(1) current breaks global singlet symmetry, the system extracts energy directly from the rotating gauge background" and no formula. J02–J11: "When a net color-charge current J^μ_color = Σ_i q_{c,i}W'^μ_i breaks global singlet symmetry…" with the rate formula. In the formula: "‖J‖²" (J02–J06) vs "|J|²" (J07–J11); "time-dependent rotation" (J02–J06) vs "real-time rotation" (J07–J11).
20. **Field strength tensor (within J08–J11).** Section IV: "F_μν = [D_μ, D_ν]" with "D_t = ∇_t − i g_s A_μ W'^μ". Section XI/XII: "F_μν = ∂_μ A_ν − ∂_ν A_μ + g_s [A_μ, A_ν]".
21. **Wong equation signs (within J08–J11).** "q' = −g_s [A_μ x'^μ, q]" (Eq. 40/46) and component form "q'^a = g_s f_abc A^b_μ x'^μ q^c" (Eq. 41/47) with "[λ_a, λ_b] = i f_abc λ_c". Recorded as printed.
22. **Number of sectors in K (within J08–J11).** Eq. (1): "K = K_geom + K_gauge + K_boundary". Persistence theorem and its lead-in: "the combined operator K = K_geom + K_gauge", "Let the total operator be K = K_geom + K_gauge".
23. **Persistence theorem, hypothesis vs conclusion (within J08–J11).** Setup: "K_gauge be the gauge operator driven by a non-vanishing field strength F_μν ≠ 0". Conclusion: "whenever either the spatial mass-inertia anisotropy is non-trivial (∃ i, j : t_i ≠ t_j) or the gauge field strength curvature is non-vanishing (F_μν ≠ 0)". Proof treats only the isotropic case t1 = t2 = t3. Recorded as printed.
24. **Junction stress tensor (within J09–J11).** Eq. (40): "S_ab = −(1/8π)([K_ab] − h_ab[K])". FIG. 5: "S_ab = −(1/8π)([K_ab] − g_ab[K])".
25. **Junction identity forms (within J09–J11).** Eq. (41): "[K_ab] = lim_{n→N/2}[(Θ_n/δ)·(h_ab + ξ_λ Δ_n u_a u_b)]". Eq. (42), stated to follow by substitution: "S_ab = −(1/(8πδ)) Θ_hotspot [ξ_λ Δ_hotspot (u_a u_b − h_ab) − h_ab]". Recorded as printed.
26. **Discrete lattice (within J09–J11).** Section X speaks of "the discrete lattice interior", "discrete turning angle field Θ_n", "v_max(n)", "N/2", "δ … the discrete lattice spacing"; Sections II–IX of the same versions build on the continuous five-dimensional shape manifold Σ4 and introduce no lattice.
27. **Δ_n.** Polariton section (J05–J11): "δB_n ⊃ ∂ω²/∂x² + g_ep·u_phonon defines the structural field modification zone (Δ_n)". Junction section FIG. 5 (J09–J11): "Hotspot Anisotropy Metric: Δ_n"; "discrete localized anisotropy peak Δ_hotspot". Transient section: Δ_nm is the mode overlap matrix. Three uses of Δ.
28. **Cross-reference "Section V" (within J06–J11).** Horizon section: "the spectral projector onto the persistent admissible subspace satisfying the temporal stability criteria established in Section V". In J06 Section V is the EP theorem and the Core Operator Pipeline (with C(Δ)) is Section VI; in J07–J11 Section V is the EP theorem and there is no Core Operator Pipeline section.
29. **Appendix cross-reference (within J07–J11).** "Equation (37)" (J07) / "Equation (38)" (J08) / "Equation (44)" (J09–J11) "establishes that, under bounded perturbations satisfying the spectral-gap hypothesis, the associated spectral projector varies continuously…"; in each version that equation number is the superradiance rate formula, and the bound just stated is (A10).
30. **Figure numbering.** J06 graphical abstract panel 6 is titled "FOUR-TIER STRUCTURAL LIFT (FIG. 1)" while the lift diagram is FIG. 2 in J06 and FIG. 4 in J07–J11; J07–J11 caption reads "FIG. 4. FIG. 1. The formal four-tier structural lift diagram…".
31. **Lift-diagram labels.** "Isomorphic Duals" (J03–J06) vs "Structural Correspondence" (J07–J11); "Jacobi fields J near B_ij" (J03) vs "Jacobi deviation fields J near B_ij" (J04–J11); caption ending "that bridge many-body shape manifolds and black hole event horizons" (J03–J06) vs "bridging multi-body shapes and black hole event horizons" (J07–J11).
32. **Announced but not present (within J08–J11, and J06–J07 for the last item).** Abstract: "interpreted through a formal four-tier “Hairdresser” pruning tensor" and "evaluated via Dunford trace-log contour regularizations"; Introduction: "we introduce a rigorous Dunford trace-log contour calculus … at a safe regularization distance η ≳ √ε"; J10–J11 §XIV.D: "the Dunford trace-log calculus integrates complex resolvents … This contour integration proves that finite, measurable topological invariants are securely preserved". No section, equation or appendix of J08–J11 contains a Dunford trace-log calculation, a pruning tensor, or separately defined "scissors"/"fingers" operators (J10–J11 §XIV.C identifies them in one clause as "the scissors (C_lower → 0) and fingers (Π_p) boundary operators"). "zeta-regularized spectral ledgers" (J06 front text; J07–J11 Introduction) likewise has no body section. The FIG. 1 caption (J06–J11) lists "(2) pseudospectral transients and non-modal amplification" while the pseudospectrum/Kreiss text is absent from J07–J11.
33. **Tone of the horizon claim.** J00–J05: "We derive this “haircut” as an extreme algebraic rank collapse". J06: "We derive this “haircut” not as the destructive annihilation of information, but as an extreme algebraic rank compression" (body) alongside "We propose that the classical no-hair property may be interpreted as…" and "Although exploratory in scope" (front text). J07–J11: "we propose an operator-theoretic interpretation of this phenomenon, viewing the “haircut” … as an instance of extreme algebraic rank compression", alongside abstract wording "we prove…", "we establish…" and J10–J11 §XIV "resolves long-standing singularities", "a complete framework for information conservation at the horizon interface".
34. **Relation to general relativity (J06 only vs others).** J06 Introduction: "intended as a mathematical reformulation rather than a replacement for general relativity. The standard Kerr geometry, perturbation equations, and conservation laws remain intact." J06–J11: "Rather than replacing the geometric formulation of general relativity, it offers an alternative structural description". J10–J11 §XIV: "replaces traditional static geometric backgrounds with an emergent, dynamic projection system".
35. **Dimension wording.** J00–J11 EP proof: "The 5D transport cones flatten entirely parallel to T B_ij"; J01–J03 abstract and boundary proofs: "boundary-skimming 2D non-normal phase"; J10–J11 §XIV.C: "compressing complex three-dimensional waves into highly stable, two-dimensional parallel tracking fields".
36. **Colour current.** "J^μ_color = Σ_i q_{c,i} W'^μ_i" (J02–J11 superradiance section; lift diagram) vs "J^μ_color = Σ_i q_{c,i} W'^μ" without the body index on W' (J10–J11 §XIV.B). Membrane current "J^μ_mem = (1/4π)E_r" (diagram) vs "the classical electromagnetic membrane current" (J10–J11 §XIV.B).
37. **References.** J00–J10: one reference (Besson, Carballo, Pantelidou, Withers, Front. Phys. 13, 1638583 (2025)), uncited in the text of J00–J06, cited as [1] twice in J07–J10. J11: eleven different references, Besson et al. absent, in-text citations print "[? ]". J11 reference [1] note says pseudospectral bulges and transient plateaus are "used in Sections V and VI"; J11 reference [6] prints the publisher place as "New Year, CT".
38. **Index string in the Sobolev-k product.** "G^{a1…aj b1…bj}" (J02–J06 Eq. 30) vs "G^{a1…bj}" (J07–J11 Eq. 30/31).
39. **Section title of the EP theorem.** "…EXCEPTIONAL POINT THEOREM AND REFRACTION BREAKDOWN" (J00–J06) vs "…EXCEPTIONAL POINT THEOREM" (J07–J11).
40. **J00 table vs later text.** J00 Section 1 table row "Stability Spine: K_ab = ⟨E_a, K E_b⟩ … Re-indexed by D_t and F_μν" and rows "Deflected by Flux Tube Confinement", "Hadronization Phase Transition" have no counterpart in J01–J06; D_t and F_μν re-enter only in J07.

---

## Not read / problems

- All twelve layout text files were read in full with the Read tool, first line to last: Blackholes_and_Suns.txt (384 lines), (1) 340, (2) 437, (3) 580, (4) 551, (5) 532, (6) 630, BLKHOLE.txt 639, (1) 817, (2) 924, (3) 1033, (4) 1061.
- The reflowed `raw/J00.txt … J11.txt` files were NOT read as such; one `diff` (J00 vs J01) was run and found too noisy to help, so the other raw files were not used. All statements in this ledger come from the layout texts and the PDF pages listed next.
- PDF pages viewed as images (to settle layout): Blackholes_and_Suns.pdf p.2; Blackholes_and_Suns (4).pdf p.1; Blackholes_and_Suns (6).pdf pp.2, 10; BLKHOLE.pdf p.2; BLKHOLE (1).pdf p.11; BLKHOLE (2).pdf pp.10–11; BLKHOLE (4).pdf p.2. All other PDF pages were read only through the layout text.
- J00 Section 1 table: the fourth column ("Black … Analog…") runs off the page edge in the PDF itself; its entries are truncated in the source ("Govern… Mode R…", "Source … Transie…", "Zero B… Way Va…", "High-Fr… (Frictio…") and could not be recovered.
- The FIG. 1 Graphical Abstract (J06–J11) is a raster image with very small type; it was viewed in J06, J07 and J11 (it looks the same in all three) and NOT separately viewed in J08, J09, J10. Panel contents recorded in the J06 section are as legible; small formulas inside the panels (e.g. the oscillator equation in panel 3, "A(w) = M^{-1}KM^{-1}" in panel 1) were read with difficulty and should be re-checked against a high-resolution render before being quoted.
- FIG. 2 (plateau plot) and FIG. 3 (horizon interface drawing) of J07–J11, FIG. 6 of J10–J11 and FIG. 4 were recorded from their text layers (labels, axes, captions) only; the curve shapes and drawings themselves were not viewed.
- K-matrix coupling entries (K13–K25): in the text layer the velocity fraction and the bracket of U-derivatives are stacked on separate lines, so the exact grouping of the large parentheses (whether (t_i − t_j) multiplies only the velocity fraction or the whole bracket) is recorded here as best read; the PDF glyphs for these displays were not viewed page-by-page and should be checked before any reuse.
- The stacked-fraction text artefacts "QΠ = gΠ + 2i ΩΠ" (J03–J06) and "lim ∆w1 Clower" (J10–J11) were transcribed as (i/2) and (1/Δw) respectively on the strength of the J06 figure image and the J07–J09 text layout; noted here so the reading can be re-checked.
- Other files present in `/home/claude/bh_recovery/drive/older/` and `/home/claude/bh_recovery/text/` but outside this assignment were not read: blkhole_v2_final.pdf/.txt, infographic_hairdresser_corrected.png, "2026-08-16 Suns paper v1.5 (tex).zip", bh_paper_v8_5_1.txt, bh_paper_v10.txt, the mixer and HTML files.
- No tests, scripts or computations were run; no web access was used; no file other than this ledger was modified.
