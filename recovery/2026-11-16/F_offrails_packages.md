# LEDGER F — the two "off-rails" packages (30–31 Oct 2026)

Reader: Phase-1 full-read agent F. Written 2026-11-16. Rules followed: `/home/claude/bh_recovery/ledgers/READING_RULES.md`.

**STANDING WARNING.** Both packages were produced on 30–31 October 2026 by another AI that, in Jeromie Beasley's words, "went off the rails". NOTHING in them is authoritative. Every item below that comes from these packages carries, or inherits from its section heading, the tag **[UNTRUSTED SOURCE - needs re-test]**. This ledger records only what the packages SAY. I ran none of their scripts, performed no computation of my own, did not use the web, and changed no file other than this ledger. The only tools used beyond reading were `find`, `grep`, `diff`, `cmp`, `wc`, and a tag-stripping text extraction of the one HTML deliverable (all allowed by the assignment).

Packages:
- P1 = `/home/claude/bh_recovery/extracted/Recovered_Useful_Work_20261031/` (81 files)
- P2 = `/home/claude/bh_recovery/extracted/Neutrino_Research_Reading_Notes_and_Checks_20261030/` (210 files)

Paper outputs used for comparison (the paper's own saved outputs, NOT part of the untrusted packages):
- `/home/claude/bh_recovery/extracted/bh_v10_code_and_sources/bh_v10_code_and_sources/checks/*.out` and `.../rs/*.out`

Grades: the packages mostly give no formal grade to their own statements; where they do (e.g. "exact", "structural", "conjectural", "PASS", "KILL") the word is kept. Where nothing is stated: "no grade given".

Contents of this ledger
- Part A — Package P1 (Recovered_Useful_Work_20261031)
- Part B — Package P2 (Neutrino_Research_Reading_Notes_and_Checks_20261030)
  - B1 README.txt
  - B2 review/black_hole_reading.md (verbatim, then section-by-section itemisation)
  - B3 review/bh_agent/ (counterexample JSON, 28 fresh-check logs verbatim, line-by-line diff against the paper's own outputs)
  - B4 review/archive_replay/
  - B5 two_book_flow_check.*, shear_stationarity_check.json
  - B6 current_papers_index, final_*_check.txt, archive_completion.md, corpus_discovery.md
  - B7 every other file with a black-hole hit (sections read, and what was not read)
  - B8 deliverables/…html
  - B9 JSON manifests/inventories
- Part C — Register of every claim / criticism / "counterexample" / correction / recommendation about the black-hole paper, with target
- Part D — Disagreements
- Part E — Not read / partially read / problems

---

# PART A — Package P1: Recovered_Useful_Work_20261031  [UNTRUSTED SOURCE - needs re-test]

## A1. START_HERE.txt (2,492 B, 44 lines) — read in full: YES

Title: "RECOVERED USEFUL WORK — 31 OCTOBER 2026". No black-hole-paper content. Verbatim (whole file):

```
RECOVERED USEFUL WORK — 31 OCTOBER 2026

This is a focused extraction of existing work, with the supplied neutrino Python
sources added alongside the recorded outputs. No scientific calculation was run
for this recovery. Files are preserved as found, rather than rewritten.

1. EXACT FINITE-MATRIX PROOF AND CODE
review/two_book_flow_check.md gives the cyclic-trace proof for both derivatives
under Kdot=-2[[K,K†],K]. The .py is a standalone NumPy diagnostic; the .json
contains the previous 80-matrix results. This verifies a formula already present
as a candidate in the research record; it is not a claim of new discovery.

2. NEUTRINO RESPONSE COUNTEREXAMPLE
review/shear_stationarity_check.json preserves the exact three-moment result:
R00=32/37 and derivative with respect to shear rate=-5/1369, while the derivative
of commutator energy is zero at that same point. This blocks inference of response
stationarity from energy stationarity. It does not settle a nonlinear threshold.

3. NEUTRINO EXECUTION OUTPUTS AND ORIGINAL PYTHON SOURCES
review/neutrino_agent/rerun contains recorded outputs, comparisons and the
execution manifest for the prior 18-script reproduction. The retained-mode
prediction is 0.2460986677, versus the saved nonlinear result about0.317.
The original_neutrino_code directory contains all supplied Python source files.
Some programs require the original package's data, SIMDIR, dependencies or
runtime resources; this extraction is not a fully installed simulation environment.
No fresh nonlinear general-relativity threshold simulation was performed.

4. PINNED UPSTREAM CODE
review/mccormick_upstream contains retrieved simulation code, baseline JSONs,
README, citation and license at commit41a0f83b8792b04190dd8ea99cd97dec5efe02a5.

5. OTHER RECOVERED SMALL CHECKS
The Price Fourier-kernel algebra check and independent connection-energy/prime
checks retain their previous results. They are scoped algebra/data diagnostics,
not full replays or repairs of those entire papers.

The larger existing archive remains available as:
Neutrino_Research_Reading_Notes_and_Checks_20261030.zip
Library identity:libfile_e32a238c4f00819195ba58be63730468
Its 210 entries passed ZIP integrity and all209 payload hashes during recovery.
That integrity check establishes recoverability; it does not substantiate every
historical reading claim or account for the12-hour session duration.

RECOVERY_SHA256.json records the exact extracted bytes. Originals were not edited.
```

Items recorded from START_HERE.txt (all [UNTRUSTED SOURCE - needs re-test]; none targets the black-hole paper directly):
- Line 3–5: "No scientific calculation was run for this recovery. Files are preserved as found, rather than rewritten."
- §1 (l.7–11): `review/two_book_flow_check.md` "gives the cyclic-trace proof for both derivatives under Kdot=-2[[K,K†],K]"; ".json contains the previous 80-matrix results"; "This verifies a formula already present as a candidate in the research record; it is not a claim of new discovery." Grade given by source: "proof" (cyclic trace), "diagnostic" (.py).
- §2 (l.13–17) "NEUTRINO RESPONSE COUNTEREXAMPLE": "R00=32/37 and derivative with respect to shear rate=-5/1369, while the derivative of commutator energy is zero at that same point. This blocks inference of response stationarity from energy stationarity. It does not settle a nonlinear threshold." Target: the neutrino paper's split-rate commutator-energy reading (not the black-hole paper).
- §3 (l.19–26): "prior 18-script reproduction"; "The retained-mode prediction is 0.2460986677, versus the saved nonlinear result about0.317." "No fresh nonlinear general-relativity threshold simulation was performed."
- §4 (l.28–30): McCormick upstream code "at commit41a0f83b8792b04190dd8ea99cd97dec5efe02a5".
- §5 (l.32–35): "Price Fourier-kernel algebra check and independent connection-energy/prime checks retain their previous results. They are scoped algebra/data diagnostics, not full replays or repairs of those entire papers."
- l.37–42: larger archive "Neutrino_Research_Reading_Notes_and_Checks_20261030.zip", "Library identity:libfile_e32a238c4f00819195ba58be63730468", "Its 210 entries passed ZIP integrity and all209 payload hashes during recovery. That integrity check establishes recoverability; it does not substantiate every historical reading claim or account for the12-hour session duration."
- l.44: "RECOVERY_SHA256.json records the exact extracted bytes. Originals were not edited."

## A2. RECOVERY_SHA256.json (13,048 B) — read in full: YES

A JSON map `relative path -> {bytes, sha256}`. It lists 80 files: every file of the package except itself (8 under `review/mccormick_upstream/`, 23 under `review/neutrino_agent/rerun/`, 2 under `review/nonnormality_checks/`, `review/nonnormality_independent_checks.py`, `review/shear_stationarity_check.json`, `review/transport_agent/price_kernel_algebra_check.json`, 3 `review/two_book_flow_check.*`, 40 under `original_neutrino_code/`, and `START_HERE.txt`). Byte sizes in the JSON agree with the on-disk sizes listed in A3 (compared by eye against the `find` listing; hashes NOT recomputed by me). No black-hole content.

## A3. Every file in the package (size in bytes, path) — from `find`

```
   13048  Recovered_Useful_Work_20261031/RECOVERY_SHA256.json
    2492  Recovered_Useful_Work_20261031/START_HERE.txt
    1129  Recovered_Useful_Work_20261031/original_neutrino_code/bisect_beyond.py
    1492  Recovered_Useful_Work_20261031/original_neutrino_code/csl_checks/k0_consistency.py
    3785  Recovered_Useful_Work_20261031/original_neutrino_code/csl_checks/k1_hypothesis_audit.py
    2415  Recovered_Useful_Work_20261031/original_neutrino_code/csl_checks/k2_rate_vs_direction.py
    2814  Recovered_Useful_Work_20261031/original_neutrino_code/csl_checks/k3_ep_crossing.py
    4551  Recovered_Useful_Work_20261031/original_neutrino_code/csl_checks/k4_kinematic_transport.py
    4071  Recovered_Useful_Work_20261031/original_neutrino_code/csl_checks/k5_shape_and_table3.py
    3774  Recovered_Useful_Work_20261031/original_neutrino_code/csl_checks/k6_diffusion_leader.py
    1527  Recovered_Useful_Work_20261031/original_neutrino_code/csl_checks/k7_split_rate_connection_energy.py
    1065  Recovered_Useful_Work_20261031/original_neutrino_code/fixed.py
     792  Recovered_Useful_Work_20261031/original_neutrino_code/linear_solver/centre.py
    1158  Recovered_Useful_Work_20261031/original_neutrino_code/linear_solver/grad.py
    2748  Recovered_Useful_Work_20261031/original_neutrino_code/linear_solver/lin.py
    2795  Recovered_Useful_Work_20261031/original_neutrino_code/linear_solver/steve_checks.py
    1974  Recovered_Useful_Work_20261031/original_neutrino_code/main/identities.py
     511  Recovered_Useful_Work_20261031/original_neutrino_code/main/lone_pass_check.py
    4252  Recovered_Useful_Work_20261031/original_neutrino_code/main/make_figures.py
    1334  Recovered_Useful_Work_20261031/original_neutrino_code/main/memory_curve.py
    2684  Recovered_Useful_Work_20261031/original_neutrino_code/osl_checks/osl_a_bound_on_streaming.py
    2325  Recovered_Useful_Work_20261031/original_neutrino_code/osl_checks/osl_b_ep_full_operator.py
    4364  Recovered_Useful_Work_20261031/original_neutrino_code/osl_checks/osl_c_speed_contest_eos.py
     885  Recovered_Useful_Work_20261031/original_neutrino_code/osl_checks/osl_d2_one_parameter_scan.py
    3510  Recovered_Useful_Work_20261031/original_neutrino_code/osl_checks/osl_d_G_curve_tests.py
    2209  Recovered_Useful_Work_20261031/original_neutrino_code/osl_checks/osl_e2_scan_other_times.py
    8546  Recovered_Useful_Work_20261031/original_neutrino_code/osl_checks/osl_e_linear_two_clock.py
     878  Recovered_Useful_Work_20261031/original_neutrino_code/osl_checks/osl_f_rapidity_identity.py
     791  Recovered_Useful_Work_20261031/original_neutrino_code/repair.py
    4279  Recovered_Useful_Work_20261031/original_neutrino_code/run_nuc_n.py
    1336  Recovered_Useful_Work_20261031/original_neutrino_code/trisect_beyond.py
    5414  Recovered_Useful_Work_20261031/original_neutrino_code/wb_checks/src/bridge_checks.py
   13188  Recovered_Useful_Work_20261031/original_neutrino_code/wb_checks/src/make_figures.py
    6127  Recovered_Useful_Work_20261031/original_neutrino_code/wb_checks/src/weight_between_core_checks.py
    1959  Recovered_Useful_Work_20261031/original_neutrino_code/wb_checks/wb_lin.py
   10202  Recovered_Useful_Work_20261031/original_neutrino_code/wb_checks/wb_steve_01_algebra.py
    4670  Recovered_Useful_Work_20261031/original_neutrino_code/wb_checks/wb_steve_02_linear.py
    3898  Recovered_Useful_Work_20261031/original_neutrino_code/wb_checks/wb_steve_03_paper_objects.py
    5431  Recovered_Useful_Work_20261031/original_neutrino_code/wb_checks/wb_steve_04_channels.py
    4611  Recovered_Useful_Work_20261031/original_neutrino_code/wb_checks/wb_steve_05_mixture.py
    2634  Recovered_Useful_Work_20261031/original_neutrino_code/wb_checks/wb_steve_06_opposites.py
    2007  Recovered_Useful_Work_20261031/original_neutrino_code/wb_checks/wb_steve_07_history.py
    1181  Recovered_Useful_Work_20261031/review/mccormick_upstream/CITATION.cff
    1075  Recovered_Useful_Work_20261031/review/mccormick_upstream/LICENSE
   11579  Recovered_Useful_Work_20261031/review/mccormick_upstream/README.md
    5918  Recovered_Useful_Work_20261031/review/mccormick_upstream/simulation__ms_nuc.py
     269  Recovered_Useful_Work_20261031/review/mccormick_upstream/simulation__res_dec_2.0.json
     461  Recovered_Useful_Work_20261031/review/mccormick_upstream/simulation__res_fl_q03.json
     471  Recovered_Useful_Work_20261031/review/mccormick_upstream/simulation__res_nu409_q03.json
    4242  Recovered_Useful_Work_20261031/review/mccormick_upstream/simulation__run_nuc.py
     965  Recovered_Useful_Work_20261031/review/neutrino_agent/rerun/bridge_checks_rerun.txt
     389  Recovered_Useful_Work_20261031/review/neutrino_agent/rerun/duplicate_report_check.json
    3566  Recovered_Useful_Work_20261031/review/neutrino_agent/rerun/fixed_rerun.txt
     559  Recovered_Useful_Work_20261031/review/neutrino_agent/rerun/history_rerun.txt
    1145  Recovered_Useful_Work_20261031/review/neutrino_agent/rerun/identities_rerun.txt
     472  Recovered_Useful_Work_20261031/review/neutrino_agent/rerun/k0_consistency_rerun.txt
     526  Recovered_Useful_Work_20261031/review/neutrino_agent/rerun/k2_rate_vs_direction_rerun.txt
     950  Recovered_Useful_Work_20261031/review/neutrino_agent/rerun/k3_ep_crossing_rerun.txt
    2386  Recovered_Useful_Work_20261031/review/neutrino_agent/rerun/k5_shape_and_table3_rerun.txt
    1533  Recovered_Useful_Work_20261031/review/neutrino_agent/rerun/k6_diffusion_leader_rerun.txt
     458  Recovered_Useful_Work_20261031/review/neutrino_agent/rerun/k7_split_rate_connection_energy_rerun.txt
     124  Recovered_Useful_Work_20261031/review/neutrino_agent/rerun/lone_pass_check_rerun.txt
    1217  Recovered_Useful_Work_20261031/review/neutrino_agent/rerun/npz_inventory.json
    1052  Recovered_Useful_Work_20261031/review/neutrino_agent/rerun/osl_a_bound_on_streaming_rerun.txt
    1033  Recovered_Useful_Work_20261031/review/neutrino_agent/rerun/osl_c_speed_contest_eos_rerun.txt
     231  Recovered_Useful_Work_20261031/review/neutrino_agent/rerun/osl_d2_one_parameter_scan_rerun.txt
    2246  Recovered_Useful_Work_20261031/review/neutrino_agent/rerun/osl_d_G_curve_tests_rerun.txt
     182  Recovered_Useful_Work_20261031/review/neutrino_agent/rerun/osl_f_rapidity_identity_rerun.txt
    2374  Recovered_Useful_Work_20261031/review/neutrino_agent/rerun/output_comparison.json
    1510  Recovered_Useful_Work_20261031/review/neutrino_agent/rerun/rerun_manifest.json
    1145  Recovered_Useful_Work_20261031/review/neutrino_agent/rerun/saved_npz_readout_rerun.txt
    1562  Recovered_Useful_Work_20261031/review/neutrino_agent/rerun/steve_checks_rerun.txt
     507  Recovered_Useful_Work_20261031/review/neutrino_agent/rerun/weight_between_core_checks_rerun.txt
    6993  Recovered_Useful_Work_20261031/review/nonnormality_checks/37a1_point_counts.csv
    1119  Recovered_Useful_Work_20261031/review/nonnormality_checks/independent_results.json
    4180  Recovered_Useful_Work_20261031/review/nonnormality_independent_checks.py
     463  Recovered_Useful_Work_20261031/review/shear_stationarity_check.json
     266  Recovered_Useful_Work_20261031/review/transport_agent/price_kernel_algebra_check.json
     877  Recovered_Useful_Work_20261031/review/two_book_flow_check.json
    2074  Recovered_Useful_Work_20261031/review/two_book_flow_check.md
    1362  Recovered_Useful_Work_20261031/review/two_book_flow_check.py
```

## A4. Files matched by the black-hole grep pattern — each READ IN FULL

Pattern used: `black.?hole|horizon|bh_|hairdresser|rigidity|kerr|schwarzschild|qnm|isco|photon ring` (case-insensitive). 14 files matched. **None concerns Jeromie's black-hole paper, its horizons, or its checks.** Every match is either (a) primordial-black-hole (PBH) neutrino material of Stephen McCormick / the neutrino paper, or (b) a false positive (the letters "isco" inside "discovery"/"viscous"/"viscosity").

| File (read in full) | Size | What matched | What the file is (from its own header/text) |
|---|---:|---|---|
| START_HERE.txt | 2,492 | "d**isco**very" (l.11) — false positive | see A1 |
| review/mccormick_upstream/CITATION.cff | 1,181 | "primordial black hole" (l.4, 13, 21); "P**BH_**neutrino_simulation" (l.9) | Citation metadata: title "Code for: Free-streaming neutrinos raise the threshold for primordial black hole formation"; author Stephen McCormick, Luleå University of Technology; MIT; abstract says code "was generated by the AI system Claude Opus 5.5 (Anthropic) under the author's direction". neutrino/PBH material, not Jeromie's black-hole paper. |
| review/mccormick_upstream/README.md | 11,579 | "primordial black hole" (l.1); `PBH_USETEX` (l.26); `bh_mass.py`, `bh_accrete.py` "Apparent-horizon masses near threshold (Table III)" (l.56); "Table III (black-hole masses)" (l.67) | McCormick's upstream README (quick start, requirements, layout, module table, reproduction commands, runtime, which file holds which number). The `bh_*.py` names are McCormick's PBH mass scripts and are NOT in this package and NOT Jeromie's `bh_*` check scripts. |
| original_neutrino_code/repair.py | 791 | "v**isco**us" (l.1) — false positive | `# SCRIPT: CONN-ENERGY-STEVE-02  viscous-side repair, forms fixed before the run`; three candidate forms for McCormick's G curve. neutrino material. |
| original_neutrino_code/csl_checks/k3_ep_crossing.py | 2,814 | "apparent-horizon time eps_AH = 4.0" (l.8) | `# SCRIPT: K3-EP-CROSSING-AND-G`; two-moment operator exceptional point under kappa = H (e_dec/e)^3; claim to test "eps_EP = (sqrt3/4)^(1/4) e_dec^(3/4) = 0.811 e_dec^0.75 (earlier note: 0.658 e_dec^1.5)"; KILL conditions written in header. neutrino material. |
| original_neutrino_code/csl_checks/k4_kinematic_transport.py | 4,551 | "Steve's PF apparent-horizon time" (l.10) | `# SCRIPT: K4-KINEMATIC-LEAKY-TRANSPORT`; gravity-free linear kinematics of McCormick's collision model; KILL: max_i |G_K4 − G_pub| > 0.10. neutrino material. |
| original_neutrino_code/csl_checks/k6_diffusion_leader.py | 3,774 | "apparent-horizon time" (l.10) | `# SCRIPT: K6-DIFFUSIVE-LEADER-G-CURVE`; header "STATUS DISCLOSURE: this model was written AFTER the Table II G column had been read". neutrino material. |
| original_neutrino_code/osl_checks/osl_c_speed_contest_eos.py | 4,364 | "horizon temperature from mass" (l.34) | `# SCRIPT: OSL-STEVE-C-SPEED-CONTEST-EOS`; speed-contest reading with kill conditions KC0–KC2. neutrino material. |
| original_neutrino_code/osl_checks/osl_d_G_curve_tests.py | 3,510 | "apparent horizons" (l.7) | `# SCRIPT: OSL-STEVE-D-G-CURVE-TESTS`; models M1–M3 for G(eps_dec). neutrino material. |
| original_neutrino_code/osl_checks/osl_d2_one_parameter_scan.py | 885 | "last apparent-horizon epoch 4.5" (l.4) | `# SCRIPT: OSL-STEVE-D2-ONE-PARAMETER-SCAN`; "ONE free parameter eps*, so a pass here is a fit, not a prediction". neutrino material. |
| original_neutrino_code/osl_checks/osl_e_linear_two_clock.py | 8,546 | "superhorizon" (l.4), "apparent-horizon epochs" (l.14), "horizon-entry maximum" (l.75) | `# SCRIPT: OSL-STEVE-E-LINEAR-TWO-CLOCK` (v2); linear Boltzmann solver, diagnostics DS/DSG/D1. neutrino material. |
| original_neutrino_code/osl_checks/osl_e2_scan_other_times.py | 2,209 | "4.0-4.5 horizon" (l.5) | `# SCRIPT: OSL-STEVE-E2-SCAN-OTHER-TIMES`; "Opposite / other-time run of Check E (rule: never call an eye dead from one setup)". neutrino material. |
| original_neutrino_code/wb_checks/wb_steve_02_linear.py | 4,670 | "superhorizon" (l.7, 31), "apparent horizon 4.0" (l.13) | `# SCRIPT: WB-STEVE-02-LINEAR`; Ma–Bertschinger linear solver; kill conditions V1, D1–D3, H1. neutrino material. |
| original_neutrino_code/wb_checks/wb_steve_04_channels.py | 5,431 | "v**isco**sity weight" (l.11) — false positive | `# SCRIPT: WB-STEVE-04-CHANNELS`; non-normality channels of a multi-rate collision operator; kill conditions C1, E1. neutrino material. |

Conclusion for P1 (a statement about what the files contain, not a judgment): P1 holds **no file about the black-hole paper**. Its only overlap with the black-hole recovery is the two-book flow note (A6), which concerns the connection-energy/FOFT flow, not the black-hole paper.

## A5. Remaining P1 files — "neutrino material, not black-hole; header only" (NOT read in full)

Each line: path (bytes) — one-line statement taken from the file's own first lines.

- original_neutrino_code/bisect_beyond.py (1,129) — `# SCRIPT: BEYOND-STEVE-BISECT  threshold bisection with gradual decoupling, profile alpha and rate exponent as inputs`. neutrino material, not black-hole; header only.
- original_neutrino_code/trisect_beyond.py (1,336) — `# SCRIPT: BEYOND-STEVE-TRISECT  two trial amplitudes per round in parallel (thirds of the bracket)`. header only.
- original_neutrino_code/run_nuc_n.py (4,279) — no SCRIPT header; begins `import numpy as np, time / from ms_nuc import rhs, state, timestep, rho_b / from ms_fluid import initial_data, make_grid` (modified McCormick runner). header only.
- original_neutrino_code/fixed.py (1,065) — `# SCRIPT: CONN-ENERGY-STEVE-04  corrected scaling k/(aH) = k r_m * eps`. header only.
- original_neutrino_code/csl_checks/k0_consistency.py (1,492) — `# SCRIPT: K0-STEVE-ARITHMETIC`; "check which Steve numbers follow from his own Eq.(15) alone". header only.
- original_neutrino_code/csl_checks/k1_hypothesis_audit.py (3,785) — `# SCRIPT: K1-THEOREM2-HYPOTHESIS-AUDIT`; whether paper Thm 2 (Perron leader) applies to Steve's transport operator. header only.
- original_neutrino_code/csl_checks/k2_rate_vs_direction.py (2,415) — `# SCRIPT: K2-RATE-VS-DIRECTION-IN-R_NU`. header only.
- original_neutrino_code/csl_checks/k5_shape_and_table3.py (4,071) — `# SCRIPT: K5-SHAPE-AND-TABLE3`. header only.
- original_neutrino_code/csl_checks/k7_split_rate_connection_energy.py (1,527) — `# SCRIPT: K7-SPLIT-RATE-NONNORMALITY`. header only.
- original_neutrino_code/linear_solver/centre.py (792) — `# SCRIPT: LIN-FS-02  central density first-maximum factor for the Gaussian profile, vs decoupling time`. header only.
- original_neutrino_code/linear_solver/grad.py (1,158) — `# SCRIPT: LIN-FS-03  central first-max factor vs gradual decoupling kappa=H(eps_dec/eps)^3`. header only.
- original_neutrino_code/linear_solver/lin.py (2,748) — `# SCRIPT: LIN-FS-01  linear free-streaming + relaxation collisions, radiation era, Newtonian gauge (Ma-Bertschinger)`. header only.
- original_neutrino_code/linear_solver/steve_checks.py (2,795) — `# SCRIPT: STEVE-TABLES-01  consistency checks on McCormick's published tables (no new physics)`. header only.
- original_neutrino_code/main/identities.py (1,974) — `# SCRIPT: PBH-NU-IDENTITIES  checks of every derived identity used in the paper`. header only.
- original_neutrino_code/main/lone_pass_check.py (511) — `# SCRIPT: PBH-NU-LONE-PASS  the one rate-ratio form that passed (1 of 32) tested on Test B, which it never saw`. header only.
- original_neutrino_code/main/make_figures.py (4,252) — `# SCRIPT: PBH-NU-FIGURES  draws the three figures from the run results and the memory curves`. header only.
- original_neutrino_code/main/memory_curve.py (1,334) — `# SCRIPT: PBH-NU-MEMORY-CURVE  kept-sector survival (memory form) curves for the figures; same object as WB-STEVE-07`. header only.
- original_neutrino_code/osl_checks/osl_a_bound_on_streaming.py (2,684) — `# SCRIPT: OSL-STEVE-A-BOUND-ON-STREAMING`. header only.
- original_neutrino_code/osl_checks/osl_b_ep_full_operator.py (2,325) — `# SCRIPT: OSL-STEVE-B-EP-FULL-OPERATOR`. header only.
- original_neutrino_code/osl_checks/osl_f_rapidity_identity.py (878) — `# SCRIPT: OSL-STEVE-F-RAPIDITY-IDENTITY`. header only.
- original_neutrino_code/wb_checks/src/bridge_checks.py (5,414) — `# SCRIPT: BRIDGE-CHECKS-01`. header only.
- original_neutrino_code/wb_checks/src/make_figures.py (13,188) — `# SCRIPT: WEIGHT-BETWEEN-FIGURES-01`. header only.
- original_neutrino_code/wb_checks/src/weight_between_core_checks.py (6,127) — `# SCRIPT: WEIGHT-BETWEEN-CORE-01`. header only.
- original_neutrino_code/wb_checks/wb_lin.py (1,959) — `# SCRIPT: WB-LIN-MODULE (solver copied verbatim from WB-STEVE-02-LINEAR)`. header only.
- original_neutrino_code/wb_checks/wb_steve_01_algebra.py (10,202) — `# SCRIPT: WB-STEVE-01-ALGEBRA`. header only.
- original_neutrino_code/wb_checks/wb_steve_03_paper_objects.py (3,898) — `# SCRIPT: WB-STEVE-03-PAPER-OBJECTS`. header only.
- original_neutrino_code/wb_checks/wb_steve_05_mixture.py (4,611) — `# SCRIPT: WB-STEVE-05-MIXTURE`. header only.
- original_neutrino_code/wb_checks/wb_steve_06_opposites.py (2,634) — `# SCRIPT: WB-STEVE-06-OPPOSITES`. header only.
- original_neutrino_code/wb_checks/wb_steve_07_history.py (2,007) — `# SCRIPT: WB-STEVE-07-HISTORY`. header only.
- review/mccormick_upstream/LICENSE (1,075) — "MIT License / Copyright (c) 2026 Stephen McCormick". header only.
- review/mccormick_upstream/simulation__ms_nuc.py (5,918) — docstring "Misner-Sharp perfect fluid (p = e/3) + massless free-streaming neutrinos…". header only.
- review/mccormick_upstream/simulation__run_nuc.py (4,242) — begins with the same three import lines as run_nuc_n.py. header only.
- review/mccormick_upstream/simulation__res_dec_2.0.json (269) — `{"eps_dec": 2.0, "dc": 0.5109179687499998, "w": 0.0003515625000000133, "log": [[0.5125, "BH"], …` (here "BH"/"dispersed" are McCormick's collapse outcomes). first line only.
- review/mccormick_upstream/simulation__res_fl_q03.json (461) — `{"tag": "fl_q03", "fnu": 0.0, … "dc": 0.44804687499999996, …`. first line only.
- review/mccormick_upstream/simulation__res_nu409_q03.json (471) — `{"tag": "nu409_q03", "fnu": 0.409, … "dc": 0.47747070312500006, …`. first line only.
- review/neutrino_agent/rerun/*.txt and *.json (23 files: bridge_checks_rerun.txt 965; duplicate_report_check.json 389; fixed_rerun.txt 3,566; history_rerun.txt 559; identities_rerun.txt 1,145; k0_consistency_rerun.txt 472; k2_rate_vs_direction_rerun.txt 526; k3_ep_crossing_rerun.txt 950; k5_shape_and_table3_rerun.txt 2,386; k6_diffusion_leader_rerun.txt 1,533; k7_split_rate_connection_energy_rerun.txt 458; lone_pass_check_rerun.txt 124; npz_inventory.json 1,217; osl_a_bound_on_streaming_rerun.txt 1,052; osl_c_speed_contest_eos_rerun.txt 1,033; osl_d2_one_parameter_scan_rerun.txt 231; osl_d_G_curve_tests_rerun.txt 2,246; osl_f_rapidity_identity_rerun.txt 182; output_comparison.json 2,374; rerun_manifest.json 1,510; saved_npz_readout_rerun.txt 1,145; steve_checks_rerun.txt 1,562; weight_between_core_checks_rerun.txt 507) — recorded outputs of that AI's reruns of the neutrino scripts. Only the first four lines of each were looked at. neutrino material, not black-hole; header only.
- review/nonnormality_checks/37a1_point_counts.csv (6,993) — header row `p,N,ap,rho,nonzero,positive_preimage`. header only.
- review/nonnormality_checks/independent_results.json (1,119) — `"scope": "Independent targeted numerical checks, not archive reproductions or formal proofs"`. header only.
- review/nonnormality_independent_checks.py (4,180) — docstring "Independent finite checks from the v15 manuscript, not its archived scripts." header only.
- review/transport_agent/price_kernel_algebra_check.json (266) — begins `{"printed": {"relative_hermiticity_defect": 0.7511309163614385, "relative_idempotency_defect": 0.32284985331399707`. first lines only.

## A6. Files in P1 that are byte-identical to files in P2

`cmp` shows these four P1 files are byte-identical to the same-named files in P2/review/: `two_book_flow_check.md`, `two_book_flow_check.py`, `two_book_flow_check.json`, `shear_stationarity_check.json`. They are recorded once, under B5. (The P1 `review/mccormick_upstream/*`, `review/neutrino_agent/rerun/*`, `review/nonnormality_*` and `review/transport_agent/price_kernel_algebra_check.json` have the same names and sizes as their P2 counterparts; byte-identity of those was not checked.)

---

# PART B — Package P2: Neutrino_Research_Reading_Notes_and_Checks_20261030  [UNTRUSTED SOURCE - needs re-test]

Complete file list of P2 (size, path):

```
    1860  Neutrino_Research_Reading_Notes_and_Checks_20261030/README.txt
   32494  Neutrino_Research_Reading_Notes_and_Checks_20261030/SHA256_MANIFEST.json
 1454985  Neutrino_Research_Reading_Notes_and_Checks_20261030/deliverables/Neutrino_Research_Reading_Record_20261030.html
    2007  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/applications_agent/source_manifest.json
    3074  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/archive_completion.md
   56683  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/archive_completion_audit.json
   27074  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/archive_full_addendum_2.md
   29653  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/archive_full_addendum_6.md
   14965  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/archive_full_coverage_1.json
   19257  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/archive_full_coverage_2.json
    6324  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/archive_full_coverage_2b.json
   15388  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/archive_full_coverage_3.json
   15725  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/archive_full_coverage_4.json
   28153  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/archive_full_coverage_5.json
   20657  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/archive_full_coverage_6.json
    7192  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/archive_full_coverage_6b.json
   49846  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/archive_full_reading_1.md
   65705  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/archive_full_reading_2.md
   33744  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/archive_full_reading_3.md
   38810  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/archive_full_reading_4.md
   35102  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/archive_full_reading_5.md
   82833  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/archive_full_reading_6.md
   10593  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/archive_parts/assignment_1.json
   11003  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/archive_parts/assignment_2.json
   10234  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/archive_parts/assignment_3.json
   11681  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/archive_parts/assignment_4.json
   20738  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/archive_parts/assignment_5.json
   13878  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/archive_parts/assignment_6.json
   12592  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/archive_parts/dedup_stats.json
   11745  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/archive_parts/exact_dedup_stats.json
   27507  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/archive_parts/manifest.json
   61389  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/archive_parts/reading_queue.json
   24092  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/archive_reading.md
     596  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/archive_replay/analysis/sun_blackholes/blackhole_independent_checks.json
    2257  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/archive_replay/blackhole_independent_checks.py
    2369  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/archive_replay/check_retention_model.py
     525  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/archive_replay/output/sun_blackholes/retention_checks.json
    3036  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/audit_archive_completion.py
    5265  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/audit_research_record_coverage.py
     564  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/bh_agent/davis_kahan_counterexample.json
    1132  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/bh_agent/fresh_checks/bh_bell_11.py.log
    3050  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/bh_agent/fresh_checks/bh_core_02.py.log
     254  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/bh_agent/fresh_checks/bh_drift_symmetrize_02.py.log
    1030  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/bh_agent/fresh_checks/bh_ep_spinor_04.py.log
     408  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/bh_agent/fresh_checks/bh_fold_parallel_01.py.log
    2579  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/bh_agent/fresh_checks/bh_isco_10.py.log
     542  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/bh_agent/fresh_checks/bh_isco_cube_17.py.log
    1005  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/bh_agent/fresh_checks/bh_knot_08.py.log
    1229  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/bh_agent/fresh_checks/bh_knot_14.py.log
    1647  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/bh_agent/fresh_checks/bh_lift_05.py.log
     234  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/bh_agent/fresh_checks/bh_matched_12.py.log
     216  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/bh_agent/fresh_checks/bh_nonnormal_04.py.log
     415  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/bh_agent/fresh_checks/bh_offset_15.py.log
    1765  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/bh_agent/fresh_checks/bh_petrov_06.py.log
    1797  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/bh_agent/fresh_checks/bh_qnm_13.py.log
    1143  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/bh_agent/fresh_checks/bh_qutrit_18.py.log
    1849  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/bh_agent/fresh_checks/bh_shadow_07.py.log
     713  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/bh_agent/fresh_checks/bh_spine_09.py.log
    1039  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/bh_agent/fresh_checks/bh_wall_03.py.log
     634  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/bh_agent/fresh_checks/bh_wall_check.py.log
      66  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/bh_agent/v10_fresh_checks/bh_noncommute_check.py.log
     589  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/bh_agent/v10_fresh_checks/bh_stiff_19.py.log
     313  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/bh_agent/v10_fresh_checks/photon_ring_wall.py.log
     647  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/bh_agent/v10_fresh_checks/rs02c_realization.py.log
     479  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/bh_agent/v10_fresh_checks/rs03c_linear_limit.py.log
      95  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/bh_agent/v10_fresh_checks/sine_guard_check.py.log
    1393  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/bh_agent/v10_fresh_checks/v10_corrections_check.py.log
    1031  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/bh_agent/v10_fresh_checks/v10_push_others.py.log
   23852  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/black_hole_reading.md
   21963  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/build_learning_record.mjs
    8115  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/build_reading_packet.py
    5414  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/colour_checks/bridge_checks.py
    4738  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/colour_checks/cl1_colour_selects_leader.py
    6099  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/colour_checks/color_projector_check.py
     959  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/colour_checks/leader_fresh.log
   16969  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/colour_reading.md
   54808  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/corpus_applications_reading.md
   34823  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/corpus_boundary_music_reading.md
   12409  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/corpus_discovery.md
   37616  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/corpus_discrete_reading.md
   35053  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/corpus_geometry_reading.md
   39177  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/corpus_gravity_reading.md
   32893  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/corpus_transport_reading.md
  176483  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/corpus_version_inventory.json
   10385  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/current_papers_index_20261013_read.md
   42591  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/dirac_reading.md
    4477  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/discrete_sources/reading_manifest.json
    1901  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/extract_archive.py
    1961  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/extract_nonnormality.py
    8151  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/extract_research_record.py
   14305  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/final_coverage_check.txt
    7856  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/final_delivery_scope_check.txt
    6160  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/final_synthesis_check.txt
     578  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/geometry_agent/source_ids.json
    1466  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/gravity_agent/source_manifest.json
   15061  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/indexed_family_coverage.json
  216267  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/inventory.json
    2611  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/iqgt_agent/independent_probes.py
     663  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/iqgt_agent/rerun/app_checks_v2.log
     614  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/iqgt_agent/rerun/independent_probes.log
     163  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/iqgt_agent/rerun/polariton_check.log
      88  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/iqgt_agent/rerun/prop35_check.log
    1635  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/iqgt_agent/rerun/rigidity_checks.log
     483  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/iqgt_agent/rerun/s10_checks.log
     107  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/iqgt_agent/rerun/s10_swap_check_v2.log
     705  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/iqgt_agent/rerun/s12_checks.log
    2528  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/iqgt_agent/rerun/s2_checks_v2.log
    1118  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/iqgt_agent/rerun/s3_checks.log
    1204  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/iqgt_agent/rerun/s4_checks_v2.log
    2311  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/iqgt_agent/rerun/s5s6_checks_v2.log
    1099  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/iqgt_agent/rerun/s7_checks_v2.log
    1592  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/iqgt_agent/rerun/s8_checks.log
     280  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/iqgt_agent/rerun/s8_fold_check.log
    1360  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/iqgt_agent/rerun/s9_checks_v2.log
     561  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/iqgt_agent/rerun/silent_order_check.log
     299  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/iqgt_agent/rerun/sofic_bridge.log
     361  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/iqgt_agent/rerun/spin1_kahler_check.log
    1031  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/iqgt_agent/rerun/spinj_check.log
   16946  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/iqgt_reading.md
   27410  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/light_reading.md
    1181  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/mccormick_upstream/CITATION.cff
    1075  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/mccormick_upstream/LICENSE
   11579  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/mccormick_upstream/README.md
    5918  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/mccormick_upstream/simulation__ms_nuc.py
     269  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/mccormick_upstream/simulation__res_dec_2.0.json
     461  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/mccormick_upstream/simulation__res_fl_q03.json
     471  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/mccormick_upstream/simulation__res_nu409_q03.json
    4242  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/mccormick_upstream/simulation__run_nuc.py
     965  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/neutrino_agent/rerun/bridge_checks_rerun.txt
     389  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/neutrino_agent/rerun/duplicate_report_check.json
    3566  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/neutrino_agent/rerun/fixed_rerun.txt
     559  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/neutrino_agent/rerun/history_rerun.txt
    1145  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/neutrino_agent/rerun/identities_rerun.txt
     472  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/neutrino_agent/rerun/k0_consistency_rerun.txt
     526  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/neutrino_agent/rerun/k2_rate_vs_direction_rerun.txt
     950  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/neutrino_agent/rerun/k3_ep_crossing_rerun.txt
    2386  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/neutrino_agent/rerun/k5_shape_and_table3_rerun.txt
    1533  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/neutrino_agent/rerun/k6_diffusion_leader_rerun.txt
     458  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/neutrino_agent/rerun/k7_split_rate_connection_energy_rerun.txt
     124  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/neutrino_agent/rerun/lone_pass_check_rerun.txt
    1217  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/neutrino_agent/rerun/npz_inventory.json
    1052  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/neutrino_agent/rerun/osl_a_bound_on_streaming_rerun.txt
    1033  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/neutrino_agent/rerun/osl_c_speed_contest_eos_rerun.txt
     231  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/neutrino_agent/rerun/osl_d2_one_parameter_scan_rerun.txt
    2246  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/neutrino_agent/rerun/osl_d_G_curve_tests_rerun.txt
     182  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/neutrino_agent/rerun/osl_f_rapidity_identity_rerun.txt
    2374  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/neutrino_agent/rerun/output_comparison.json
    1510  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/neutrino_agent/rerun/rerun_manifest.json
    1145  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/neutrino_agent/rerun/saved_npz_readout_rerun.txt
    1562  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/neutrino_agent/rerun/steve_checks_rerun.txt
     507  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/neutrino_agent/rerun/weight_between_core_checks_rerun.txt
   20059  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/neutrino_verification.md
    6993  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/nonnormality_checks/37a1_point_counts.csv
    1119  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/nonnormality_checks/independent_results.json
    4180  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/nonnormality_independent_checks.py
   24904  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/nonnormality_reading.md
   12580  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/offset_reading.md
    2182  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/qa_learning_record.py
     773  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/reading_record_qa.json
   26110  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/research_record_addendum_2.md
    5271  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/research_record_completion.md
   47789  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/research_record_completion_audit.json
   17382  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/research_record_coverage_1.json
   21470  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/research_record_coverage_2.json
    6257  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/research_record_coverage_2b.json
   21358  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/research_record_coverage_3.json
   17663  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/research_record_coverage_4.json
   18065  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/research_record_coverage_5.json
   19861  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/research_record_coverage_6.json
   13664  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/research_record_parts/assignment_1.json
   13342  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/research_record_parts/assignment_2.json
   15153  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/research_record_parts/assignment_3.json
   14407  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/research_record_parts/assignment_4.json
   13901  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/research_record_parts/assignment_5.json
   14253  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/research_record_parts/assignment_6.json
    1178  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/research_record_parts/assignments_summary.json
       2  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/research_record_parts/exact_duplicates.json
  155006  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/research_record_parts/exact_repeat_blocks.json
    3055  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/research_record_parts/extraction_summary.json
  116458  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/research_record_parts/figures/figure_00.png
  272400  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/research_record_parts/figures/figure_01.png
  144945  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/research_record_parts/figures/figure_02.png
  381482  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/research_record_parts/manifest.json
   75338  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/research_record_parts/reading_queue.json
   52783  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/research_record_parts/source_ranges.json
   36527  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/research_record_reading_1.md
   63887  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/research_record_reading_2.md
   53342  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/research_record_reading_3.md
   45874  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/research_record_reading_4.md
   39361  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/research_record_reading_5.md
   68336  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/research_record_reading_6.md
    3385  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/research_record_synthesis_check_2.txt
   22934  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/root_connection_notes.txt
     463  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/shear_stationarity_check.json
    4049  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/synthesis_check.txt
     266  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/transport_agent/price_kernel_algebra_check.json
    1942  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/transport_agent/source_coverage.json
     877  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/two_book_flow_check.json
    2074  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/two_book_flow_check.md
    1362  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/two_book_flow_check.py
   18896  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/upg_reading.md
    6965  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/votkp_agent/fresh_checks/check_reverse_peel.py
     296  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/votkp_agent/fresh_checks/energy_data.log
    2519  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/votkp_agent/fresh_checks/finite_controls.json
      28  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/votkp_agent/fresh_checks/finite_controls.log
    6835  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/votkp_agent/fresh_checks/finite_controls.py
      58  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/votkp_agent/fresh_checks/manifest_check.json
    2690  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/votkp_agent/fresh_checks/reverse_peel.log
    2690  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/votkp_agent/fresh_checks/reverse_peel_results.json
   19736  Neutrino_Research_Reading_Notes_and_Checks_20261030/review/votkp_reading.md
```

## B1. README.txt (1,860 B, 28 lines) — read in full: YES

Verbatim (whole file):

```
RESEARCH READING RECORD — JEROMIE BEASLEY
30 October 2026, America/Chicago

Open deliverables/Neutrino_Research_Reading_Record_20261030.html for the connected reading.
The review directory contains the complete reader notes, definitions, assumptions,
negative results, version corrections, and selected fresh verification evidence.
indexed_family_coverage.json maps the 28 indexed research families to their notes.
archive_completion_audit.json and archive_full_coverage_*.json track the historical pass.
research_record_completion_audit.json tracks the separate full Research Review source.

Scope: scientific reading of identified source versions is distinct from independent
proof, fresh simulation, and every external dataset. Read the per-source limits.
The original papers were not edited. No publication or external message was sent.
Some older notes document the first phase and its then-unread queue; the archive
completion supplement records the later pass and supersedes that queue's status.
The final Research Review supplement likewise supersedes that source's earlier
excerpt-only status. Neither supplement covers unnamed or absent original sources.

Provenance: exact source IDs, versions and hashes are retained. Historical absolute
workspace paths in notes describe the execution environment; packaged files retain
their review-relative paths where available. Original source files remain at their
linked Library/Drive locations. The raw search/transfer responses, signed URLs,
dependencies and caches are deliberately absent. This is not an all-code replication
environment. In particular, no fresh nonlinear GR threshold bisection was performed.

The upstream McCormick source excerpt is pinned to commit
41a0f83b8792b04190dd8ea99cd97dec5efe02a5 and includes its MIT license.
SHA256_MANIFEST.json covers all packaged files except itself.
```

Points to keep: the package's own README says "This is not an all-code replication environment" and "Some older notes document the first phase and its then-unread queue; the archive completion supplement records the later pass and supersedes that queue's status."

## B2. review/black_hole_reading.md (23,852 B, 232 lines) — read in full: YES  [UNTRUSTED SOURCE - needs re-test]

Title: "Black-hole thread: reading and verification record". Self-date: "Prepared 30 October 2026 (America/Chicago) from Jeromie Beasley's supplied edition 8.4 and recovered edition 10." Self-description: "This is a research reading record, not a claim that the work has been proved in a formal proof assistant or independently peer reviewed."

### B2.0 The whole file, verbatim

(Everything between the two rules below is the untrusted file's text, unmodified. Its notation writes inline maths as `(…)` and display maths as `\[…\]`.)

---8<--- begin verbatim black_hole_reading.md ---8<---

# Black-hole thread: reading and verification record

Prepared 30 October 2026 (America/Chicago) from Jeromie Beasley's supplied edition 8.4 and recovered edition 10. This is a research reading record, not a claim that the work has been proved in a formal proof assistant or independently peer reviewed.

## Sources, versions, and coverage

The attached `bh_paper_v8_4 (1).html` and `bh_v8_4_code_and_sources (1).zip` are the starting version. The later `review/corpus_sources/bh_paper_v10.html` and `bh_v10_code_and_sources.zip` identify themselves as **research edition 10, 20 October 2026**. They do not identify themselves as edition 10.1. The neutrino paper's reference to 10.1 therefore remains a version question.

I read the complete v8.4 LaTeX paper (main text, proofs, open problems and bibliography), rather than relying on the HTML's plain-text extraction, which omits SVG-rendered formulas. I then read every change and addition in v10, including all new equations and bibliography items, with the unchanged portions already read in v8.4. Both scientific papers are covered completely by that method. The complete differences are retained in `bh_agent/v10_all_changes.txt` and `v84_to_v10.diff`.

The archives were extracted into `review/bh_agent/` after path inspection. Original uploads and recovered files were preserved. The v10 archive contains 49 Python files, one JavaScript file, one TeX source, five Markdown documents, 33 saved `.out` logs, eight JSON files, twenty PNGs, two JPEGs, one NPZ and one HTML mixer source. I read all 49 Python sources, the JavaScript math renderer and complete mixer source. Shared files were read once; every changed line was read. I read both proof logs through their full old text plus complete new delta, both READMEs, the ideas ledger, and both internal preregistration documents. Saved log results were inspected, including the failed first solar-ladder run and failed RS gates. Numerical arrays and image binaries are supporting data, not individually interpreted observations; figures' captions and generating code were read. I did not conduct a full browser/layout review or rerun the complete HTML build.

`BH_PROOF_LOG_v7.md` says it covers **v8.5**, despite being bundled with v10. Its Lean sections are plans, not compiled Lean files. The mixer still identifies itself as research edition 8. Several older comments and explanatory labels remain less carefully scoped than the v10 paper. Treat the paper's current statements, not every inherited comment, as the current scientific position.

## What the work is actually building

The central object is the shape of a four-body configuration after translation, spatial rotation and scale have been removed. A mass-weighted, centered Jacobi matrix (X\in\mathbb R^{3\times3}) determines

\[
G=X^\top X\succeq0,\qquad \operatorname{Tr}G=1.
\]

The Gram matrix forgets orientation: a tetrahedron and its mirror can have the same (G). This space is also the real-qutrit density-matrix space. Its intrinsic kinetic metric is the Bures metric

\[
g_W(H,K)=\frac12\sum_{ij}\frac{H_{ij}K_{ij}}{w_i+w_j},
\]

in the eigenframe (W=\operatorname{diag}(w_i)), on symmetric trace-zero variations. The eigenvalue part is (\sum_i dw_i^2/(4w_i)). The substitution (w_i=\sigma_i^2), with the normalization constraint, gives a round sphere octant, not a flat manifold.

At a generic rank-two coplanar configuration, the signed singular value

\[
\sigma_3=\operatorname{sign}(\det X)\sqrt{w_3}
\]

resolves the orientation fold. The Gram coordinate is (w_3=\sigma_3^2): what looks like a bounce to the Gram observer is passage into the reflected orientation on the cover. A standard normal path has distance (\arcsin\sqrt\varepsilon) from (w_3=\varepsilon) to the wall. Rank two is regular on the orientation cover; the rank-one collinear stratum has a genuine quotient singularity. Rank strata are not the same as collision sets.

This is **shape geometry**, not a spacetime metric, causal structure or physical event horizon. The paper expressly says so, especially in v10.

## The transport, the wall, and what survives

For a diagonal scaling (T) in the same principal frame as (W), the transport is

\[
A(H)=TH+HT-2\operatorname{Tr}(TH)W.
\]

Let (D_T(H)=TH+HT), (P_WZ=Z-\operatorname{Tr}(Z)W) and (Q_W=I-P_W). Since (g_W(W,H)=\operatorname{Tr}(H)/4), (P_W) is the kinetic-metric orthogonal projection onto trace-zero variations. Consequently (A=P_WD_TP_W) is self-adjoint in that metric **when (T) and (W) share the eigenframe**. This is not a generic noncommuting theorem. Frobenius non-normality can coexist with kinetic self-adjointness.

The two-dimensional shape block, writing (\delta=w_1-w_2) and (c=t_1+t_2-2t_3), is

\[
\begin{pmatrix}
t_1+t_2-(t_1-t_2)\delta & ((t_1-t_2)-c\delta)/\sqrt3\\
\sqrt3(t_1-t_2)w_3 & 2t_3+cw_3
\end{pmatrix}.
\]

At (w_3=0) and (c=(t_1-t_2)\delta), with nonzero upper-right entry, this Gram operator has a genuine Jordan block. On this joint condition its discriminant is

\[
\mathcal D=c^2w_3^2+4(t_1-t_2)^2(1-\delta^2)w_3,
\]

so the gap is asymptotically (2|t_1-t_2|\sqrt{1-\delta^2}|\sigma_3|). The square root in (w_3) becomes a cone in the signed coordinate.

The lifted matrix (B=J^{-1}AJ), with (J=\operatorname{diag}(1/\sqrt2,-\sqrt6\sigma_3)), is analytic on the cover and has a scalar double point at the joint wall. **At the wall (J) is singular.** This is not an ordinary invertible similarity transforming a Jordan block into a diagonalizable one; the Gram and cover tangent spaces differ there. v10 makes this explicit.

Individual real eigenprojectors of a real (2\times2) block with distinct real eigenvalues satisfy

\[
\|P_\pm\|_2^2=1+\frac{(A_{12}-A_{21})^2}{(\lambda_+-\lambda_-)^2}.
\]

They diverge in the Gram norm near the Jordan point, while kinetic-normalized projectors have norm one in the positive interior. An isolated **pair Riesz projector** and its contour trace-log remain regular. Conditions matter: the contour must stay in the resolvent set and isolate the intended cluster; the logarithm needs a compatible branch. A smooth ledger is not a conserved ledger, and smoothness alone does not locate a wall.

The real conical eigenline can change sign around a loop. The paper also computes distinct complex-loop holonomies in Gram and cover descriptions. v10 correctly withdraws the old claim that every regular, single-valued parameter-dependent frame change contributes only an exact differential. The additional term is (uF^{-1}dFv/(uv)), which need not have zero integral. A connection must transform covariantly if frame invariance is intended.

## The strongest link to the neutrino paper

The common structure is **compression, coupling and eliminated dynamics**, not an identification of neutrinos with black holes.

For an orthogonal projector in visible/hidden block form, the visible block satisfies

\[
C-C^2=BB^\dagger.
\]

For a self-adjoint Hamiltonian split into visible and hidden sectors, with hidden generator (D) and coupling (B), elimination gives the memory kernel

\[
K(t)=B e^{-iDt}B^\dagger,\qquad
K(0)=BB^\dagger=PH^2P-(PHP)^2=PHQHP.
\]

The shape-transport counterpart is

\[
P_WD_T^2P_W-A^2=P_WD_TQ_WD_TP_W.
\]

It has rank **at most** one, since the discarded trace direction is one-dimensional; it can vanish for isotropic (T). Positivity is interpreted in the relevant positive inner product. (K(0)) is positive, but (K(t)) need not be Hermitian or positive for (t\ne0).

This is the direct ancestry of the neutrino paper's distinction between a cut-energy footprint and the full memory kernel. The initial footprint does not determine (D), frequency dependence or the future. A resolvent/Schur complement retains more than a static compression. In frequency language, a visible response involves a self-energy of the form (B(z-D)^{-1}B^\dagger), with signs depending on the resolvent convention.

The one-way triangular examples demonstrate the complementary limitation: a visible readout can be independent of an arbitrary hidden state/rate. The exact identity (P(X+QYQ)P=PXP) says a compressed observation cannot recover that hidden block. The finite-dimensional no-return certificate (BD^jC=0), (0\le j<q), uses Cayley–Hamilton, not black-hole causality.

The two-compartment retention model distinguishes delay from permanent retention. With positive return rate (b), all injected energy eventually leaves and mean residence is ((1+a/b)/\kappa). At (b=0), the retained fraction is (a/(\kappa+a)). The (b\to0) and long-time limits do not commute. This is an exact model calculation, not a simulation of evaporation or a resolution of the information problem.

## Boundary reduction and the possible geometric bridge

The passive block calculus is one of the most useful pieces to carry forward. With invertible interior block,

\[
Z=L_{bb}-L_{bi}L_{ii}^{-1}L_{ib}=W^*LW,
\qquad W=\binom{I}{-L_{ii}^{-1}L_{ib}}.
\]

If (\operatorname{Herm}L\succeq0), then (\operatorname{Herm}Z\succeq0). For (S=(Z-I)(Z+I)^{-1}),

\[
I-S^*S=4(WV)^*\operatorname{Herm}L(WV)\succeq0,
\qquad V=(Z+I)^{-1}.
\]

The matched value is (Z=I\Rightarrow S=0). The horizon-membrane resistance comparison is a **local boundary** analogy. v10 expressly keeps exterior greybody scattering separate and does not extend passivity automatically to superradiant situations.

A disciplined route toward quasilocal mass/Penrose work would replace this finite matrix by a specified elliptic geometric boundary problem, fix the boundary data and pairing, and identify what its Schur/Dirichlet-to-Neumann response measures. Capacity is a plausible first test because it is already an exterior variational energy. It is not automatically ADM, Hawking or Bartnik mass, and (BB^\dagger) is not already a geometric capacity. A Schwarzschild benchmark could enforce dimensions and equality normalization before a new inequality is proposed. Any such bridge needs the actual metric, asymptotics, scalar-curvature/energy assumptions and admissible extension class; none follows from the Gram fold.

The paper's own six-item identification list is the right constraint: an actual field/operator construction, a fixed pairing and probe, area/scale, conserved dynamics and gravitational observables must be supplied. Projector data are invariant under positive scalar rescaling, so they cannot set an absolute mass or temperature scale by themselves.

The paper compares its boundary operations with a source called *Spacetime Penrose inequalities: enclosing area, charge, rigidity*. **v10's bibliography identifies this as an AI-generated OpenAI manuscript dated 5 October 2026, unrefereed and not publicly available.** Its claims are explicitly graded “cited, not checked.” That source must not be silently treated as an established theorem by Steve McCormick or as a verified proof of the general spacetime Penrose inequality. The McCormick connection requires independently identifying his actual papers and their hypotheses.

## What v10 adds beyond v8.4

The substantial new analysis is a wave equation on a prescribed pullback metric

\[
g=a(y)dx^2+b(y)dy^2,
\qquad (\sqrt{a/b}\,u')'+\sqrt{ab}(\omega^2-p^2/a)u=0.
\]

The symmetry direction conserves (C=p^2/\omega^2=a\sin^2\theta). In constant leads, normal wave number (k=\omega\sqrt{b(a-C)/a}) and flux variable (F=\sqrt{a/b}u') give admittance (Y=\omega\sqrt{a-C}). Continuity of (u,F) at a sharp step yields

\[
\Gamma=\frac{\sqrt{a_1-C}-\sqrt{a_2-C}}
{\sqrt{a_1-C}+\sqrt{a_2-C}}.
\]

The transverse factor (b=g_\perp) drops out **at a sharp step**, and total reflection starts when the far side is evanescent, at the Clairaut turning threshold. Equality at the threshold itself is understood by the limit. (b) matters in a finite-width layer. At normal incidence, in the particular fixed-coupling family with \(\sqrt a\propto1/\Delta\), the formula becomes (\tanh[\tfrac12\log(\Delta_2/\Delta_1)]). The inverse-gap relation is family-specific; arbitrary rescaling of a Hamiltonian leaves its projector metric unchanged.

The same Gram determinant gives (\det g(V,\partial_x)=a-C) for a unit path direction and the QGT bound

\[
|\Omega(V,\partial_x)|\le2\sqrt{a-C}=2Y/\omega
\]

in the propagating real-angle regime. Two-level rank-one families saturate; generic three-level examples do not.

For the polar family (a=(9/4)\sin^2y,b=1/4), the regular polar solution fully reflects modes with (C>0). Smoothing the lead connection makes its high-frequency lateral shift approach the ray displacement. **A polar stratum and a Killing horizon can have related degenerate-form descriptions yet different reflection laws: the wave operator and boundary conditions decide.** The paper states this useful negative control explicitly.

The RS records document internal preregistered gates and failures: RS-01's kinked-lead lateral-shift gate failed; RS-02's finite-width (10^{-3}) tolerance failed; RS-03's fitted Richardson residue remained (7.4\times10^{-4}), above (10^{-5}), even after resolving the layer more finely. The solver-step diagnosis was rejected. RS-03c then tested direct first-order convergence with its stated criterion and passed. The ledger itself says file timestamps do not establish external preregistration. These are internally recorded test plans, not externally registered confirmatory experiments.

## Other threads understood and their scope

| Thread | Mathematical or computational content | Interpretation limit |
|---|---|---|
| Qutrit mechanics | Bures angle is normal-path wall distance; mirror pair has fidelity one; full-rank SLD Fisher information is four times metric speed squared/eight times shape kinetic energy | At a rank-changing point, SLD QFI can be discontinuous; it is not the continuous cover kinetic metric there |
| Stiffening | Thin disk gives an explicit normal quadratic potential; equal-mass square has (\omega=\sqrt{2(2\sqrt2-1)}\) | Gravity does not stiffen every flat shape; elongated rhombi are counterexamples; harmonic amplitude is only a small-energy approximation |
| Petrov/spinor | Invertible map from trace-free Weyl matrix to quartic; type II defective, type D semisimple; specified star perturbations give different splitting orders | This classifies a Weyl operator, not a derivation of Kerr from the four-body transport |
| ISCO | Schwarzschild radial wobble generator has a nonzero nilpotent at (r=6M), separating oscillation from growth | A genuine standard-GR linearization; it does not turn every shape fold into an event horizon |
| Effective exponent | Epicyclic ratio gives (p_{\rm eff}=2+6M/r), reaching three at the ISCO | Definition from the ratio, not a new literal radial force law |
| Photon ring | Null circular orbit at (3M); coordinate Lyapunov rate equals orbital rate; critical demagnification exponent \(\pi\), half-orbit delay (3\sqrt3\pi M); charged control differs | Reproduction of known near-critical ray geometry; actual observed brightness also needs an emission/transfer model |
| Ringdown | Synthetic complex-symmetric two-mode EP model: excitation factors diverge, pair sum stays finite, Jordan signal acquires a linear-in-time factor | No Teukolsky computation or detector data; coefficient can vanish for a particular source/probe |
| Solar ladder | Finite-difference dynamo example: first five loops give disjoint swaps, unlike reported Kerr mode climbing | Solar discretization/loop study is not a calculation of Kerr; convergence of the sixth apparent birth required grid refinement |
| Hawking/Bell | Assumed ideal two-mode squeezed pair gives thermal phase-blind marginal and CHSH (2\sqrt{1+\tanh^2(2r)}\); fermion log-odds is \(\omega/T_H\) | Assumed state and temperature, no derivation of Hawking temperature or experimentally accessible cross-horizon Bell protocol |
| Fermion Smith coordinate | (\Gamma=1-2C=\tanh(\omega/(2T_H))\); particle-hole reflection changes its sign | Sharing the chart center with a matched load is not physical identity; only the ratio is determined |
| Ramanujan | Large mock/modular pieces cancel to finite radial limits; (10^{597}\) pieces tending jointly to four checked with high precision | Structural cancellation comparison; no established transport mechanism for the particular mock function |
| Knots | Figure-eight volume asymptotics, torus-knot polynomial growth, conjugation under mirror; (8_{19}\) residue-class constants | No demonstrated black-hole microstate model for these invariants |
| MOTS | Drift makes the stability operator non-self-adjoint; exact drift can be removed by scalar weighted similarity; principal eigenvalue is simple | Simplicity excludes Jordan blocks only at the principal eigenvalue; nonprincipal spectrum needs separate analysis |
| Horizon fold | Signed lapse regularizes/doubles the Schwarzschild Riemannian static base | Second sheet is another exterior, not the black-hole interior; spacetime event horizon is a null causal boundary |
| Gauge charge | Wong equations introduced with internal charge dynamics | Standard framework; conditional non-normality inequality still requires its unverified hypothesis |

## Corrections: do not report repaired v8.4 issues as current failures

The current v10 paper corrects the following older statements, and its new correction script confirms the underlying examples:

1. The eigenvalue metric has curvature one, not zero; the real-qubit geometry is a hemisphere with pure-state boundary circle.
2. Kinetic self-adjointness requires the common (T,W) frame. A noncommuting example has asymmetry (2/15). The normalized-flow Jacobian differs from (A) by a scalar shift.
3. The hidden transport defect has rank at most one and is zero in an isotropic control.
4. The Gram-to-cover map is singular at the wall, so the two limiting operators are not related by an invertible change of basis there.
5. Regular parameter-dependent similarities do not generally preserve the naive connection integral. A rotation gives a nonzero integral even though the frame is periodic.
6. The exact real-projector norm formula includes (A_{12}-A_{21}).
7. Fisher information/kinetic energy equality needs rank control. Along (G(s)=\operatorname{diag}((1-s^2)/2,(1-s^2)/2,s^2)), the nearby QFI tends to four but the support-based SLD value at (s=0) is zero.
8. Square gravity has a negative quartic correction; the harmonic estimate is not a finite-amplitude upper bound. Gravity stiffness changes sign for rhombi at (k_*=0.144556694814), root of ((1+k^2)(1+k)^2=64k^2).
9. The horizon resistance match is local; exterior scattering remains. The ideal Hawking-state assumption is explicit.
10. The principal MOTS eigenvalue statement no longer purports to exclude every Jordan block.
11. The projector of the model local symbol at zero lapse is a limit from outside, not a uniquely defined band projector of the zero matrix.
12. Threefold symmetry alone does not force quadratic splitting; the operator-specific cancellation is distinguished from the Jahn–Teller counterexample.
13. (X\mapsto PXP) is idempotent for every idempotent (P), but orthogonal on matrix space only for Hermitian (P); it is not automatically a trace-preserving quantum channel.

## One current v10 statement that still needs tightening

Section 4.1 (TeX line 287) says Davis–Kahan bounds the cluster angle by (\sin\theta\le\|E\|/\delta), with \(\delta\) “the gap to the rest.” V10-PUSH P5 implements \(\delta=w_0[3]-w_0[2]\), the **unperturbed** gap. Its 4,000 random symmetric examples pass, but the general claim with that denominator is false even for symmetric (2\times2) matrices.

Take

\[
A=\begin{pmatrix}0&0\\0&1\end{pmatrix},\qquad
E=\begin{pmatrix}0.08&0.1833030277982336\\0.1833030277982336&-0.08\end{pmatrix}.
\]

Here (\|E\|_2=0.2), the old gap is one, and the sine of the lower-eigenline angle is **0.2043096436892**, exceeding 0.2. A suitable cross-spectrum separation is 0.9582575694956 and yields bound 0.2087121525221, which holds. The revised statement should specify the correct separation and self-adjoint hypotheses (or use a justified perturbation-adjusted denominator). The general non-normal Riesz-resolvent bound proved in the appendix is a different statement and is unaffected. Numerical evidence is retained in `bh_agent/davis_kahan_counterexample.json`.

There is also minor archive drift: the older proof log and mixer retain language repaired in the paper; “every number checked” should not be read as independent confirmation of every cited external result. The abstract/cover's photon “brightness” wording should retain the near-critical asymptotic/source-model scope of the actual ray calculation.

## Fresh verification performed

Twenty distinct inherited scientific scripts completed fresh runs: `bh_core_02`, `bh_wall_03`, `bh_wall_check`, `bh_lift_05`, `bh_spine_09`, `bh_qutrit_18`, `bh_bell_11`, `bh_offset_15`, `bh_isco_10`, `bh_isco_cube_17`, `bh_nonnormal_04`, `bh_drift_symmetrize_02`, `bh_fold_parallel_01`, `bh_matched_12`, `bh_petrov_06`, `bh_knot_08`, `bh_shadow_07`, `bh_qnm_13`, `bh_knot_14`, and `bh_ep_spinor_04`. All completed with their expected outputs. Three of these are diagnostic print scripts rather than suites with explicit pass/fail assertions. Initial missing-Sympy failures were environment failures; after installing Sympy/mpmath in an isolated review dependency folder, all affected scripts completed. Only three hardcoded output paths in temporary runtime copies were adjusted; original formulas and source files were preserved.

Eight additional current-version scripts completed: `v10_corrections_check`, `v10_push_others`, `bh_noncommute_check`, `photon_ring_wall`, `bh_stiff_19`, `rs02c_realization`, `sine_guard_check`, and `rs03c_linear_limit`. Their registered numerical gates passed where present. The sine-guard diagnostic gave a (3.1\times10^{-15}) roundoff excess over an exact inequality; this is not substantive violation. The passing V10-PUSH random examples do not remove the separate Davis–Kahan counterexample above.

Selected reproduced numbers: shape cone slope 1.833030278; Gram wall coupling 0.484974226; ringdown contour error (2.8\times10^{-13}); whirl slope 1.898773 versus predicted 1.898829; rhombus root 0.144556694814; Schwarzschild photon growth 0.999983 per radian; RS03C first-order coefficients 0.0746, 0.1053, 0.1826 and 0.1057 at its four angles.

Logs are under `bh_agent/fresh_checks/` and `bh_agent/v10_fresh_checks/`. Twenty-eight script completions are not twenty-eight independently proved theorems. They verify implementations and selected finite/symbolic examples. I did not rerun the long solar-ladder sweep, full RS-03 random/adiabatic campaign, all figure generators or the rendering/build pipeline; their source and saved outputs were inspected. No formal Lean build was available in these BH archives.

## What to carry into the next decision

The reusable mathematical spine is: choose the observer/splitting and pairing; compute the visible compression; retain the hidden resolvent or memory when dynamics matter; follow isolated clusters rather than ill-conditioned individual eigenvectors; distinguish an algebraic defect from a geometric/coordinate degeneration; state exactly which data a boundary record can recover.

The new neutrino work is a natural place to continue because it tests whether the same hidden-block language says anything about **actual dynamics**, beyond an instantaneous positive square. For a McCormick-oriented project, the next concrete object should be a genuine geometric boundary operator or capacity problem with scale and asymptotic normalization. The BH paper supplies useful operator bookkeeping and negative controls; it does not yet supply the gravitational constraints or the mass inequality. Completing that distinction is progress, not a reason to discard the common structure.

---8<--- end verbatim black_hole_reading.md ---8<---

### B2.1 Section-by-section itemisation (every item [UNTRUSTED SOURCE - needs re-test])

Line numbers are those of `review/black_hole_reading.md`.

**§ "Sources, versions, and coverage" (l.5–13)**
- l.7: starting version = attached `bh_paper_v8_4 (1).html` and `bh_v8_4_code_and_sources (1).zip`; later `review/corpus_sources/bh_paper_v10.html` and `bh_v10_code_and_sources.zip` "identify themselves as **research edition 10, 20 October 2026**. They do not identify themselves as edition 10.1. The neutrino paper's reference to 10.1 therefore remains a version question."
- l.9: method claimed: "I read the complete v8.4 LaTeX paper (main text, proofs, open problems and bibliography)… I then read every change and addition in v10". "The complete differences are retained in `bh_agent/v10_all_changes.txt` and `v84_to_v10.diff`." — **these two files are NOT present in the package** (`grep -rl` finds the names only inside black_hole_reading.md and the HTML copy; `find` shows no such file).
- l.11: inventory claim for the v10 archive: "49 Python files, one JavaScript file, one TeX source, five Markdown documents, 33 saved `.out` logs, eight JSON files, twenty PNGs, two JPEGs, one NPZ and one HTML mixer source." (A `find` count on the extracted `bh_v10_code_and_sources` gives 49 .py, 33 .out, 5 .md, 8 .json, 20 .png — same numbers.) Claims: "I read all 49 Python sources, the JavaScript math renderer and complete mixer source"; "Saved log results were inspected, including the failed first solar-ladder run and failed RS gates"; "I did not conduct a full browser/layout review or rerun the complete HTML build."
- l.13: "`BH_PROOF_LOG_v7.md` says it covers **v8.5**, despite being bundled with v10. Its Lean sections are plans, not compiled Lean files. The mixer still identifies itself as research edition 8. Several older comments and explanatory labels remain less carefully scoped than the v10 paper. Treat the paper's current statements, not every inherited comment, as the current scientific position." — criticism/recommendation; targets: BH_PROOF_LOG_v7.md, checks/mixer_src.html.

**§ "What the work is actually building" (l.15–39)** — the package's restatement of the paper (no grade given by the package):
- Shape of a four-body configuration; mass-weighted centred Jacobi matrix X∈R^{3×3}; `G=X^T X ⪰ 0, Tr G=1` (l.19–21).
- "This space is also the real-qutrit density-matrix space. Its intrinsic kinetic metric is the Bures metric `g_W(H,K)=½ Σ_ij H_ij K_ij/(w_i+w_j)`" (l.23–27); eigenvalue part `Σ dw_i²/(4w_i)`; substitution `w_i=σ_i²` "gives a round sphere octant, not a flat manifold" (l.29).
- Signed singular value `σ_3=sign(det X)√w_3` "resolves the orientation fold"; "A standard normal path has distance arcsin√ε from w_3=ε to the wall. Rank two is regular on the orientation cover; the rank-one collinear stratum has a genuine quotient singularity. Rank strata are not the same as collision sets." (l.31–37)
- l.39: "This is **shape geometry**, not a spacetime metric, causal structure or physical event horizon. The paper expressly says so, especially in v10."

**§ "The transport, the wall, and what survives" (l.41–78)**
- Transport `A(H)=TH+HT−2Tr(TH)W`; `D_T(H)=TH+HT`, `P_W Z=Z−Tr(Z)W`, `Q_W=I−P_W`; `g_W(W,H)=Tr(H)/4`; "`A=P_W D_T P_W` is self-adjoint in that metric **when T and W share the eigenframe**. This is not a generic noncommuting theorem. Frobenius non-normality can coexist with kinetic self-adjointness." (l.43–49)
- 2×2 shape block with δ=w1−w2, c=t1+t2−2t3: rows `[t1+t2−(t1−t2)δ , ((t1−t2)−cδ)/√3]`, `[√3(t1−t2)w3 , 2t3+c w3]` (l.51–58).
- "At w3=0 and c=(t1−t2)δ, with nonzero upper-right entry, this Gram operator has a genuine Jordan block." Discriminant on the joint condition `D=c²w3²+4(t1−t2)²(1−δ²)w3`; gap asymptotically `2|t1−t2|√(1−δ²)|σ3|`; "The square root in w3 becomes a cone in the signed coordinate." (l.60–66)
- Lifted matrix `B=J⁻¹AJ`, `J=diag(1/√2, −√6 σ3)`, "analytic on the cover and has a scalar double point at the joint wall. **At the wall J is singular.** This is not an ordinary invertible similarity transforming a Jordan block into a diagonalizable one… v10 makes this explicit." (l.68)
- Real 2×2 eigenprojector norm `‖P±‖₂² = 1 + (A12−A21)²/(λ+−λ−)²`; diverge in Gram norm near the Jordan point, kinetic-normalised projectors have norm one in the positive interior; "An isolated **pair Riesz projector** and its contour trace-log remain regular. Conditions matter… A smooth ledger is not a conserved ledger, and smoothness alone does not locate a wall." (l.70–76)
- l.78: "v10 correctly withdraws the old claim that every regular, single-valued parameter-dependent frame change contributes only an exact differential. The additional term is u F⁻¹dF v/(uv), which need not have zero integral. A connection must transform covariantly if frame invariance is intended." (Package reports a withdrawal made BY v10.)

**§ "The strongest link to the neutrino paper" (l.80–109)**
- "The common structure is **compression, coupling and eliminated dynamics**, not an identification of neutrinos with black holes." (l.82)
- `C−C²=BB†` (l.86–88); memory kernel `K(t)=B e^{−iDt}B†`, `K(0)=BB†=PH²P−(PHP)²=PHQHP` (l.92–95); shape-transport counterpart `P_W D_T² P_W − A² = P_W D_T Q_W D_T P_W` (l.99–101) "has rank **at most** one… it can vanish for isotropic T… K(0) is positive, but K(t) need not be Hermitian or positive for t≠0." (l.103)
- l.107: one-way triangular examples; `P(X+QYQ)P=PXP`; "The finite-dimensional no-return certificate BD^jC=0, 0≤j<q, uses Cayley–Hamilton, not black-hole causality."
- l.109: two-compartment retention: mean residence `(1+a/b)/κ`; at b=0 retained fraction `a/(κ+a)`; "The b→0 and long-time limits do not commute. This is an exact model calculation, not a simulation of evaporation or a resolution of the information problem."

**§ "Boundary reduction and the possible geometric bridge" (l.111–133)**
- `Z=L_bb−L_bi L_ii⁻¹ L_ib = W* L W`, `W=(I ; −L_ii⁻¹L_ib)`; if Herm L⪰0 then Herm Z⪰0; `S=(Z−I)(Z+I)⁻¹`, `I−S*S=4(WV)* Herm L (WV) ⪰ 0`, `V=(Z+I)⁻¹` (l.115–125).
- l.127: "The matched value is Z=I⇒S=0. The horizon-membrane resistance comparison is a **local boundary** analogy. v10 expressly keeps exterior greybody scattering separate and does not extend passivity automatically to superradiant situations."
- l.129: recommendation — "A disciplined route toward quasilocal mass/Penrose work would replace this finite matrix by a specified elliptic geometric boundary problem… Capacity is a plausible first test… It is not automatically ADM, Hawking or Bartnik mass, and BB† is not already a geometric capacity. A Schwarzschild benchmark could enforce dimensions and equality normalization before a new inequality is proposed… none follows from the Gram fold."
- l.131: "The paper's own six-item identification list is the right constraint… Projector data are invariant under positive scalar rescaling, so they cannot set an absolute mass or temperature scale by themselves."
- l.133: "The paper compares its boundary operations with a source called *Spacetime Penrose inequalities: enclosing area, charge, rigidity*. **v10's bibliography identifies this as an AI-generated OpenAI manuscript dated 5 October 2026, unrefereed and not publicly available.** Its claims are explicitly graded "cited, not checked." That source must not be silently treated as an established theorem by Steve McCormick or as a verified proof of the general spacetime Penrose inequality."

**§ "What v10 adds beyond v8.4" (l.135–163)**
- Wave equation on pullback metric `g=a(y)dx²+b(y)dy²`, `(√(a/b) u')' + √(ab)(ω²−p²/a)u = 0` (l.139–142); conserved `C=p²/ω²=a sin²θ`; lead normal wave number `k=ω√(b(a−C)/a)`; flux variable `F=√(a/b)u'`; admittance `Y=ω√(a−C)`; sharp-step reflection `Γ=(√(a1−C)−√(a2−C))/(√(a1−C)+√(a2−C))` (l.144–149).
- l.151: "The transverse factor b=g_⊥ drops out **at a sharp step**, and total reflection starts when the far side is evanescent, at the Clairaut turning threshold… b matters in a finite-width layer. At normal incidence, in the particular fixed-coupling family with √a∝1/Δ, the formula becomes tanh[½ log(Δ2/Δ1)]. The inverse-gap relation is family-specific; arbitrary rescaling of a Hamiltonian leaves its projector metric unchanged."
- l.153–159: `det g(V,∂x)=a−C` for a unit path direction and QGT bound `|Ω(V,∂x)| ≤ 2√(a−C) = 2Y/ω` "in the propagating real-angle regime. Two-level rank-one families saturate; generic three-level examples do not."
- l.161: polar family `a=(9/4)sin²y, b=1/4`: "the regular polar solution fully reflects modes with C>0… **A polar stratum and a Killing horizon can have related degenerate-form descriptions yet different reflection laws: the wave operator and boundary conditions decide.**"
- l.163: RS gate history: "RS-01's kinked-lead lateral-shift gate failed; RS-02's finite-width 10⁻³ tolerance failed; RS-03's fitted Richardson residue remained 7.4×10⁻⁴, above 10⁻⁵, even after resolving the layer more finely. The solver-step diagnosis was rejected. RS-03c then tested direct first-order convergence with its stated criterion and passed. The ledger itself says file timestamps do not establish external preregistration. These are internally recorded test plans, not externally registered confirmatory experiments."

**§ "Other threads understood and their scope" (l.165–184)** — a 15-row table (thread | content | "interpretation limit"). Rows, verbatim key content:
1. Qutrit mechanics — "Bures angle is normal-path wall distance; mirror pair has fidelity one; full-rank SLD Fisher information is four times metric speed squared/eight times shape kinetic energy" | limit: "At a rank-changing point, SLD QFI can be discontinuous; it is not the continuous cover kinetic metric there".
2. Stiffening — "Thin disk gives an explicit normal quadratic potential; equal-mass square has ω=√(2(2√2−1))" | "Gravity does not stiffen every flat shape; elongated rhombi are counterexamples; harmonic amplitude is only a small-energy approximation".
3. Petrov/spinor — "Invertible map from trace-free Weyl matrix to quartic; type II defective, type D semisimple; specified star perturbations give different splitting orders" | "This classifies a Weyl operator, not a derivation of Kerr from the four-body transport".
4. ISCO — "Schwarzschild radial wobble generator has a nonzero nilpotent at r=6M, separating oscillation from growth" | "A genuine standard-GR linearization; it does not turn every shape fold into an event horizon".
5. Effective exponent — "Epicyclic ratio gives p_eff=2+6M/r, reaching three at the ISCO" | "Definition from the ratio, not a new literal radial force law".
6. Photon ring — "Null circular orbit at 3M; coordinate Lyapunov rate equals orbital rate; critical demagnification exponent π, half-orbit delay 3√3πM; charged control differs" | "Reproduction of known near-critical ray geometry; actual observed brightness also needs an emission/transfer model".
7. Ringdown — "Synthetic complex-symmetric two-mode EP model: excitation factors diverge, pair sum stays finite, Jordan signal acquires a linear-in-time factor" | "No Teukolsky computation or detector data; coefficient can vanish for a particular source/probe".
8. Solar ladder — "Finite-difference dynamo example: first five loops give disjoint swaps, unlike reported Kerr mode climbing" | "Solar discretization/loop study is not a calculation of Kerr; convergence of the sixth apparent birth required grid refinement".
9. Hawking/Bell — "Assumed ideal two-mode squeezed pair gives thermal phase-blind marginal and CHSH 2√(1+tanh²(2r)); fermion log-odds is ω/T_H" | "Assumed state and temperature, no derivation of Hawking temperature or experimentally accessible cross-horizon Bell protocol".
10. Fermion Smith coordinate — "Γ=1−2C=tanh(ω/(2T_H)); particle-hole reflection changes its sign" | "Sharing the chart center with a matched load is not physical identity; only the ratio is determined".
11. Ramanujan — "Large mock/modular pieces cancel to finite radial limits; 10^597 pieces tending jointly to four checked with high precision" | "Structural cancellation comparison; no established transport mechanism for the particular mock function".
12. Knots — "Figure-eight volume asymptotics, torus-knot polynomial growth, conjugation under mirror; 8_19 residue-class constants" | "No demonstrated black-hole microstate model for these invariants".
13. MOTS — "Drift makes the stability operator non-self-adjoint; exact drift can be removed by scalar weighted similarity; principal eigenvalue is simple" | "Simplicity excludes Jordan blocks only at the principal eigenvalue; nonprincipal spectrum needs separate analysis".
14. Horizon fold — "Signed lapse regularizes/doubles the Schwarzschild Riemannian static base" | "Second sheet is another exterior, not the black-hole interior; spacetime event horizon is a null causal boundary".
15. Gauge charge — "Wong equations introduced with internal charge dynamics" | "Standard framework; conditional non-normality inequality still requires its unverified hypothesis".

**§ "Corrections: do not report repaired v8.4 issues as current failures" (l.185–201)** — lead sentence: "The current v10 paper corrects the following older statements, and its new correction script confirms the underlying examples:" — 13 numbered items. These are the package's account of corrections v10 made to v8.4 (target = v8.4 statements; confirming script named = `checks/v10_corrections_check.py`):
1. "The eigenvalue metric has curvature one, not zero; the real-qubit geometry is a hemisphere with pure-state boundary circle."
2. "Kinetic self-adjointness requires the common T,W frame. A noncommuting example has asymmetry 2/15. The normalized-flow Jacobian differs from A by a scalar shift."
3. "The hidden transport defect has rank at most one and is zero in an isotropic control."
4. "The Gram-to-cover map is singular at the wall, so the two limiting operators are not related by an invertible change of basis there."
5. "Regular parameter-dependent similarities do not generally preserve the naive connection integral. A rotation gives a nonzero integral even though the frame is periodic."
6. "The exact real-projector norm formula includes A12−A21."
7. "Fisher information/kinetic energy equality needs rank control. Along G(s)=diag((1−s²)/2,(1−s²)/2,s²), the nearby QFI tends to four but the support-based SLD value at s=0 is zero."
8. "Square gravity has a negative quartic correction; the harmonic estimate is not a finite-amplitude upper bound. Gravity stiffness changes sign for rhombi at k*=0.144556694814, root of (1+k²)(1+k)²=64k²."
9. "The horizon resistance match is local; exterior scattering remains. The ideal Hawking-state assumption is explicit."
10. "The principal MOTS eigenvalue statement no longer purports to exclude every Jordan block."
11. "The projector of the model local symbol at zero lapse is a limit from outside, not a uniquely defined band projector of the zero matrix."
12. "Threefold symmetry alone does not force quadratic splitting; the operator-specific cancellation is distinguished from the Jahn–Teller counterexample."
13. "X↦PXP is idempotent for every idempotent P, but orthogonal on matrix space only for Hermitian P; it is not automatically a trace-preserving quantum channel."

**§ "One current v10 statement that still needs tightening" (l.203–216)** — THE PACKAGE'S ONE DIRECT CRITICISM/"COUNTEREXAMPLE" AGAINST v10:
- l.205: "Section 4.1 (TeX line 287) says Davis–Kahan bounds the cluster angle by sinθ≤‖E‖/δ, with δ "the gap to the rest." V10-PUSH P5 implements δ=w_0[3]−w_0[2], the **unperturbed** gap. Its 4,000 random symmetric examples pass, but the general claim with that denominator is false even for symmetric 2×2 matrices."
- l.207–212: "Take A = [[0,0],[0,1]], E = [[0.08, 0.1833030277982336],[0.1833030277982336, −0.08]]."
- l.214: "Here ‖E‖₂=0.2, the old gap is one, and the sine of the lower-eigenline angle is **0.2043096436892**, exceeding 0.2. A suitable cross-spectrum separation is 0.9582575694956 and yields bound 0.2087121525221, which holds. The revised statement should specify the correct separation and self-adjoint hypotheses (or use a justified perturbation-adjusted denominator). The general non-normal Riesz-resolvent bound proved in the appendix is a different statement and is unaffected. Numerical evidence is retained in `bh_agent/davis_kahan_counterexample.json`."
  - Target: paper v10 §4.1 Davis–Kahan sentence (the package cites TeX line 287; in the extracted `paper/bh_paper_v10.tex` the sentence "By the Davis--Kahan theorem a perturbation $E$ turns the cluster's subspace by an angle whose sine is at most $\|E\|/\delta$, with $\delta$ the gap to the rest of the spectrum \cite{daviskahan1970}… the bound was never exceeded \grade{measured, V10-PUSH}" sits in that paragraph), and check script `checks/v10_push_others.py` item P5 (script l.110 "# Claim (Davis-Kahan): sin of the largest principal angle between cluster subspaces <= ||E|| / delta", l.122 `delta = w0[3] - w0[2]`). Paper's grade for the numerical statement: "measured, V10-PUSH". Package's grade for its own counter-claim: "false even for symmetric 2×2 matrices" (its words). NEEDS RE-TEST; not tested by me.
- l.216: "There is also minor archive drift: the older proof log and mixer retain language repaired in the paper; "every number checked" should not be read as independent confirmation of every cited external result. The abstract/cover's photon "brightness" wording should retain the near-critical asymptotic/source-model scope of the actual ray calculation." — targets: BH_PROOF_LOG_v7.md, mixer, the paper's "every number checked" wording, abstract/cover photon-ring "brightness" wording (§ photon ring / `checks/photon_ring_wall.py`, `v10_push_others.py` P1).

**§ "Fresh verification performed" (l.218–226)**
- l.220: "Twenty distinct inherited scientific scripts completed fresh runs: `bh_core_02`, `bh_wall_03`, `bh_wall_check`, `bh_lift_05`, `bh_spine_09`, `bh_qutrit_18`, `bh_bell_11`, `bh_offset_15`, `bh_isco_10`, `bh_isco_cube_17`, `bh_nonnormal_04`, `bh_drift_symmetrize_02`, `bh_fold_parallel_01`, `bh_matched_12`, `bh_petrov_06`, `bh_knot_08`, `bh_shadow_07`, `bh_qnm_13`, `bh_knot_14`, and `bh_ep_spinor_04`. All completed with their expected outputs. Three of these are diagnostic print scripts rather than suites with explicit pass/fail assertions. Initial missing-Sympy failures were environment failures; after installing Sympy/mpmath in an isolated review dependency folder, all affected scripts completed. Only three hardcoded output paths in temporary runtime copies were adjusted; original formulas and source files were preserved."
- l.222: "Eight additional current-version scripts completed: `v10_corrections_check`, `v10_push_others`, `bh_noncommute_check`, `photon_ring_wall`, `bh_stiff_19`, `rs02c_realization`, `sine_guard_check`, and `rs03c_linear_limit`. Their registered numerical gates passed where present. The sine-guard diagnostic gave a 3.1×10⁻¹⁵ roundoff excess over an exact inequality; this is not substantive violation. The passing V10-PUSH random examples do not remove the separate Davis–Kahan counterexample above."
- l.224: "Selected reproduced numbers: shape cone slope 1.833030278; Gram wall coupling 0.484974226; ringdown contour error 2.8×10⁻¹³; whirl slope 1.898773 versus predicted 1.898829; rhombus root 0.144556694814; Schwarzschild photon growth 0.999983 per radian; RS03C first-order coefficients 0.0746, 0.1053, 0.1826 and 0.1057 at its four angles."
- l.226: "Logs are under `bh_agent/fresh_checks/` and `bh_agent/v10_fresh_checks/`. Twenty-eight script completions are not twenty-eight independently proved theorems. They verify implementations and selected finite/symbolic examples. I did not rerun the long solar-ladder sweep, full RS-03 random/adiabatic campaign, all figure generators or the rendering/build pipeline; their source and saved outputs were inspected. No formal Lean build was available in these BH archives."

**§ "What to carry into the next decision" (l.228–232)** — recommendations:
- l.230: "The reusable mathematical spine is: choose the observer/splitting and pairing; compute the visible compression; retain the hidden resolvent or memory when dynamics matter; follow isolated clusters rather than ill-conditioned individual eigenvectors; distinguish an algebraic defect from a geometric/coordinate degeneration; state exactly which data a boundary record can recover."
- l.232: "…For a McCormick-oriented project, the next concrete object should be a genuine geometric boundary operator or capacity problem with scale and asymptotic normalization. The BH paper supplies useful operator bookkeeping and negative controls; it does not yet supply the gravitational constraints or the mass inequality. Completing that distinction is progress, not a reason to discard the common structure."


## B3. review/bh_agent/  — all 29 files read in full: YES  [UNTRUSTED SOURCE - needs re-test]

Contents: `davis_kahan_counterexample.json`, `fresh_checks/` (20 logs), `v10_fresh_checks/` (8 logs). NOTE: `black_hole_reading.md` also refers to `bh_agent/v10_all_changes.txt`, `v84_to_v10.diff` and `review/bh_agent/deps`; none of those is in the package. The scripts that were run are not in `bh_agent/` either — only their `.log` outputs.

### B3.1 davis_kahan_counterexample.json (564 B) — verbatim

```json
{
  "A": [
    [
      0.0,
      0.0
    ],
    [
      0.0,
      1.0
    ]
  ],
  "E": [
    [
      0.08000000000000002,
      0.1833030277982336
    ],
    [
      0.1833030277982336,
      -0.08000000000000002
    ]
  ],
  "norm_E": 0.2,
  "original_gap": 1.0,
  "sin_angle": 0.20430964368921994,
  "sin_angle_over_norm": 1.0215482184460996,
  "eigenvalues_perturbed": [
    0.04174243050441601,
    0.9582575694955839
  ],
  "safe_cross_gap": 0.9582575694955839,
  "bound_with_cross_gap": 0.20871215252208003,
  "verdict": "original-gap bound is exceeded"
}
```

Recorded: this is the stored "numerical evidence" for the package's Davis–Kahan criticism (B2.1, l.205–214). Fields: `norm_E` 0.2; `original_gap` 1.0; `sin_angle` 0.20430964368921994; `sin_angle_over_norm` 1.0215482184460996; `eigenvalues_perturbed` [0.04174243050441601, 0.9582575694955839]; `safe_cross_gap` 0.9582575694955839; `bound_with_cross_gap` 0.20871215252208003; `verdict`: "original-gap bound is exceeded". No script that produced it is in the package. Target: paper v10 §4.1 Davis–Kahan sentence and `checks/v10_push_others.py` P5. **[UNTRUSTED SOURCE - needs re-test]** — not re-tested here.

### B3.2 The 28 fresh-check logs, verbatim, each followed by its `diff` against the paper's own saved output

Convention in every diff block below: the command was `diff <paper's original .out> <package's fresh .log>`; so lines starting `<` are the **paper's own original output**, lines starting `>` are the **off-rails package's re-run log**. "IDENTICAL" means `diff` printed nothing. Original outputs are in `bh_v10_code_and_sources/bh_v10_code_and_sources/checks/` (or `rs/`).

#### fresh_checks/bh_bell_11.py.log  (1132 B, 16 lines)  [UNTRUSTED SOURCE - needs re-test]

Log, verbatim:

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

Compared against the paper's own output `checks/bh_bell_11.out`:

**IDENTICAL** (diff prints nothing).

#### fresh_checks/bh_core_02.py.log  (3050 B, 39 lines)  [UNTRUSTED SOURCE - needs re-test]

Log, verbatim:

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

Compared against the paper's own output `checks/bh_core_02.out`:

**IDENTICAL** (diff prints nothing).

#### fresh_checks/bh_drift_symmetrize_02.py.log  (254 B, 3 lines)  [UNTRUSTED SOURCE - needs re-test]

Log, verbatim:

```
exact drift: e^{-psi} L e^{psi} - [-Δ + (Q+|∇psi|^2-Δpsi)] = 0
rotational drift, first-order coefficients after conjugation: -2*y - 2*Derivative(psi(x, y), x) , 2*x - 2*Derivative(psi(x, y), y)
curl of (-y,x) = 2  (nonzero => no psi can remove both)

```

Compared against the paper's own output `checks/bh_drift_symmetrize_02.out`:

**IDENTICAL** (diff prints nothing).

#### fresh_checks/bh_ep_spinor_04.py.log  (1030 B, 12 lines)  [UNTRUSTED SOURCE - needs re-test]

Log, verbatim:

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

Compared against the paper's own output `checks/bh_ep_spinor_04.out`:

```diff
3,6c3,6
< H2  one w3 loop: M = [[0j, (-0-1.0594j)], [-0.9441j, 0j]]   M[0,1]*M[1,0] = (-1.0001+0j)
<     M1^2 = [[(-1.0001+0j), -0j], [-0j, (-1.0001+0j)]]   two loops = [[(-1.0001-0j), -0j], [-0j, (-1.0001+0j)]]   four loops = [[(1.0002-0j), (-0+0j)], [(-0+0j), (1.0002-0j)]]
<     one sigma3 loop = [[(-1.0001+0j), -0j], [-0j, (-1.0001-0j)]]   control (loop off the wall point) = [[(1+0j), 0j], [0j, (1-0j)]]
<     off the joint condition t3=1.25: small sigma3 loop = [[(1-0j), 0j], [(-0+0j), (1+0j)]]
---
> H2  one w3 loop: M = [[0j, -1.0594j], [-0.9441j, 0j]]   M[0,1]*M[1,0] = (-1.0001-0j)
>     M1^2 = [[(-1.0001-0j), -0j], [-0j, (-1.0001-0j)]]   two loops = [[(-1.0001-0j), -0j], [-0j, (-1.0001+0j)]]   four loops = [[(1.0002+0j), (-0+0j)], [(-0+0j), (1.0002-0j)]]
>     one sigma3 loop = [[(-1.0001+0j), -0j], [-0j, (-1.0001-0j)]]   control (loop off the wall point) = [[(1-0j), 0j], [0j, (1+0j)]]
>     off the joint condition t3=1.25: small sigma3 loop = [[(1+0j), (-0+0j)], [(-0+0j), (1+0j)]]
```

#### fresh_checks/bh_fold_parallel_01.py.log  (408 B, 9 lines)  [UNTRUSTED SOURCE - needs re-test]

Log, verbatim:

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

Compared against the paper's own output `checks/bh_fold_parallel_01.out`:

**IDENTICAL** (diff prints nothing).

#### fresh_checks/bh_isco_10.py.log  (2579 B, 34 lines)  [UNTRUSTED SOURCE - needs re-test]

Log, verbatim:

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

Compared against the paper's own output `checks/bh_isco_10.out`:

```diff
0a1,5
> /workspace/scratch/4ea79d7a2197/review/bh_agent/fresh_checks/bh_isco_10.py:58: IntegrationWarning: The algorithm does not converge.  Roundoff error is detected
>   in the extrapolation table.  It is assumed that the requested tolerance
>   cannot be achieved, and that the returned result (if full_output = 1) is 
>   the best which can be obtained.
>   I,_=quad(g,rp,ra,limit=2000,epsabs=1e-12,epsrel=1e-12)
8,10c13,15
<    r0= 5.90: V''/2 = -1.678982e-04  eigenvalues = 0.01296+0.00000j, -0.01296+0.00000j
<    r0= 5.00: V''/2 = -4.000000e-03  eigenvalues = 0.06325+0.00000j, -0.06325+0.00000j
<    r0= 4.00: V''/2 = -3.125000e-02  eigenvalues = 0.17678+0.00000j, -0.17678+0.00000j
---
>    r0= 5.90: V''/2 = -1.678982e-04  eigenvalues = 0.01296, -0.01296
>    r0= 5.00: V''/2 = -4.000000e-03  eigenvalues = 0.06325, -0.06325
>    r0= 4.00: V''/2 = -3.125000e-02  eigenvalues = 0.17678, -0.17678
22,26d26
< /home/claude/bh/levin/bh_isco_10.py:58: IntegrationWarning: The algorithm does not converge.  Roundoff error is detected
<   in the extrapolation table.  It is assumed that the requested tolerance
<   cannot be achieved, and that the returned result (if full_output = 1) is 
<   the best which can be obtained.
<   I,_=quad(g,rp,ra,limit=2000,epsabs=1e-12,epsrel=1e-12)
```

#### fresh_checks/bh_isco_cube_17.py.log  (542 B, 6 lines)  [UNTRUSTED SOURCE - needs re-test]

Log, verbatim:

```
PASS C1 omega_r^2/Omega^2 = 1 - 6M/r, so p = 2 + 6M/r ratio = (r - 6)/r, p = 2 + 6/r, p(6M) = 3
PASS C2 R = -2 N''/N; linear lapse is flat R = -2*Derivative(N(x), (x, 2))/N(x)
PASS C2 Schwarzschild lapse = rho/(4M) near the horizon lapse ~ sqrt(2)/(2*sqrt(M)) sqrt(eps), rho ~ 2*sqrt(2)*sqrt(M) sqrt(eps)
PASS C3 extremal RN: proper distance diverges like -M log(eps); lapse ~ eps/M ~ exp(-rho/M) distance ~ M * log(1/eps)
PASS C4 Lamb: psi'' + (omega^2 - omega_ac^2)/c^2 psi = 0, omega_ac = c/2H; generator nilpotent at the cutoff 
ALL PASS

```

Compared against the paper's own output `checks/bh_isco_cube_17.out`:

**IDENTICAL** (diff prints nothing).

#### fresh_checks/bh_knot_08.py.log  (1005 B, 15 lines)  [UNTRUSTED SOURCE - needs re-test]

Log, verbatim:

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

Compared against the paper's own output `checks/bh_knot_08.out`:

**IDENTICAL** (diff prints nothing).

#### fresh_checks/bh_knot_14.py.log  (1229 B, 12 lines)  [UNTRUSTED SOURCE - needs re-test]

Log, verbatim:

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

Compared against the paper's own output `checks/bh_knot_14.out`:

**IDENTICAL** (diff prints nothing).

#### fresh_checks/bh_lift_05.py.log  (1647 B, 24 lines)  [UNTRUSTED SOURCE - needs re-test]

Log, verbatim:

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

Compared against the paper's own output `checks/bh_lift_05.out`:

```diff
9,10c9,10
< PASS K4 complex s-loop, Gram frame holonomy -1.00012+0.00000i
< PASS K4 complex s-loop, regular frame holonomy +1.00000-0.00000i
---
> PASS K4 complex s-loop, Gram frame holonomy -1.00012-0.00000i
> PASS K4 complex s-loop, regular frame holonomy +1.00000+0.00000i
17,20c17,20
< PASS K7 real (s,t3) loop around the joint point, regular frame, eigenline orientation -1.000000000+0.000000000j  (biorthogonal -1.000248)
< PASS K7 real (s,t3) loop around the joint point, Gram frame, eigenline orientation +1.000000000+0.000000000j  (biorthogonal +1.000140)
< PASS K7 real loop not enclosing it, regular frame, eigenline orientation +1.000000000+0.000000000j  (biorthogonal +1.000473)
< PASS K7 real loop not enclosing it, Gram frame, eigenline orientation +1.000000000+0.000000000j  (biorthogonal +1.110969)
---
> PASS K7 real (s,t3) loop around the joint point, regular frame, eigenline orientation -1.000000000  (biorthogonal -1.000248)
> PASS K7 real (s,t3) loop around the joint point, Gram frame, eigenline orientation +1.000000000  (biorthogonal +1.000140)
> PASS K7 real loop not enclosing it, regular frame, eigenline orientation +1.000000000  (biorthogonal +1.000473)
> PASS K7 real loop not enclosing it, Gram frame, eigenline orientation +1.000000000  (biorthogonal +1.110969)
```

#### fresh_checks/bh_matched_12.py.log  (234 B, 4 lines)  [UNTRUSTED SOURCE - needs re-test]

Log, verbatim:

```
R_H = 376.7303135 ohm, Z_0 = mu_0 c = 376.7303135 ohm
PASS M1 horizon resistivity equals the vacuum impedance ratio 1.000000000
PASS M2 zero reflection exactly at the matched value S(1) = 0.0, S(1/2) = -0.3333, S(2) = 0.3333
ALL PASS

```

Compared against the paper's own output `checks/bh_matched_12.out`:

**IDENTICAL** (diff prints nothing).

#### fresh_checks/bh_nonnormal_04.py.log  (216 B, 4 lines)  [UNTRUSTED SOURCE - needs re-test]

Log, verbatim:

```
both anisotropic             ||[A,A^T]||_F = 0.231425
T isotropic                  ||[A,A^T]||_F = 0.000000
W isotropic                  ||[A,A^T]||_F = 0.000000
at the wall, joint point     ||[A,A^T]||_F = 0.332623

```

Compared against the paper's own output `checks/bh_nonnormal_04.out`:

**IDENTICAL** (diff prints nothing).

#### fresh_checks/bh_offset_15.py.log  (415 B, 4 lines)  [UNTRUSTED SOURCE - needs re-test]

Log, verbatim:

```
PASS K1 one pair: outside record Fermi-Dirac, tau = w/T for every phase max off-diagonal 0.0e+00, max |tau - w/T| 5.6e-16
PASS K2 four pairs: tau from covariance = log P(empty)/P(full) = sum w_k/T tau_C = 13.260000000000, tau_Fock = 13.260000000000, sum w/T = 13.260000000000; outside Fock off-diagonal 0.0e+00
PASS K3 the offset is the ratio w/T; a common rescaling leaves it unchanged max change 0.0e+00
ALL PASS

```

Compared against the paper's own output `checks/bh_offset_15.out`:

**IDENTICAL** (diff prints nothing).

#### fresh_checks/bh_petrov_06.py.log  (1765 B, 21 lines)  [UNTRUSTED SOURCE - needs re-test]

Log, verbatim:

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

Compared against the paper's own output `checks/bh_petrov_06.out`:

```diff
5c5
< PASS P2 type III (31): Jordan structure [(np.complex128(-0j), [3])]
---
> PASS P2 type III (31): Jordan structure [(np.complex128(0j), [3])]
```

#### fresh_checks/bh_qnm_13.py.log  (1797 B, 17 lines)  [UNTRUSTED SOURCE - needs re-test]

Log, verbatim:

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

Compared against the paper's own output `checks/bh_qnm_13.out`:

**IDENTICAL** (diff prints nothing).

#### fresh_checks/bh_qutrit_18.py.log  (1143 B, 9 lines)  [UNTRUSTED SOURCE - needs re-test]

Log, verbatim:

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

Compared against the paper's own output `checks/bh_qutrit_18.out`:

```diff
3c3
< PASS Q3 mirror pair: fidelity 1, cover distance 2 arcsin|sigma3| > 0 F = 0.999999999999996, sign det X = -1 vs +1, cover distance on the fold path 2 arcsin|sigma3| = 0.2327
---
> PASS Q3 mirror pair: fidelity 1, cover distance 2 arcsin|sigma3| > 0 F = 0.999999999999994, sign det X = -1 vs +1, cover distance on the fold path 2 arcsin|sigma3| = 0.2327
```

#### fresh_checks/bh_shadow_07.py.log  (1849 B, 22 lines)  [UNTRUSTED SOURCE - needs re-test]

Log, verbatim:

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

Compared against the paper's own output `checks/bh_shadow_07.out`:

**IDENTICAL** (diff prints nothing).

#### fresh_checks/bh_spine_09.py.log  (713 B, 8 lines)  [UNTRUSTED SOURCE - needs re-test]

Log, verbatim:

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

Compared against the paper's own output `checks/bh_spine_09.out`:

```diff
1c1
< PASS S1 C - C^2 = BB^dagger and Tr(C^2 - C) = -Tr BB^dagger max error 7.8e-16
---
> PASS S1 C - C^2 = BB^dagger and Tr(C^2 - C) = -Tr BB^dagger max error 6.7e-16
```

#### fresh_checks/bh_wall_03.py.log  (1039 B, 13 lines)  [UNTRUSTED SOURCE - needs re-test]

Log, verbatim:

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

Compared against the paper's own output `checks/bh_wall_03.out`:

**IDENTICAL** (diff prints nothing).

#### fresh_checks/bh_wall_check.py.log  (634 B, 15 lines)  [UNTRUSTED SOURCE - needs re-test]

Log, verbatim:

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

Compared against the paper's own output `checks/bh_wall_check.out`:

**IDENTICAL** (diff prints nothing).

#### v10_fresh_checks/bh_noncommute_check.py.log  (66 B, 2 lines)  [UNTRUSTED SOURCE - needs re-test]

Log, verbatim:

```
g(AH,K)= 0  g(H,AK)= -2/15
diag T control: g(AH,K)= 0  g(H,AK)= 0

```

**No original `.out` exists** for this script in `bh_v10_code_and_sources` (neither in `checks/` nor in `rs/`), so no line-by-line comparison was possible.

#### v10_fresh_checks/bh_stiff_19.py.log  (589 B, 8 lines)  [UNTRUSTED SOURCE - needs re-test]

Log, verbatim:

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

Compared against the paper's own output `checks/bh_stiff_19.out`:

```diff
2c2
< PASS S2 square 1.828427124746189 vs 1.828427124746190
---
> PASS S2 square 1.828427124746188 vs 1.828427124746190
4c4
<    exact rhombus formula at k* : -1.7763568394002505e-15  and at k=0.5: 1.642573002183047 1.6425730021830471
---
>    exact rhombus formula at k* : -3.1086244689504383e-15  and at k=0.5: 1.642573002183047 1.6425730021830462
```

#### v10_fresh_checks/photon_ring_wall.py.log  (313 B, 4 lines)  [UNTRUSTED SOURCE - needs re-test]

Log, verbatim:

```
photon orbit r = 3*M ; generator eigenvalues +- L/(9*M**2) (affine), real: unstable wall
Lyapunov rate (coordinate time) = sqrt(3)/(9*M) ; orbital rate = sqrt(3)/(9*M)
echo demagnification per half orbit gamma = pi -> factor 0.0432139 ; delay = 3*sqrt(3)*pi*M
PASS: reproduces gamma = pi and delay 3 sqrt(3) pi M

```

Compared against the paper's own output `checks/photon_ring_wall.out`:

**IDENTICAL** (diff prints nothing).

#### v10_fresh_checks/rs02c_realization.py.log  (647 B, 7 lines)  [UNTRUSTED SOURCE - needs re-test]

Log, verbatim:

```
(1) two-level family: max error in a=k^2 sin^2(beta)/4, b=beta'^2/4, g_xy=0 over 50 draws: 1.6e-09
   m +0.00 -> +1.00: gaps 2.0000 -> 2.8284; Gamma(n=sqrt g_par) = +0.17157288; tanh(0.5 ln(gap2/gap1)) = +0.17157288
   m +0.50 -> +2.00: gaps 2.2361 -> 4.4721; Gamma(n=sqrt g_par) = +0.33333333; tanh(0.5 ln(gap2/gap1)) = +0.33333333
   m -1.00 -> +3.00: gaps 2.8284 -> 6.3246; Gamma(n=sqrt g_par) = +0.38196601; tanh(0.5 ln(gap2/gap1)) = +0.38196601
   m +0.20 -> +0.25: gaps 2.0396 -> 2.0616; Gamma(n=sqrt g_par) = +0.00535093; tanh(0.5 ln(gap2/gap1)) = +0.00535093
(2) max |a*gap^2 - 9| = 2.7e-09; max |Gamma - peel| = 8.7e-13
Realization: PASS

```

**No original `.out` exists** for this script in `bh_v10_code_and_sources` (neither in `checks/` nor in `rs/`), so no line-by-line comparison was possible.

#### v10_fresh_checks/rs03c_linear_limit.py.log  (479 B, 5 lines)  [UNTRUSTED SOURCE - needs re-test]

Log, verbatim:

```
theta 10: |r - Gamma|/(omega w) = 0.0747, 0.0746, 0.0746, 0.0746  at omega w = 0.01, 0.005, 0.0025, 0.00125
theta 25: |r - Gamma|/(omega w) = 0.1054, 0.1053, 0.1053, 0.1053  at omega w = 0.01, 0.005, 0.0025, 0.00125
theta 31: |r - Gamma|/(omega w) = 0.1807, 0.1818, 0.1823, 0.1826  at omega w = 0.01, 0.005, 0.0025, 0.00125
theta 60: |r - Gamma|/(omega w) = 0.0992, 0.1029, 0.1048, 0.1057  at omega w = 0.01, 0.005, 0.0025, 0.00125
RS03C: PASS (first-order convergence to Gamma)

```

Compared against the paper's own output `rs/rs03c.out`:

**IDENTICAL** (diff prints nothing).

#### v10_fresh_checks/sine_guard_check.py.log  (95 B, 1 lines)  [UNTRUSTED SOURCE - needs re-test]

Log, verbatim:

```
max |det - (g_par - C)| = 1.6e-11;  max (|Omega(V,dx)| - 2 sqrt(det)) = 3.1e-15 (must be <= 0)

```

**No original `.out` exists** for this script in `bh_v10_code_and_sources` (neither in `checks/` nor in `rs/`), so no line-by-line comparison was possible.

#### v10_fresh_checks/v10_corrections_check.py.log  (1393 B, 13 lines)  [UNTRUSTED SOURCE - needs re-test]

Log, verbatim:

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

Compared against the paper's own output `checks/v10_corrections_check.out`:

```diff
8c8
< C6 ||P+||^2 = 1 + (b-c)^2/g^2 on 500 random real matrices: max dev 4.3e-14  APPLY
---
> C6 ||P+||^2 = 1 + (b-c)^2/g^2 on 500 random real matrices: max dev 3.6e-14  APPLY
```

#### v10_fresh_checks/v10_push_others.py.log  (1031 B, 9 lines)  [UNTRUSTED SOURCE - needs re-test]

Log, verbatim:

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

Compared against the paper's own output `checks/v10_push_others.out`:

```diff
4c4
< P2 sine guard: Gram identity max dev 7.1e-15; two-level max(|Omega| - bound) = 1.3e-14 (median slack 0.0e+00: equality), three-level -7.8e-05 (median slack 0.37: strict)  PASS
---
> P2 sine guard: Gram identity max dev 2.8e-14; two-level max(|Omega| - bound) = 4.7e-15 (median slack 0.0e+00: equality), three-level -7.8e-05 (median slack 0.37: strict)  PASS
```

### B3.3 Summary table of the comparison (package fresh log vs the paper's own saved output)

| Script | Final outcome line in the package log | diff vs paper's own .out | Exact differences |
|---|---|---|---|
| bh_bell_11 | "ALL PASS" (PASS E1, E2, E3, A1, A2, A3) | IDENTICAL | none |
| bh_core_02 | "RESULT PASS" | IDENTICAL | none |
| bh_drift_symmetrize_02 | no pass/fail line (3 printed lines) | IDENTICAL | none |
| bh_ep_spinor_04 | "RESULT PASS" | differs, lines 3–6 | Only signs of zero and printing of zero parts in the complex holonomy matrices: l.3 original `M = [[0j, (-0-1.0594j)], [-0.9441j, 0j]]   M[0,1]*M[1,0] = (-1.0001+0j)` vs log `[[0j, -1.0594j], [-0.9441j, 0j]] … (-1.0001-0j)`; l.4 original `M1^2 = [[(-1.0001+0j), -0j], [-0j, (-1.0001+0j)]] … four loops = [[(1.0002-0j), …` vs log `[[(-1.0001-0j), -0j], [-0j, (-1.0001-0j)]] … [[(1.0002+0j), …`; l.5 control original `[[(1+0j), 0j], [0j, (1-0j)]]` vs log `[[(1-0j), 0j], [0j, (1+0j)]]`; l.6 original `[[(1-0j), 0j], [(-0+0j), (1+0j)]]` vs log `[[(1+0j), (-0+0j)], [(-0+0j), (1+0j)]]`. All printed magnitudes (1.0594, 0.9441, 1.0001, 1.0002, 1) are the same in both. |
| bh_fold_parallel_01 | no pass/fail line (9 printed lines) | IDENTICAL | none |
| bh_isco_10 | "ALL PASS" (PASS I1–I4) | differs | (a) The scipy `IntegrationWarning` block (5 lines) is at the END of the original (after ALL PASS, path `/home/claude/bh/levin/bh_isco_10.py:58`) and at the START of the log (path `/workspace/scratch/4ea79d7a2197/review/bh_agent/fresh_checks/bh_isco_10.py:58`). (b) Three lines print real eigenvalues differently: original `r0= 5.90 … eigenvalues = 0.01296+0.00000j, -0.01296+0.00000j` vs log `0.01296, -0.01296`; same for r0=5.00 (`0.06325`) and r0=4.00 (`0.17678`). All numbers equal. |
| bh_isco_cube_17 | "ALL PASS" (C1, C2, C2, C3, C4) | IDENTICAL | none |
| bh_knot_08 | "ALL PASS" (K1–K3) | IDENTICAL | none |
| bh_knot_14 | "ALL PASS" (K1–K5) | IDENTICAL | none |
| bh_lift_05 | "ALL PASS" (K1–K8) | differs, lines 9–10, 17–20 | l.9 original `Gram frame holonomy -1.00012+0.00000i` vs log `-1.00012-0.00000i`; l.10 original `regular frame holonomy +1.00000-0.00000i` vs log `+1.00000+0.00000i`; l.17–20 original prints `eigenline orientation -1.000000000+0.000000000j` (and `+1.000000000+0.000000000j` ×3) vs log `-1.000000000` / `+1.000000000` (no imaginary part printed). Biorthogonal values (-1.000248, +1.000140, +1.000473, +1.110969) equal. |
| bh_matched_12 | "ALL PASS" (M1, M2) | IDENTICAL | none |
| bh_nonnormal_04 | no pass/fail line (4 printed lines) | IDENTICAL | none |
| bh_offset_15 | "ALL PASS" (K1–K3) | IDENTICAL | none |
| bh_petrov_06 | "ALL PASS" (P1–P5) | differs, line 5 | original `type III (31): Jordan structure [(np.complex128(-0j), [3])]` vs log `[(np.complex128(0j), [3])]` (sign of zero). |
| bh_qnm_13 | "ALL PASS" (K1–K5) | IDENTICAL | none |
| bh_qutrit_18 | "ALL PASS" (Q1–Q3, P1, P2, C1) | differs, line 3 | Q3 fidelity: original `F = 0.999999999999996` vs log `F = 0.999999999999994`. |
| bh_shadow_07 | "ALL PASS" (S1, S2 ×3) | IDENTICAL | none |
| bh_spine_09 | "ALL PASS" (S1–S7) | differs, line 1 | S1 max error: original `7.8e-16` vs log `6.7e-16`. |
| bh_wall_03 | "RESULT PASS" | IDENTICAL | none |
| bh_wall_check | "RESULT PASS" | IDENTICAL | none |
| bh_noncommute_check | no pass/fail line: `g(AH,K)= 0  g(H,AK)= -2/15` / `diag T control: g(AH,K)= 0  g(H,AK)= 0` | NO ORIGINAL .out | script exists as `checks/bh_noncommute_check.py`, no saved output in the v10 archive |
| bh_stiff_19 | "ALL PASS" (S1–S5) | differs, lines 2 and 4 | l.2 original `PASS S2 square 1.828427124746189 vs 1.828427124746190` vs log `1.828427124746188 vs 1.828427124746190`; l.4 original `exact rhombus formula at k* : -1.7763568394002505e-15  and at k=0.5: 1.642573002183047 1.6425730021830471` vs log `-3.1086244689504383e-15  and at k=0.5: 1.642573002183047 1.6425730021830462`. |
| photon_ring_wall | "PASS: reproduces gamma = pi and delay 3 sqrt(3) pi M" | IDENTICAL | none |
| rs02c_realization | "Realization: PASS" | NO ORIGINAL .out | script exists as `rs/rs02c_realization.py`, no saved output in the v10 archive |
| rs03c_linear_limit | "RS03C: PASS (first-order convergence to Gamma)" | IDENTICAL to `rs/rs03c.out` | none |
| sine_guard_check | no pass/fail line: `max |det - (g_par - C)| = 1.6e-11;  max (|Omega(V,dx)| - 2 sqrt(det)) = 3.1e-15 (must be <= 0)` | NO ORIGINAL .out | script exists as `rs/sine_guard_check.py`, no saved output in the v10 archive. Note the log's own text says the second number "must be <= 0" and prints +3.1e-15. |
| v10_corrections_check | "SUMMARY: C1 apply, C1b apply, C2 apply, C3 apply, C4 apply, C5 apply, C5b apply, C6 apply, C7 apply, C8 apply, C9 apply" | differs, line 8 | C6 max dev: original `4.3e-14` vs log `3.6e-14`. |
| v10_push_others | "SUMMARY: P1 pass, P2 pass, P3 pass, P4 pass, P5 pass" | differs, line 4 | P2 sine guard: original `Gram identity max dev 7.1e-15; two-level max(|Omega| - bound) = 1.3e-14` vs log `Gram identity max dev 2.8e-14; two-level max(|Omega| - bound) = 4.7e-15`. P5 line (`max DK ratio 0.904 (must be <= 1)`) is the same in both. |

Totals: 28 logs; 25 have an original output to compare with; of those 16 are byte-identical and 9 differ; 3 have no original output. In the 9 that differ, every difference is one of: sign/printing of a zero part of a complex number, position and file path of a scipy warning, or a change in the last printed digits of a quantity at the 1e-14…1e-16 level. No PASS/FAIL/KILL/APPLY word differs between any package log and the corresponding original output. (I state what the diff shows; I do not grade it.)

Package statements about these runs to compare with the above (B2.1 l.220–224): "All completed with their expected outputs"; "Three of these are diagnostic print scripts rather than suites with explicit pass/fail assertions" (the three logs with no pass/fail line in `fresh_checks/` are bh_drift_symmetrize_02, bh_fold_parallel_01, bh_nonnormal_04); "The sine-guard diagnostic gave a 3.1×10⁻¹⁵ roundoff excess" (matches the sine_guard_check log).

## B4. review/archive_replay/ — 4 files read in full: YES  [UNTRUSTED SOURCE - needs re-test]

### B4.1 blackhole_independent_checks.py (2,257 B) — NOT RUN by me
Docstring: "Independent checks of formulas printed in Beasley BH v2 (August 2026). This is a new audit script, not an edit to the author's originals. Run from the workspace root with Python 3 and sympy." (P2's `archive_reading.md` l.20/27 and `archive_full_reading_5.md` "140, blackhole_independent_checks.py" describe it as an *archived historical* script extracted from `BLACK_HOLE_OLD_CHATS_AND_MATH_20261014(1).html` detail 140 and "freshly replayed" — i.e. it predates this AI's session and was re-run by it.)
What the code does (read, not executed): symbolic 2×2 metric `G = [[(1/w1+1/w2)/8, (1/w1−1/w2)/(8√3)],[same, (1/w1+1/w2+4/w3)/24]]` with w3=1−w1−w2; shape block `A = [[t1+t2−(t1−t2)(w1−w2), ((t1−t2)−(t1+t2−2t3)(w1−w2))/√3],[√3(t1−t2)w3, 2t3+w3(t1+t2−2t3)]]`; asserts `G*A − A.T*G == 0` ("physical_adjoint_residual"); at w1=1/2, w2=3/10, t=(2,1,13/10) asserts the Euclidean commutator `A*A.T − A.T*A` is nonzero; weights `[a(1−q),(1−a)(1−q),q]` and asserts `Σ (dw/dq)²/(4w) = 1/(4q(1−q))`; oscillator `position = velocity0·sin(ω t)/ω` with asserts; at w1=7/10, w2=3/10, t=(2,1,13/10) asserts `A − (13/5)I` is nonzero with zero square. Scope string: "Formula checks only; no black-hole simulation or empirical gravity validation."
Target: Beasley BH **v2** (August 2026, `blkhole_v2_final.pdf`) printed formulas: Bures-metric self-adjointness of the shape block, finite wall distance, the transverse-velocity-suppression statement (oscillator), the joint-wall Jordan block.

### B4.2 analysis/sun_blackholes/blackhole_independent_checks.json (596 B) — verbatim
```json
{
  "physical_adjoint_residual": "Matrix([[0, 0], [0, 0]])",
  "euclidean_commutator_example": "Matrix([[304/1875, -8*sqrt(3)/625], [-8*sqrt(3)/625, -304/1875]])",
  "radial_metric": "-1/(4*q*(q - 1))",
  "finite_boundary_path_length": "arcsin(sqrt(q0)); 0 < q0 < 1",
  "oscillator_position": "velocity0*sin(omega*time)/omega",
  "oscillator_velocity": "velocity0*cos(omega*time)",
  "jordan_matrix": "Matrix([[13/5, 7*sqrt(3)/25], [0, 13/5]])",
  "jordan_nilpotent_square": "Matrix([[0, 0], [0, 0]])",
  "scope": "Formula checks only; no black-hole simulation or empirical gravity validation."
}
```
(The package calls this a fresh replay output; "radial_metric": "-1/(4*q*(q - 1))" is how it prints 1/(4q(1−q)).)

### B4.3 check_retention_model.py (2,369 B) — NOT RUN by me
No docstring. Symbolic two-stock model `L=[[-(k+a), b],[a, -b]]`; transfer `T = k·((zI−L)⁻¹)[0,0]`; asserts `T = k(z+b)/(z²+(k+a+b)z+kb)`, `T(0)=1`, `−T'(0) = (1+a/b)/k`, column-sum identity, `T|_{b=0} = k/(z+k+a)`, and a derivative identity for an assumed clock rate `I/(I+αη a p/(k b))`. Then numeric examples with `M=[[-2, ret],[1, -ret]]` for ret = 1, 0.1, 0 over t∈[0,40], and a figure "The return channel separates delayed release from permanent retention" with caption "Conditional two-stock model; a = κ = 1. No astronomical data fitted." `'model_only':True`.
Target: the retention model used in the black-hole paper's retention statement (paper check `bh_spine_09` item S7: "retention: escaped fraction 1, mean residence (1+a/b)/kappa; b=0 keeps a/(kappa+a)") and the 4 October 2026 "Gravity, the Sun, and Black Holes" addendum.

### B4.4 output/sun_blackholes/retention_checks.json (525 B) — verbatim
```json
{
  "symbolic_assertions": 6,
  "transfer_function": "k*(b + z)/(a*z + b*k + b*z + k*z + z**2)",
  "mean_dwell": "(a + b)/(b*k)",
  "model_only": true,
  "examples": [
    {
      "return_rate": 1.0,
      "retained_at_t40": 1.035346594670242e-07,
      "eventual_escape_fraction": 1.0
    },
    {
      "return_rate": 0.1,
      "retained_at_t40": 0.071046063426174,
      "eventual_escape_fraction": 1.0
    },
    {
      "return_rate": 0.0,
      "retained_at_t40": 0.5,
      "eventual_escape_fraction": 0.5
    }
  ]
}
```
(The PNG/PDF the script would write, `retention_response.png/.pdf`, are not in the package.)

## B5. two_book_flow_check.md / .py / .json and shear_stationarity_check.json — read in full: YES  [UNTRUSTED SOURCE - needs re-test]

(Byte-identical copies exist in P1.) None of the four targets the black-hole paper; they target the connection-energy v16 flow candidate and the neutrino split-rate reading.

### B5.1 two_book_flow_check.md (2,074 B) — verbatim
```
# Two-book flow: independent finite-matrix verification

31 October 2026 UTC. This short verification was made during the reading, after the late research record exposed a v16 candidate identity that earlier v15 notes still listed as open. The root and the archive reader independently obtained the same cyclic-trace argument. This is a verification of the formula, not a novelty claim, a new Lean build or a physical identification.

Let K be any finite complex square matrix, let C=[K,K†], and evolve Kdot=−2[C,K]. Define E−=||C||F²/8 and E+=||K²−K†²||F²/8. Then

\[
\dot E_-=-\|[C,K]\|_F^2,\qquad
\dot E_+=-\|CK+KC\|_F^2.
\]

For the first identity put X=[C,K]. Since C†=C, Kdot†=−2X† and Cdot=−2[X,K†]−2[K,X†]. Cyclicity gives Tr(C[X,K†])=Tr(X†X) and Tr(C[K,X†])=Tr(XX†). Differentiating E− yields the stated result.

For the second identity,

\[
E_+=\tfrac14\bigl(\|K^2\|_F^2-\operatorname{Re}\operatorname{Tr}K^4\bigr).
\]

The Lax evolution implies (K²)dot=−2[C,K²] and Tr(K⁴) is constant. Therefore E+dot=−Tr(C[K²,K†²]). Expand

\[
[K^2,K^{\dagger2}]=KCK^\dagger+KK^\dagger C+CK^\dagger K+K^\dagger CK.
\]

Using C†=C and cyclicity, the trace of C times this expression equals ||CK+KC||F². This proves the second identity for every finite K, without the graph or unitary-edge assumptions.

Both quantities are nonincreasing along this declared flow. This does not imply that both tend to zero: a normal K is stationary and may have E+>0. Nor does the flow generally preserve the special unitary-edge graph class in which the two quantities are sums over transported vertex fields. The identity does not supply a physical clock, gain ordering, neutrino threshold law or gravitational energy interpretation.

The archived `wit_ce.py` B201 had a numerical derivative check and a trajectory illustration. The algebra above is separately recorded present verification. The accompanying small diagnostic checks centered directional differences at random finite matrices; its results are corroboration, not the proof.

```
Recorded: claims a proof ("This proves the second identity for every finite K, without the graph or unitary-edge assumptions") of `dE−/dt = −‖[C,K]‖_F²` and `dE+/dt = −‖CK+KC‖_F²` under `Kdot=−2[C,K]`, C=[K,K†], with `E−=‖C‖_F²/8`, `E+=‖K²−K†²‖_F²/8`. Self-grade: "a verification of the formula, not a novelty claim, a new Lean build or a physical identification." Refers to archived `wit_ce.py` B201.

### B5.2 two_book_flow_check.py (1,362 B) — NOT RUN by me
Docstring "Small independent diagnostic for the exact trace identities in the note." Seed 20261031; for n in [2,3,4,6], 20 random complex matrices each; centred directional difference with step `1e-6/max(1,‖v‖)`; asserts scaled error < 1e-7. Scope string: "Centered directional derivative diagnostic; exact proof is cyclic trace algebra in the accompanying note. No source-paper code or physical simulation was rerun."

### B5.3 two_book_flow_check.json (877 B)
`"seed": 20261031, "matrices": 80, "result": "passed"`; max scaled errors per dimension: n=2 [7.157938084101464e-11, 1.1878570607311648e-09]; n=3 [1.2839247217492775e-10, 4.4470112341128835e-10]; n=4 [7.100848984449071e-11, 2.638870349286071e-10]; n=6 [5.986165518540928e-11, 7.95457681029109e-10]; scope string as in the .py.

### B5.4 shear_stationarity_check.json (463 B) — verbatim
```json
{
  "example": "three Legendre moments; k=s=kappa1=kappa2=1",
  "resolvent": "32/37",
  "derivative_resolvent_wrt_kappa2": "-5/1369",
  "derivative_commutator_energy_wrt_kappa2": "0",
  "finite_difference": -0.00365230094967995,
  "analytic": -0.003652300949598247,
  "absolute_difference": 8.17032261387498e-14,
  "scope": "Algebraic counterexample to inferring response stationarity from commutator-energy stationarity; no nonlinear PBH threshold calculated."
}
```
No script producing it is in either package. Target: the neutrino paper ("When the Neutrinos Leave") split-rate/commutator-energy stationarity inference; not the black-hole paper.

## B6. Index, final checks, completion and discovery notes — each read in full: YES  [UNTRUSTED SOURCE - needs re-test]

### B6.1 review/current_papers_index_20261013_read.md (10,385 B, 62 lines)
Title "Current Zenodo papers vs Google Drive (2026-10-13)". The package says (corpus_discovery.md l.47) this is its "Local complete index text" of Jeromie's Drive file CURRENT_PAPERS_20261013.md; "Its claims about Zenodo dates/records are historical inventory claims; I did not freshly check all public records."
Black-hole-relevant lines:
- l.44: "2026-08-09 | Beyond the Event Horizon: An Operator-First Theory of Persistent Geometry and Black Hole Dynamics | version: (none set on Zenodo) | record 21860392 | main file: blkhole_v2_final.pdf | in Drive: yes"
- l.40: "2026-08-19 | Transient Structure at Solar Rigidity Interfaces and the Exceptional Point of the Dynamo Wave: An Operator-First Study of the Sun | … | record 22013524 | main file: suns_v1_5.pdf"
- l.32: "2026-09-25 | The Ledger Outlives the Metric: … | record 22959910 | main file: Gravity_Ledger_Full_Research_Edition_6_20260924.pdf"
- l.51: "2026-06-23 | The 5D Spectral Anatomy of Four-Body Obstructions: Kinematic Transport Geometry on Stratified Shape Manifolds | … | record 20818169 | main file: 4_Body_Prob (3).pdf"
- l.46: "2026-08-09 | The Square Case: Gram Reduction and Spectral Transport for N=d+1 Bodies | … | record 21855591 | main file: ladder_v4.pdf"
Other content: 28 concept records listed (l.24–51) with dates, Zenodo record numbers and main files; VOTKP v2.9 (record 23340757) and IQGT v7.2 (record 23351266) "ADDED 2026-10-13" with file sizes and md5; Drive folder "oct 26 updates" (id 1pKLkygVcPhJWy7jId7aNV6zUgdUCcqTG) notes. In this index the black-hole paper on Zenodo is still the August v2 (`blkhole_v2_final.pdf`); no v8.x/v10 entry appears.

### B6.2 review/final_coverage_check.txt (14,305 B, 81 lines)
"FINAL COVERAGE CHECK — 28 INDEXED FAMILIES AND SUMMARY SCOPE… Auditor: corpus_discovery reader. This is a coverage audit of the completed reading reports, not another reading or verification of the original papers."
Black-hole-relevant statements:
- Row 21 of the crosswalk (l.34): "21 | Beyond the Event Horizon, blkhole_v2_final.pdf | full August v2, all 16 pages and both printed scripts; later 8.4/10 separately covered | corpus_gravity_reading.md; black_hole_reading.md".
- l.9: "The historical black-hole queue, the broad discovery inventory, and Research_Review_and_Record.html are three different source sets. Completion of the first cannot complete the other two by implication."
- l.61: "BH August v2, attached research 8.4, recovered research 10 and cited-but-unresolved 10.1 are distinct. The reading of 8.4 plus every 10 delta is a valid full scientific-text method. Intermediate 8.5.1/v9_reviewed discovery is not an independent full reading of those copies."
- l.55: "The audit file observed during this check still had complete=false and 113 completed chunks, although newer reader checkpoints already exist."
- l.79 suggested scope paragraph ends: "…Research_Review_and_Record.html remains only excerpt-read, and the exact cited BH edition 10.1 remains unresolved."
- l.75: "A byte/hash check establishes source identity, not scientific validity or semantic reading… Nothing in this audit upgrades proposed physical identifications to results."
Rest of file: six "REQUIRED SUMMARY CORRECTIONS" to the package's own builder wording, version distinctions (IQGT, Dirac, Nonnormality, FOFT, Weight Between, Atlas, Compound Eye, Price), code/data boundary. No further black-hole-paper claim.

### B6.3 review/final_delivery_scope_check.txt (7,856 B, 54 lines)
"FINAL DELIVERY SCOPE CHECK… Reader: corpus_discovery. Read-only artifact review". Black-hole-relevant statements:
- l.13: "The source-table and root-note version qualifications correctly retain BH10.1 unresolved…"
- l.37: "At this review snapshot the audit is complete=false,162/205chunks,3,853,720/4,864,556characters,errors=[]. This is an intermediate checkpoint…"
- l.39: "The historical black-hole204chunk/3,954,816character completion is separate and already audited by root. It cannot be used as a substitute gate for the205chunk Research Record, all342 discovered Library candidates, or missing source packages."
- l.48: "Equal-capacity shell summaries leave shape/multipoles free and do not establish dynamical stability, a general mass inequality or physical identity between finite two-book algebra and gravity."
Rest: four "required or strongly advised final edits" about the builder's labels and the charged-star (EMD) route; no claim about the black-hole paper's results.

### B6.4 review/final_synthesis_check.txt (6,160 B, 30 lines)
"FINAL SYNTHESIS CHECK / Reader: neutrino_verify". No statement about the black-hole paper. Records: three-moment counterexample "R00=32/37 and dR00/dkappa2=-5/1369. The saved central-difference discrepancy is 8.17e-14"; refinement "Add the Grassmannian metric convention when giving squared speed E_B: ds²=(1/2)||dP||_F², hbar=1"; two "material findings" about other papers — "(a) Price of a Direction v4's supplied real-space census code has an extra conjugation in G21; the printed kernel fails projector/Hermiticity checks, so reported absolute capacities need a corrected rerun; (b) Matter at a Scale v5 explicitly leaves absolute Majorana census normalization open, and its printed SPARC derivative has a sign typo" (targets: Price of a Direction v4; Matter at a Scale v5 — not black-hole; [UNTRUSTED SOURCE - needs re-test]).

### B6.5 review/archive_completion.md (3,074 B, 15 lines) — verbatim in the tool record; key statements
- l.5: "The supplied `BLACK_HOLE_OLD_CHATS_AND_MATH_20261014(1).html` now has a complete reading of its extracted scientific and conversational source text… **204 of 204 chunks, 3,954,816 of 3,954,816 characters**, with matching hashes… Hashes establish source identity; the attributed reading notes establish what the readers examined."
- l.7: "This supplement supersedes the formerly unread historical source queue described in the first-pass archive and discovery notes and in the applications report. It does not certify all historical code/data in the separate VOTKP archive, every earlier manuscript version, absent original conversations, external references or datasets."
- l.9: "detail 122's July continuation is present under reader 5; its boundary in reader 4's chunk was not an actual missing source."
- l.11: "Repeated requests for plain complete explanations were sometimes answered by earlier assistants with either unsupported validation or deletion of the framework. Neither response is reliable. TMF, KMF, PMF, H_TSKF, CRFZD and their changing definitions belong in the record, while their proposed physical meanings must be evaluated independently."
- l.13: "The original March 2025 *Symphony of Everything* ends with higher-dimensional unthreading into a new verse. The later assistant reconstruction of an exhausted final unknot is not that original."

### B6.6 review/corpus_discovery.md (12,409 B, 85 lines)
"Broader corpus discovery and continuity evidence… Reader: corpus_discovery sub-agent." "This is a discovery and version-control report, not a claim to have read the whole corpus."
Black-hole-relevant statements:
- l.13: "bh_paper_v10.html — Library libfile_d381c94260b4819198b19d5c87feadb5, dated 20 October upload. Header explicitly says Research edition 10. The neutrino paper reportedly cites edition 10.1: that exact version has NOT been resolved."
- l.14: "bh_v10_code_and_sources.zip — Library libfile_508aceed61d88191a3762ab1fb1f5275, dated 20 October upload."
- l.19 ("Version hazards" 1): "Attached BH v8.4 is an older branch. Library contains v8.5.1 (libfile_086d387c443c8191bc50513f42f8daec), v9_reviewed (libfile_431068e5fda0819180c5915bbe76c0aa), and v10. The numeric order and upload dates differ: v9_reviewed was modified 15 October, v8.5.1 uploaded 19 October, v10 uploaded 20 October. Do not choose by upload date alone."
- l.20 (2): "I specifically inspected two v10 corrections raised by the BH reader. The parameter-dependent invertible-frame change no longer claims an exact connection term: v10 explicitly states the term need not be exact and gives a rotation counterexample (V10-CORRECTIONS). Its MOTS discussion explicitly restricts absence of Jordan defect to the simple principal eigenvalue and says nothing follows for other eigenvalues. These v8.4 overclaims have already been repaired in v10."
- l.26: the October-22 Steve material "refers to a DIFFERENT project from the new PBH-neutrino paper: an AI-written document shared by Stephen McCormick, titled "Superextremal bound states of subextremal particles in Einstein–Maxwell–dilaton gravity," credited "Stephen McCormick (but not really).""
- l.29: helper reports 049/050 "identify a static Schur complement missing dynamic instability, and BH10's frequency-dependent boundary operator as the correct template for eliminating a bulk."
- l.36: "The extremal shell endpoint was reported to lie at infinite logarithmic distance, unlike the finite-distance Bures wall; the nonextremal horizon fold did not transfer automatically."
- l.37: "Helper052 reports square-root ladder misfits: the sec^4 three-body rigidity is not an EP; normal-matrix perturbations do not generically have sqrt(epsilon) pseudospectral bulges; a shear quench was linear at the actual threshold. These are historical claims to verify against originals, not fresh results."
- l.5: "I read Research_Review_and_Record.html lines 3320–3729… Its remainder was NOT read." (later superseded per the package's own `research_record_completion.md`).
Rest: Library/Drive IDs for Colour, Offset Speed Limit, Weight Between, Dirac Time, Non-normality, UPG, Light etc.; "Foundational source queue"; recommended wording "Root cannot honestly say "all of your work has been read and learned" from this discovery task."

## B7. All other P2 files with a black-hole hit — what was read  [UNTRUSTED SOURCE - needs re-test]

Method: `grep -rciE` with the assignment's pattern over all of P2, then for each hit file the full section around every hit was read. Whole-file reads are marked. For partially read files the unread remainder is stated honestly here and again in Part E.

### B7.1 review/corpus_gravity_reading.md (39,177 B, 319 lines) — PARTIAL: read l.1–22, l.218–240, l.270–319 (i.e. header/coverage table, §2.4, §3.1 opening, §3.4, all of §4 "Beyond the Event Horizon v2", all of §5). NOT read: l.23–217 (Gravity edition 7 body, FOFT body) and l.241–269 (Suns §3.2–3.3).

Title "Gravity, FOFT, Suns, and the historical black-hole paper: complete scientific reading"; "Reader: gravity/black-hole specialist in the parallel corpus review"; "It does not report a new execution of the gravity/solar programs".
Coverage row (l.13): "Beyond the Event Horizon | `gravity_agent/sources/blkhole_v2_final.pdf`, 16 pages | Entire narrative, equations, AppendixA, both complete printed scripts in AppendixB, AppendixC graphic, and all24 references read… This is the August2026 v2, distinct from the October BH research-edition10."

**§4 "Beyond the Event Horizon v2: preserve the origin without reviving retired geometry" (l.281–302)** — every statement targets the August v2 paper (`blkhole_v2_final.pdf`, Zenodo 21860392):
- (restatement) v2 "derives the trace-one real symmetric Gram-space kinetic metric from the horizontal quotient: g(E_a,E_b)=Σ_i (E_a)_ii (E_b)_ii/(4w_i), g(E_ij,E_ij)=1/(2(w_i+w_j))"; "identifies the reflection quotient with real-qutrit Bures geometry, gives the trace-preserving transport A(H)=TH+HT−2Tr(TH)W, derives its shape/shear blocks in a common principal frame, and rejects older divergences at interior eigenvalue coincidence. The older mistaken formulas used eigenvector denominators (wi−wj)^{-1} as a mechanical connection; the quotient is regular at such interior coincidences."
- CRITICISM (l.292): "This v2 then overinterprets Gram-coordinate blow-ups at w3=0. It calls `g22∼1/(6w3)` infinitely costly, treats coordinate Jacobi-form entries∼1/w3 as divergent tidal curvature, and stages a horizon there. It also asserts transverse velocity suppression1/sqrt(2λ) from an oscillator without consistently fixing energy/amplitude. Its AppendixB computes with fixed Gram-coordinate directions; those are not bounded unit physical tangents near the folded coordinate wall." Targets: v2 horizon staging at w3=0; v2 transverse-suppression claim (Hairdresser "fingers"); v2 Appendix B scripts.
- CLAIM OF SUPERSESSION (l.294): "The later BH8.4/10 analysis already reviewed **replaces this conclusion**: writing w3=σ3² regularizes the rank-two oriented cover; the normal distance is finite (`arcsin sqrtε` in the normalized slice), bounded orthonormal curvature does not show the v2 rank-two blow-up, and rank-one is the genuine singular stratum. A coordinate coefficient diverging is not a causal horizon or infinite metric distance. The real-qubit control is a hemisphere/disk reflection quotient and its oriented double gives the Kendall sphere; v2's "pure-state boundary is the sphere" conflates these spaces."
- (l.296): "The triangular shape block and joint Jordan condition are real algebraic findings. They require both the wall and a coefficient relation, not every point on the wall… Frobenius non-normality of a coordinate matrix alone cannot establish physical transient growth in the kinetic norm. The v2 leap from transport non-normality to the Jacobi stability tensor and QNM-like global eigenfunctions is not a derived equivalence."
- (l.298): "The result that survives most directly is the cluster ledger. For its2×2 shape block approaching the joint point, rank-one projectors blow up as inverse pair gap with `||P1||·gap→|A12|`, while the enclosing rank-two projector stays finite and `Tr log A→2logλ*`. The example atε=.1 outside the contour correctly gives no enclosed pair. The Neumann/resolvent estimate in AppendixA makes the necessary isolation condition explicit. A printed resolvent-identity sign has no effect on its norm bound. The scripts are diagnostic records, and their old coordinate-curvature conclusion must be interpreted through the later correction, not silently re-endorsed because the gates execute."
- (l.300): "The GR correspondence is explicitly conjectural. The paper cites horizon perturbation literature, supplies a dictionary, and asks for an actual concrete horizon operator map. Wong charge transport is imported classical structure. The gauge proposition's title says persistence of "defectiveness," but its algebra proves non-normality under a strict mixed-term dominance assumption; non-normality does not imply a Jordan block. Superradiant extraction, Israel-type junction matching and a polariton trapping analogy are fenced proposals. None is a derivation of a causal horizon from Gram rank."
- (l.302): "The AppendixC image was inspected in the actual PDF. Page13 is an almost empty graphical-summary divider; page14 contains the "Black Hole Hairdresser" toolkit with scissors/triangular coupling, fingers/transverse suppression, mirror/log ledger, and light/contour panels. It faithfully illustrates the paper's own v2 claims, including the transverse suppression later needing correction. It is explanatory imagery, not an additional computation or evidence of physical black-hole information recovery."
**§5 (l.304–319)** recommendations: "keep an isolated cluster rather than individual eigenvectors; state the physical norm; distinguish a coordinate wall from a physical singularity…"; exact bridge `C−C²=BB†`, `K(t)=B e^{−itD}B†`; "A Gram wall, trace-log, Schur complement, or shared word "mass" is insufficient to identify Bartnik/quasilocal mass or a Penrose inequality"; closing list "normal is not isotropic; a gap is not locality; finite spectra do not automatically give a continuum low-temperature law; a Gram-coordinate blow-up is not infinite distance; a log-determinant Hessian squares a Green function; a complexified braid is not a physical real-parameter cycle; and an inverse statistical ansatz is not a microscopic hazard law."
Other read lines: §2.4 l.224 (FOFT holographic `ρΛ∼αs Mp²/R²` "horizon boundary choice" — FOFT, not BH paper); l.226 "A wave impedance/reflection amplitude requires an actual wave equation and boundary matching, which the later BH10 work supplies in a separate prescribed-metric model"; §3 Suns statements (shear-lane parameters, hazard-inversion criticism: "the stationary rate density is proportional to S(Φ)(dΦ/dλ), rather than the Jacobian alone"; "atβ=−1 … the source's phrase "logarithmic hazard" reverses the dependence") — targets Suns v1.5, not the BH paper.

### B7.2 review/archive_reading.md (24,092 B, 177 lines) — read in full: YES

Title "Historical black-hole archive: reading record and connections". Source read by that AI: `upload/BLACK_HOLE_OLD_CHATS_AND_MATH_20261014(1).html` ("6,332,220 Unicode characters… six complete historical records totaling **41,912 original source lines**, 45 manuscript/note/code inclusions, nine recall records, and explicit gaps"). This is the AI's first-pass record; l.25 lists what it had "Not yet close-read" (later said superseded by archive_completion.md).
Key content:
- l.27: the two archive_replay scripts "freshly replayed successfully (exit 0)… The first reproduces physical-metric self-adjointness, coordinate nonnormality, finite wall distance, oscillator counterexample and the conditional Jordan block. The second passes all six symbolic assertions and reproduces the three retention examples."
- l.41–55 "Main finding": exact autonomous elimination `x'=Ax+By+f, y'=Cx+Dy`, `x'(t)=Ax+B e^{Dt}y(0)+∫_0^t B e^{D(t−s)} C x(s) ds + f`, `K(t)=B e^{Dt} C`, `Σ(z)=B(zI−D)⁻¹C` ("archive §33, source `two_regime_bridge.md`, and the horizon manual"); nonautonomous `K(t,s)=B(t)U_Q(t,s)C(s)`; "zero observable feedback does not imply no hidden record".
- l.57–88: 34-row chronology table of the archive (March 2025 EFRO … October "two regimes", Penrose/creative history). Black-hole rows, verbatim: row 24 "July operator paper | Five-dimensional shape/shear tangent space, explicit 5×5 stiffness, doubled Jacobi generator, gauge sectors, transient plateaus, persistent projectors. This is a mathematically specified operator stage."; row 25 "Kerr notes | Stretched-horizon map J^T P_H T_Kerr J, five proposed claims, rotation/horizon weights. Notes call steps rigorous but missing derivations remain."; row 26 "Hairdresser | D_H(X)=Π_p X Π_p, hierarchy I0→I1→I2→I3, phase ledger, exterior M/J/Q interpretation, transverse suppression. Dynamics selecting the projector and causal identification are open."; row 27 "July programs | Kerr projectors, pseudospectral horizons, no-hair compression, ringdown/Grassmannian motion, superradiant channel selection, information geometry. Programs, not completed results."; row 28 "August v2 correction | Bures quotient metric, rank-two coplanar boundary, removal of false positive-eigenvalue singularities, explicit conjectural physical dictionary. Major superseding correction."; row 30 "September horizon instrument | Finite signed lift, metric-dependent projector norm, Schur response, hidden-block ambiguity, declared Schwarzschild light-ray model. Continuation is distinguished from inference."; row 32 "Pure-light interior video | Smooth horizon, no dangling "hair," inward future cones, light remains light. User's speculative visualization concept; original complete prompt unavailable."; row 33 "October two regimes | Exact block memory; delayed release vs absent return; conserved two-reservoir energy; conditional retained-load clock."
- l.90–134 "Exact mathematical structure worth carrying forward": `P(X+QYQ)P=PXP`; `R_PP(z)=[zI−L_PP−L_PQ(zI−L_QQ)⁻¹L_QP]⁻¹`; manual's `L_b=[[−1,0],[.3,−b]]`, exterior readout (1,0); retention model (`y*=aP/(κb)`, mean dwell `(1+a/b)/κ`, retained `a/(κ+a)`); clock law `θ'=J/(I0+αr)` "a separate constitutive hypothesis"; commutator identities; "An isolated Riesz projector continues through an internal eigenvalue collision; a rank-two cluster projector in the full two-mode block is I2 even at the displayed Jordan limit"; Atlas/Hecke notes.
- l.136–151 **"Corrections that must survive the move toward McCormick"** — 12 numbered items (the AI's list; targets are the old BH/Sun material). Verbatim headings: 1 "**Positive eigenvalue coincidence is not a shape singularity.** August v2 withdraws the old (wi−wj)⁻² terms. The generic boundary is rank-two coplanarity w3=0, not a codimension-one binary particle collision." 2 "**The Bures wall is at finite distance.** On signed lift w=(a(1−q²),(1−a)(1−q²),q²), ds²=dq²/(1−q²); length to the wall is arcsin|q0|. Metric-component divergence is not an infinite barrier." 3 "**The printed interior transport is self-adjoint in its printed physical metric under diagonal real T,W.** Coordinate Euclidean nonnormality need not be physical-energy nonnormality. This does not establish normality for genuine open GR generators." 4 "**The folded-coordinate Jordan limit is not automatically an intrinsic EP.** The manual's lifted tangent representation extends smoothly to a scalar limit under the Jordan condition; the coordinate transformation is singular at the wall, so no invertible boundary similarity is claimed." 5 "**Stiffness suppresses displacement at fixed energy, not velocity.** y=v0 sin ωt/ω, y'=v0 cos ωt. Inertia loading and stiffness loading differ." 6 "**Coordinate curvature growth needs metric/speed normalization.** The manual's one-path normalized eigenvalues approach about 7.67 while unnormalized components grow; this is a pathwise check, not a uniform bound." 7 "**Projector persistence is not amplitude decay.**…" 8 "**The Kerr dictionary remains unproved.** Old notes mix ω²−mΩH with ω−mΩH, reuse κ, and do not derive a resolvent bound from the local QGT inequality alone." 9 "**The Sun calculations need their actual norm and sampled-grid status.**…" 10 "**Solar observational arithmetic is not a fresh observation.**…" 11 "**The old flare-hazard inversion omitted survival weighting.**… The tenth-power law is not established by that argument." 12 "**No scalar load, commutator or projector identity alone produces Einstein constraints, a Lorentzian metric, universal clock coupling or physical horizon.**…"
- l.151: "The source census itself contains older language that the transport is "non-normal when both T and W are anisotropic." In the norm-independent sense that is overridden by the more precise physical-metric correction above. Preserve the sentence as history; do not silently revive it as the current conclusion." (Target: the non-normality statement checked by `bh_nonnormal_04`.)
- l.153–171: Penrose comparison pointer; Drive folder `https://drive.google.com/drive/folders/1eTsvaoD4fLfrZZdjoL7nRi4PWnizWccq`; list "What needs retrieving", incl. l.171 "A complete copy of the later Sun/BH ZIP: the old recovery reports truncation during BLKHOLE_4_.pdf, after 58 CRC-verified entries. It did not reconstruct the missing tail."
- l.173–177 recommendation: "Continue with the neutrino model as the first concrete physical case…"

### B7.3 review/archive_full_reading_5.md (35,102 B, 107 lines) — read in full: YES

Title "Historical black-hole and solar source reading, assignment5". "It records full reading, not new computation… Historical claims below are **not** silently upgraded to current results." The AI's per-detail notes on the old archive. Black-hole entries (targets = the historical BLKHOLE drafts, not v10):
- **122 part1, Blackholes_and_Suns(6)** (l.7): "This text asserts that nonorthogonal cross terms prove a plateau duration proportional to the Kreiss constant and a category-theoretic universal equivalence. It does not supply the needed evolution, norm, boundary, or map proof. It defines `DH(X)=Πp XΠp`, imposes a triangular block with divergent scalar stiffness, and asserts velocity suppression1/sqrt(2λ); a harmonic oscillator propagator does not give that for arbitrary initial data. Its theorem identifies binary collisions with wi=wj and horizon patches… labels an unconstructed correspondence an isomorphism. Later v2 retreats to a conjectural dictionary; later BH10 also corrects the wall geometry and kinetic-norm interpretation. The color-flux and polariton angle formulas are unsupported physical identifications… Four-tier raw-fields→currents→projectors→geometry was the organizing intuition, not a functor/isomorphism construction."
- **123, blkhole_v2_final** (l.9): "This intermediate version already withdraws interior-eigenvalue singularity and moves the horizon dictionary from theorem to conjecture; it still mistakes the rank-two Gram fold for infinite distance/tidal divergence. Its resolvent bound and cluster ledger are the enduring finite results."
- **124, BLKHOLE, dated 2 July 2026, 10-page draft** (l.11): "It uses Frobenius basis coefficients as if they were the kinetic metric and calls the basis coordinate-free despite a chosen principal frame. Shear terms use `(ẇi−ẇj)^2/(wi−wj)^2` and cross terms use `(ti−tj)ẇi ẇj/(wi−wj)`; the later v2 withdrawal addresses exactly these expressions… The EP⇔Ricci blow-up proof assumes quadratic lower-block vanishing, incorrectly identifies eigenvalue coincidence with binary collision, and claims the oscillator erases normal kinetic energy. Its first-order block has distinct imaginary eigenvalues for positive finiteλ, so diverging oscillator frequency does not establish a finite exceptional Jordan point… AppendixA's resolvent Neumann estimate is sound under a fixed resolvent contour and sufficient norm bound; the minus-sign Riesz convention needs contour orientation consistency. `1−||Π−Π′||` is a defined persistence diagnostic, not automatically a probability or positive overlap. Retain the rigorous bound separately from these interpretations."
- **126, pasted_text67, historical Kerr proof note** (l.13): "Attempts to derive a pseudospectral bound from QGT metric–curvature positivity, claims `ε∼κ^{-1/2}`… No link is supplied between those objects for a concrete Kerr operator… The purported no-hair proof asserts three surviving channels M,J,Q and applies Davis–Kahan to unspecified non-normal projectors; neither follows from its hypotheses. Static eigenprojectors do not decay with QNM amplitude… These are historical exploratory notes, not established extensions."
- **127, pasted_text66, historical Kerr construction note** (l.15): "defines the key projected transport operator `JᵀPH T J` by analogy rather than deriving a Teukolsky/Einstein evolution. Its diagonal T mixes surface gravity, `ω²−mΩH`, and an unspecified anisotropy; the adjacent prose says `ω−mΩH`… It asserts divergent effective inertia contrast, turns an action into the sin² law without defining R, assigns exactly three exterior projectors, and promotes the same Kerr/non-normal/refraction dictionary to five propositions."
- **128, pasted_text70, LaTeX of early BLKHOLE draft** (l.21): "This source confirms the exact origin of the misleading historical transient-profile graphic: its blue curve is explicitly hand-written as `(1+3t²−.8t³)e^(−t)` on0≤t≤3 and `.88e^(−.4(t−3))` afterward; no operator evolution generates it. The two expressions do not even meet at t=3 (approximately.319 versus.88). It is a schematic, not numerical evidence of an exact plateau. The same source draws the Hairdresser paths and four-tier correspondence by hand…"
- **131 BLKHOLE_2_ (15 pp, 2 July 2026)** (l.31–33): "Adds additive `Kgeom+Kgauge+Kboundary`, a boundary-junction chapter, Wong-equation discussion and a "persistence of defectiveness" theorem… postulates `[Kab]=(Θ/δ)(hab+ξΔ uaub)` and a lensing integral without a derived spacetime/embedding… Later v2 explicitly grades this as an ansatz." Gauge section: "A coadjoint-orbit kinetic/symplectic term or appropriate constrained variation is not displayed… Frobenius orthogonality `Tr KgeomᵀKgauge=0` is not equivalent to acting on orthogonal invariant subspaces… Even if established, non-normality is weaker than defectiveness. This is the origin of the later conditional proposition, not a universal gauge-driven Jordan theorem."
- **132 BLKHOLE_1_ (13 pp, 2 July 2026)** (l.35): "lacks the additional junction/lensing chapter present in BLKHOLE_2_… Its reference list still contains only Besson etal despite sweeping additional claims."
- **133 BLKHOLE_3_ (16 pp, 3 July 2026)** (l.37): "adds a four-layer concluding discussion and "Architectural Liftline" graphic: raw field singularity, covariant current regularization, projector tracking, persistent metric/ledger. It escalates finite contour regularity to a complete information-conservation framework and says the same paths govern polaritons and spinning holes; neither follows from the stated Riesz estimate."
- **137 check_retention_model.py** (l.43) and **159 retention_checks.json** (l.83): as in B4; "With a=κ=1, retained energy at t40 is≈1.04e−7 for b1,0.071046 for b0.1, and0.5 for b0; eventual escaped fractions1,1,0.5. These are stored historical outputs from137, not a new check run." (This sentence and archive_reading.md l.27 "freshly replayed" — see Part D.)
- **140/141 blackhole_independent_checks.py + JSON** (l.49): "Historical symbolic audit proves the supplied shape block is self-adjoint in the Bures kinetic metric (`GA−AᵀG=0`) while its Frobenius commutator can be nonzero. Along weights `(a(1−q),(1−a)(1−q),q)`, the radial metric is `1/[4q(1−q)]`, so the distance to q=0 is arcsin√q0, finite. The exact fixed-initial-velocity oscillator has x=v0 sin(ωt)/ω and v=v0 cos(ωt); a stiff frequency does not force velocity to vanish. A supplied joint-wall example gives `[[13/5,7√3/25],[0,13/5]]`, with a nonzero square-zero nilpotent part. These prior checks independently locate the same corrections carried forward to BH10; none establishes a spacetime horizon."
- **158 "Gravity, the Sun, and Black Holes", 4 October 2026 addendum** (l.77–81): "an explicitly AI-assisted, undeployed/undeposited addendum, not a new edition of the Gravity Ledger"; "The chronology matters: the kinetic-self-adjointness, finite-distance wall, oscillator and hazard repairs were already present in this4October addendum before the current BH10 treatment; they are not new discoveries first made by this reading."; scalar-shift control `[L−dI,(L−dI)†]=[L,L†]` but `‖e^{t(L−dI)}‖²=e^{−2dt}‖e^{tL}‖²`.
- **139 package_research.py** (l.47): "Its README explicitly warns that an older recovery archive mislabeled/duplicated Sun versions and duplicated an old BLKHOLE draft… It treats assistant-generated Kerr "proofs" as historical notes".
- l.85–101 (160, Atlas Bridges on the Langlands Scale, 28 Sept 2026): includes "The text's old assertion that four-body transport is physically non-normal whenever bothT,W are anisotropic is superseded by the October kinetic-metric self-adjointness correction. Its three random Frobenius examples do not prove an "if and only if" criterion even in that coordinate norm."
- l.105–107 final: "**49/49 assigned chunks fully read;647,442 assigned source characters**… No new numerical runs… Nothing in these older notes supplies the missing Lorentzian metric, Einstein constraints, quasi-local mass or causal-horizon map required to turn the Gram wall itself into a McCormick/Penrose theorem."
Solar entries (129, 130, 138, 142–156) were read too; they concern Suns v1/v1.5 scripts (e.g. "149, BH-DYNAMO-01… Its onset scan ends atα0=12, then substitutes that endpoint when no crossing exists and bisects an interval that does not bracket the actual onset12.696"; "151, N-RECOVERY-02-FINAL… the final heading says T(2,7) walls occur at `k/7`, while its own polynomial is `(t^7+1)/(t+1)`… roots are α=1/14,3/14,5/14,9/14,11/14,13/14") — targets: Suns scripts, not the black-hole paper.

### B7.4 review/archive_full_reading_4.md (38,810 B, 137 lines) — PARTIAL: read l.15 and l.89–137 (details 120, 121, 122 and the closing synthesis). NOT read: l.1–14, 16–88 (older chat material: SUKS/EFRO/Millennium/awareness threads).

- **detail 120 "older boundary/operator black-hole draft"** (l.91–103): "saved nine-page text through sections I–X, equations 1–45, three theorem statements… No explicit date was visible"; "Its claimed stiffness entries contain inverse eigenvalue differences `(wi-wj)^-1` and `(wi-wj)^-2`… These formulas are presented as exact but the displayed derivation does not establish them."; "Theorem 1 asserts exceptional points, Ricci blow-up and failure of a flow Jacobian are equivalent, taking `w1=w2` as a collision wall… These claims require conditions absent from this draft and are expressly retired in the later addendum. The proposed dynamic metric adds the same scalar `Tr(A Y Y^T A^T)` to every matrix entry; the separate formula `gab=Tr(Pi [Da,Db]Pi)` has curvature-like antisymmetry rather than being an established positive metric. `Tr(Pi(t)Pi(t+Delta))` tends at coincidence to projector rank, not necessarily 1"; "A displayed Kreiss bound lacks the supremum over time on its left side"; "Theorem 2 declares a category-theoretic isomorphism between a shape wall and Kerr horizon without constructing the map, and incorrectly identifies generic Kerr surface gravity as diverging at the horizon. Theorem 3 changes the parameter to an effective proper acceleration, but retains unproved projector-level equivalence, squared-sine refraction and no-hair claims."; "A direct paper-internal countercheck is decisive: equation 41 gives the oscillator propagator with entries `cos(sqrt(chi)t)`, `sin(sqrt(chi)t)/sqrt(chi)`, and `-sqrt(chi)sin(sqrt(chi)t)`. For zero initial displacement and fixed initial velocity, displacement amplitude falls as `chi^-1/2` while velocity amplitude is unchanged… Thus the displayed propagator itself does not establish the draft's universal normal-velocity collapse or clock freezing. This is an analytic reading check, not a newly executed simulation." Targets: the July draft's Theorems 1–3, eq. 41, stiffness formulas.
- **detail 121 "Gravity, the Sun, and Black Holes, 4 October 2026"** (l.105–125): "This is the strongest explicit correction ledger in this assignment. It reports earlier audits and reruns; those are source-reported work, not reruns performed during this reading." Solar numbers: "stress 0.902931 versus 1.484632, peak gain 8.753836 versus 2.253404, peak time 10 versus 3, and equal numerical abscissa 0.236768". On the BH paper: "The addendum says August black-hole v2 materially revises the July draft: it withdraws the supposed interior `wi=wj` shear divergence; uses the rank-two wall `w3=0`; retires the exceptional-point/Ricci equivalence; downgrades the horizon dictionary to Conjecture 1; and excludes the squared-sine refraction law. For positive trace-one `W`, the metric is `gW(H,K)=1/2 sum_ij Hij Kij/(wi+wj)` and the shape operator is `A_W(H)=TH+HT-2Tr(TH)W`… The zero `A21=sqrt(3)(t1-t2)w3` at the wall is a directional coupling statement. A Jordan block additionally needs diagonal equality and a nonzero opposite coupling. A closed spectral contour is not a physically closed horizon."; "Its central audit observes that `D_T(H)=TH+HT` is self-adjoint in `gW`, that `gW(W,H)=Tr(H)/4`, and that `P_W Z=Z-Tr(Z)W` is the metric-orthogonal trace-free projection. Consequently the interior shape operator is self-adjoint in this metric… Along `w3=s`, the wall distance has `dell^2=(1/(16w1)+1/(16w2)+1/(4s))ds^2`, so the generic rank-two wall lies at finite length."; two-stock model as B4; "Long delay is not a causal event horizon."; "The addendum says no new astrophysical fit, full gravity theory or Lean verification was completed."
- **detail 122 part 000 "Beyond the Event Horizon, 2 July 2026"** (l.127–131): "titled *Beyond the Event Horizon: An Operator-First Theory of Persistent Geometry and Black Hole Dynamics*, with a second abstract heading *Black Holes as Persistent Operator Filters*… Its introduction calls the proposal exploratory and says standard Kerr geometry/conservation remain intact; that caution coexists with strong unsupported theorem language in the body. It repeats the principal-frame five-basis construction, Jacobi matrix and inverse eigenvalue-difference stiffness formulas, speculative SU(3) extension, Ricci/exceptional-point equivalence, the normal-velocity `1/sqrt(lambda)` claim, the curvature-like metric expression, unnormalized projector overlap, a missing-time-supremum Kreiss formula, and arbitrary QNM plateau claims already examined in detail 120."
- closing (l.133–137): "All **32/32 assigned chunks, 667,098 characters**, were read fully… Neither universal 14.14 Hz numerology nor a shape-wall/Kerr equivalence has been established by reading this archive."
- l.15 (detail 095 area): early SMBH/JWST chat — "Its 10^19 Hz → 41.4 MeV conversion is also wrong by a factor of 1000."

### B7.5 review/archive_full_reading_6.md (82,833 B, 286 lines) — PARTIAL: read l.71, l.83–89, l.130–136, l.175–192, l.202. NOT read: the rest (~260 lines).

- l.87: "The black-hole interior "pure light and information" sequence is a speculative cinematic concept. The phrase that light does not stick and the horizon is not a wall concerns the intended causal picture; it does not derive an interior ontology. No-hair as projector compression, Kerr reduction, SU(3), ringdown-as-Grassmannian motion and superradiance-as-channel-selection remain proposed mappings where the necessary physical derivation is missing. Old numerical CN/frequency matches, universal torsion clocks, negative-frequency particle arguments and unsupported fit percentages remain retired."
- l.134 (Square-ladder/June four-body corrections, compressed notes): "G=XᵀXrotationinvariantvsXXᵀequivariant; binarycollisioncodimd(3for4body), rank2coplanarnotcollinear… A(H)=TH+HT−2tr(TH)G… Kinetic1/εcoefficientfinitewalllengthvslogvolume1/ε²infinite; signedheightmayregularizequotient… blocktriangularinvarianceisnotvelocitysuppression."
- l.175–185 nine "recall" summaries; BH-relevant: Recall 5 "July2 first manuscript title and source filenames BLKHOLE.pdf / blkhole_v2_final.pdf; first public version21147367. Persistent spectral projectors are robust where individual eigenvectors become singular, with isolated-cluster assumptions. Kerr reduction, horizon rigidity, triadM/J/Q, SU3, superradiance and no-hair mappings were asserted, not derived. The emphatic sentence about Kerr horizon as strongest persistence filter is a prior-assistant framing, not verified theorem."; Recall 6 "coplanar rank2 boundary, finite signed shape path and projector norm1 in quotient metric. The one-way finite model gives nonunique interiors with identical outside signals, without predicting a real GR interior."; Recall 7 (cinematic intent) quoting "LIGHT DOES NOT STICK. THE HORIZON IS NOT A WALL. THE LIGHT REMAINS LIGHT. WHAT HAS CHANGED IS WHICH FUTURES ARE AVAILABLE TO IT"; Recall 9 "July programs Persistent Projectors on Kerr, Pseudospectral Horizons, No-Hair Compression, Ringdown/Grassmannian, Superradiance Channels, Information Geometry, Stellar vs Horizon Transport; evolutionPdot=[A,P]+N(P) is a proposed template… The recalled no-hair compressionD_H(X)=ΠXΠ and prunedresolventlog functional need actualGR correspondence; fixed-energyvelocitysuppression was later corrected."; Recall 1 "Preserve no-hair-as-projector-selection as intended research idea, not established GR result."
- l.71: "Non-normality does not by itself identify physical energy, guarantee transient amplification, or establish a gravitational horizon."

### B7.6 review/archive_full_reading_1.md (49,846 B), _2.md (65,705 B), _3.md (33,744 B), archive_full_addendum_2.md (27,074 B), archive_full_addendum_6.md (29,653 B) — PARTIAL: only the hit paragraphs were read.
- _1.md l.135 ("mismatched time horizons" — not black-hole; a pasted technical review of old SUKS code).
- _2.md l.15, l.19 (SUKS-2 constants; OTKP/QSST — hits are "rigidity"/"horizon"-free false positives on "disco…"); l.43 "Finishes the black-hole, solenoid, monad, quasicrystal and pioneer-completion narrative… The saved response calls it a rigorously validated theory of everything, repeats the same unsupported numeric predictions, and claims all Millennium problems solved."; l.184 (old LIGO 14.14 Hz claim); l.214 "The user's original scientific hunch is clear: supermassive black holes and gravitational activity may draw in hydrogen, compress it, drive outflows associated with stars, and **compress information**… These questions establish a real ancestor of the later boundary/retention programme. They do not establish the strong answers the assistant supplies."
- _3.md l.57 (cosmic-memory hierarchy incl. black holes; "Kyber Field"), l.59.
- addendum_2.md l.35, l.65 duplicate _2.md l.184, l.214 text; addendum_6.md l.47 duplicates _6.md l.256 (Lean/mathlib retrieval note).
None of these paragraphs makes a claim about the black-hole paper's results. The rest of each file was NOT read.

### B7.7 review/research_record_addendum_2.md (26,110 B, 83 lines) — read in full: YES

"Reader: `/root/black_hole_read`, reserved chunks 058–067… Full source outputs read, not keyword summaries; no source scripts executed." (Its text is also embedded in research_record_reading_2.md l.128–216.) Black-hole-paper statements:
- l.17: "ISCO is conservative marginal stability without a settling optimum; a horizon is not generally a projector wall, and a nilpotent null dyad exists at any spacetime point with a null vector."
- l.73 (on v2): "Beyond the Event Horizon v2 contains real quotient geometry and a stated conjectural gravity dictionary. The trace-one reflection quotient has Bures–Wasserstein weights; the oriented quotient retains a double cover. Positive interior eigenvalue coincidence is not the old claimed curvature singularity. At the rank-two coplanar wall the corrected block is triangular; Jordan defect still needs eigenvalue coincidence and nonzero coupling. A separated rank-two cluster/trace-log persists while rank-one records can diverge, but no horizon isomorphism follows. On W(w)=diag((1−w)/2,(1−w)/2,w), ds²=dw²/[4w(1−w)] and length to ε is arcsin sqrt ε, finite. A singular coordinate coefficient is not infinite distance. Likewise y''+2λy=0 does not fix a λ^(-1/2) velocity amplitude without normalization/initial-data constraints. The printed resolvent inequality has the correct lower-bound direction and should not be criticized as reversed."
- l.75: "Russell's ISCO6M, photon sphere3M and horizon2M are different; unstable circular timelike orbits exist between3M and6M. Dirac-Time's predictive quotient is readout-dependent, and its horizons can coexist with an open local gap and positive projector geometry… Gravity6 begins with the exact orthogonal/oblique distinction and a metric wall without an EP".
- l.41–51 (October-12 Penrose comparison record 130): geometric burden of the Penrose inequality (`16πμ=R+(trK)²−|K|²`, `8πJ=div(K−trK g)`, `m≥sqrt(A_min/16π)`), charged branch control "m=2,Q=1,r=.1 is the concrete failing control", AdS kernel normalization correction "c₂=(1/(16π))∫N[|q−Qv|²+|U|²+2FJ_s0F]dV".
- l.79–81 recommendations ("The direct McCormick route should choose an actual geometric boundary-value or mass–area problem…"; "The older question "does E+ fill while E− drains?" has a genuine later answer in CE v16: both decrease under the corrected double-bracket flow.").
Other paragraphs (colour, Koide, Lean CE repo, Mixin, music) were read; not black-hole.

### B7.8 review/research_record_reading_1.md … _6.md (36,527 / 63,887 / 53,342 / 45,874 / 39,361 / 68,336 B) — PARTIAL: hit sections read in full, remainder NOT read.

These are the AI's notes on `Research_Review_and_Record.html` (not in the package). They contain second-hand accounts of the black-hole proof log, a "v10 completeness report" and an "independent Fable v10 referee report" — i.e. statements ABOUT reviews of the black-hole paper that this ledger cannot check. All [UNTRUSTED SOURCE - needs re-test].

**research_record_reading_1.md — read l.59–66, 97–102, 127.**
- l.61: "The review gives useful correction provenance: BH8.5.1 still carried moving-frame, rank, Fisher-rank, MOTS and fold overstatements; the v10 referee says the mathematical repairs reproduce but still requests disclosure that RS03's Richardson gate failed before a post-hoc ratio test, source correction for the charged photon-ring number, and removal of leftover horizon/rank/diabolic wording. The current BH report is the authority for the actual v10 bytes; these historical reviews must not silently overwrite it." Targets: v8.5.1; v10 RS03 disclosure; v10 charged photon-ring number (`v10_push_others.py` P1 / photon-ring section); leftover wording in v10.
- l.99: "The dilaton-black-hole identity M²+Σ²−Q²=(r₊−r₋)²/4 is exact algebra. Mapping it into a two-book matrix is an encoding, not a proof of gravitational stability… The quasi-black-hole endpoint has infinite logarithmic distance, unlike the finite Bures wall; its extremal horizon is not the ordinary nonextremal fold."
- l.101: "The square-root ladder rejects a universal EP reading… The shear-lane growth vanishes approximately linearly (exponent .987, corrected B_c=.7985/32.16°), not with the remembered square root; B_c=.735 belonged to a different metric-wall calculation. Three-body sec⁴ rigidity, eigenvalues escaping to infinity, Cauchy–Schwarz amplitude floors and curvature inequalities are not collision rungs."
- l.127 ("Versioned ideas ledgers v1–v6"): "early SURVIVED labels for Smith–Snell and planetary-plane mixing become explicit failures under their registered thresholds; later direct sharp-step matching survives but thick-layer transverse dependence remains. RS03W2 Richardson fails at7.4e−4, then a separate first-order error ratio supports the limit; the failed registered gate stays failed. Photon-ring attenuation is a known Schwarzschild-specific reproduction, not a generic new wall law; charged counterexamples differ. The thermal fermion Γ=0 point is zero frequency, not all horizon modes. 'Kerr is the endpoint' was removed for lack of source. Physical projector-space hoses and universal synchronization mechanisms remain rejected or open." Targets: IDEAS_LEDGER (v1–v6; the v10 archive ships `IDEAS_LEDGER_v5.md`), RS gates, photon-ring section.

**research_record_reading_2.md — read l.99–106 and l.128–216 (= addendum, see B7.7).**
- l.101: "Penrose working notes grade the scalar Schwarzschild double algebra exact but its identification with a graph field structural. The global mass–area inequality has no book analogue… The accompanying log reports a 262-page unrefereed manuscript read, not externally validated. One intermediate CTSR note repeats the erroneous 'isotropic part cancels in MJ+JM'; the final reconciliation correctly has MJ+JM=(Tr M)J and the commutator kills isotropic terms."
- l.105: "…no finite-radius horizon follows from a positive lapse-only clock rate; a thermal or scalar trace snapshot is not dynamical memory; an exact spectral projector of the same closed H makes PHQ=0…"

**research_record_reading_3.md — read l.19–37 and l.73–77.**
- l.25 (chunk 070): "Reflection tests are genuinely preregistered in source: Laplace–Beltrami wave on g=a(y)dx²+b(y)dy² has sharp admittance Y=ω√(a−C) and Γ=(√(a₁−C)−√(a₂−C))/(sum), independent of b; total reflection corresponds to geodesic turning. Recorded outcomes preserve killed finite-tolerance gates: polar shift K2 failed with kinked lead, sharp-step K1 failed at chosen finite width; smoother lead and Richardson extrapolation are follow-up diagnostics, not erased failures… BH description distinguishes shape fold, ISCO spectral wall and structural comparisons."
- l.27 (chunk 071, "Full first major portion of BH proof log v7, covering paper v8.5"): "It separates derived, measured, cited, reproduction and Lean target difficulty A/B/C; a target is not compilation. Core finite geometry: w=σ² regularizes metric, wall distance arcsin√ε; kinetic g_W makes A=P_WD_T self-adjoint under its admitted commuting/diagonal setting, with positive rank≤1 hidden footprint. Gram Jordan point lifts to ordinary conical double point on orientation cover; Frobenius projector divergence versus kinetic norm1 is a frame distinction. Gram complex-loop −1 contains removable folded share1/2, while real mirror-crossing loop has genuine eigenline reversal. Petrov/Majorana map, explicit Jordan types, mock-modular/knot asymptotics and cited Kerr type D remain scoped. Schur–Cayley passivity, projection leakage and finite-moment observability are distinct from causal trapping; every b>0 leaks eventually in the retention example, b=0 retains a fraction. Membrane matched-load comparison is structural, not automatically whole-exterior zero reflection."
- l.29: "Schwarzschild ISCO generator has V″/2=(r−6)/(r³(r−3)) and nonzero nilpotent block at r6; Levin whirl logarithm is reproduced. Pair marginal loses phase while exchange can reveal different correlated futures. QNM exceptional-pair residues diverge individually but sum and Jordan signal stay finite; first-run thresholds/damping/contour were changed and recorded. Rosso–Jones missing 1/2 was caught by unknot control; 8₁₉ period16 is measured, not analytically established. Fermionic Hawking offset τ=ω/T follows thermal occupation and is scale invariant. The log explicitly proposes correcting earlier public Lean docstrings about distance and intrinsic signs rather than deleting valid coordinate algebra."
- l.33 (chunk 072): "New retained corrections are important: sixth solar EP drifts beyond α₀13 under grid refinement, preserving five continuum crossings; Z₃ alone does not force a quadratic gap (Jahn–Teller control); Fischer/QFI normalization is F_Q=4g=8K, not 4K; mirror configurations share Gram covariance despite nonzero cover distance. Claimed universal gravitational stiffening was overturned by a rhombus: quartic k⁴+2k³−62k²+2k+1 gives k*=0.144556694814 and negative transverse stiffness below it. Twenty thousand ordinary random samples missed the elongated region; collision-penalty failure is recorded. Gram and cover are similar only off the wall where J is nonsingular. Horizon impedance match is a surface statement; exterior greybody reflection remains. Missing bibliographic author names were not guessed."
- l.35: "RS03 adds independent sharp matching, profiles, reciprocity, flux, b-dependent thick-layer opposite, turning onset and gap controls. W2 initially failed; an addendum before rerun diagnoses unresolved layer relative to solver step and states the same failure threshold."
- l.75 (chunks 082–083, "Full v10 completeness report and independent Fable v10 referee report"): "Keep versions chronological: audit identifies omissions/overclaims in8.5.1; v10 referee reports most fixed, some residual prose/disclosure issues. Already catalogued corrections include commuting/common-frame self-adjointness; normalized Jacobian; sphere induced metric rather than flat; rank strata rather than collisions; hidden rank≤1; general frame Berry term not exact; holomorphic logarithm; exact rank-one oblique norm1+(b−c)²/gap²; compression versus separate data disposal; full-rank Fisher limit discontinuity; finite-amplitude square bound false; distinct anomalies; static-base fold versus null horizon; principal eigenvalue simplicity only; limiting band projectors; ideal-state Bell; no automatic Wong dynamics; non-Hermitian K(t). New provenance emphasis: RS01 K2, RS02 K1, plane-mixing K1/K2 and negative-coupling metric positivity all failed despite old ledger strength. Source pre-reg file times do not establish registration chronology. Galactic p was reproduction of RAR calibration, not new dark-matter mechanism; photon-ring echo is known reproduction and not a type-changing wall. Later referee independently reports full reruns and numbers matching, but **pre-registered RS03 W2 Richardson kill7.4e−4 remained after layer resolution; replacement first-order test was written afterward**. It supports first-order convergence, not original gate survival. v10 still needed local prose corrections and Q=.9 RN nonlinear number's correct script provenance. Referee says no projector metric substituted for spacetime metric in reviewed edition. All referee reruns are source-reported historical evidence; none rerun here." Targets: v8.5.1; v10 RS section (rs/PREREGISTRATION_RS03.md, rs03_push, rs03b, rs03c); v10 "Q=.9 RN nonlinear number" (charged photon-ring).
- l.19–23 (two-books/Penrose opposite map; June engine `{M,J}=(TrM)J`): read; not black-hole-paper claims.

**research_record_reading_4.md — read l.27–35, 53–74, 99–101, 144.**
- l.31: "The shape wall needs both `w3=0` and a joint diagonal condition for a nonzero Jordan block; merely reaching the wall can leave distinct eigenvalues. Schur elimination of an accretive operator gives an accretive boundary impedance and a contractive Cayley response… an indefinite Hermitian-part control can amplify. Projector compression obeys `C-C^2=BB*`…"
- l.35: "metric dependence at the shape wall: the printed block is self-adjoint in the Bures metric, individual physical-norm projectors remain norm one, and a square-root cover coordinate makes the limiting block scalar even where the singular Gram coordinate has a nilpotent. Generic wall length is finite (an explicit path gives arcsin distance); divergence of a coefficient is not infinite distance or causal inaccessibility."
- l.65–72 "The next black-hole checks add material corrections beyond the prior four-body summary:" (six bullets, verbatim essentials):
  - "**Bures self-adjointness requires the right common frame.** The claimed operator A(H)=TH+HT−2Tr(TH)W is not generally self-adjoint in the Bures metric when T and W do not commute; a rational counterexample has asymmetry magnitude 2/15. Diagonal T in W's eigenframe is the positive control. The actual Jacobian of the normalized congruence flow contains the additional scalar shift −2Tr(TG)H." (target: `bh_noncommute_check.py`, `v10_corrections_check.py` C1/C1b; paper's self-adjointness statement)
  - "The eigenvalue simplex metric becomes a round spherical octant, curvature 1, not a flat space. The real-qubit Bures surface has radius 1/2 and curvature 4. The hidden feedback spine has rank at most one, and vanishes for isotropic T. A general parameter-dependent frame change adds a geometric-phase term; even a single-valued rotation need not leave the claimed real exponential holonomy invariant. The diagonal-frame term is share-weighted dlog F_i." (C2, C3, C4, C5, C5b)
  - "For a real 2×2 matrix with real distinct eigenvalues, ||P||²=1+(b−c)²/gap². The F_Q=8K identification is qualified at a rank-changing boundary: the support-defined SLD Fisher value can be zero exactly at s=0 while the lifted limiting value is 4. The square's negative quartic correction disproves the advertised finite-amplitude harmonic "at most" bound. At lapse N=0 the symbol is the zero matrix with no distinguished band projector; only the N>0 projector's limit exists." (C6, C7, C8, C9)
  - "Photon-ring checks recover the Schwarzschild null-orbit exponent and half-orbit delay, and compare charged RN as an opposite control: e^(−π) is not universal across charged holes. The code calls the exponential a brightness ratio; what it directly derives is the local orbit-instability/demagnification factor. An observational brightness prediction additionally needs the image/emission setting. These checks do not derive spacetime from the four-body model." (target: `photon_ring_wall.py`, `v10_push_others.py` P1; criticism of the word "brightness")
  - "The refraction figure distinguishes a sharp step, where transverse metric drops out, from a finite layer where it matters. Turning depends on the tangential Clairaut invariant. The QGT sine guard is an inequality in general, saturated in the two-level family. The fermion Smith coordinate tanh(ω/2T) is a reduced occupation identity; its zero occurs only at ω=0. A matched scattering load is a different zero on the same coordinate chart." (P2, P3; fig f19)
  - "Compression X↦PXP is idempotent for an idempotent P, but Frobenius-orthogonal only for Hermitian P; oblique Riesz compression is the countercontrol. Tight-cluster tests show individual eigenvectors turning while their subspace holds. Their numerical Davis–Kahan ratio uses the original unperturbed gap; this finite sample does not by itself justify the unrestricted gap convention in a theorem." (P4, P5 — second statement of the Davis–Kahan criticism)
- l.57: "reactive reflection lies on the unit circle while a matched load sits at zero; these do not establish solar or horizon dynamics… Schwarzschild inversion, RN r+r−=Q², fold-coordinate regularization and a finite metric-projector Pythagorean identity are structural bridges, not a gravitational inequality proof."
- l.59: "Dark-energy wording is removed from the odd-block offset result; Hairdresser/retention and Hawking readings remain in their own papers. A fixed squared-sine law is under audit and not retained. The mixing law was killed inside 1,500 au."
- l.101: "A horizon lapse zero, ISCO marginality and dissipative EP are different objects."
- l.144: "For the McCormick direction, this span supplies guardrails rather than an independent new geometric inequality…"

**research_record_reading_5.md — read l.11–25, 33–35, 41–63, 79–96, 117–129.**
- l.15 (record 357): "…the Gram wall has finite lengtharcsin√w; and oscillator velocity depends on the imposed initial normalization. The charged examplem2,Q1,r0.1 satisfies an upper-area-radius bound while violating the algebraically rewritten lower-mass bound because it lies on the wrong branchr<Q."
- l.21 (record 361): "compares even spatial Schwarzschild doubling with the odd leading degeneracy of Gravity Ledger's projector metric. Settingλ=√N withr=2m/(1−λ²) makes the spatial radial coefficient16m²/(1−λ²)^4 smooth atλ0. The Gravity wall hasdetg≈−2y and overlap excess≈h³. These leading parities differ; they should not be merged under the word"wall.""
- l.33 (record 366): "The wave's first-order flux generator squares to`−b(ω²−p²/a)I`, becoming a nonzero nilpotent at the Clairaut turning pointa=p²/ω². The Hairdresser mapPXP is an orthogonal projector on operator space for orthogonalP, blind toQYQ. The old sine-squared refraction rule is recovered conditionally for the specified scalar wave via tangential phase conservation."
- l.35: ""Majorana-like," "matched," and "horizon" are interpretive identifications… Its final random Hermitian-cluster checks illustrate internal-vector motion versus cluster stability; the quoted sharp original-gap Davis–Kahan bound needs the cross-gap qualification documented in the current BH10 review." (third statement of the Davis–Kahan criticism)
- l.43 ("This batch rereads the embedded BH10 code copy already studied in `black_hole_reading.md`"): "Record373 completes Bell/anomaly checks: an ideal squeezed pair has phase-blind thermal one-mode data and pseudospin CHSH`2√(1+tanh²2r)`; equal marginals can have opposite exchange-generated futures; the imported1+1 Hawking flux is reproduced algebraically… The finite retention balance is an analogy to accounting for an excluded flux, not a derivation of the gravitational anomaly or accessible experimental Bell violation across an astrophysical horizon."
- l.45: "Record374 gives the symbolic five-dimensional Gram transport block, its joint wall/Jordan condition, complexified pair braid, count-gated ledger and exact2×2 transient norm… The specific example's |μ|/b≈0.1865 is below the>2 transient-growth threshold; a Jordan block alone does not guarantee gain. Record375 symmetrizes a scalar exact driftX=∇ψ by `e^{-ψ}Le^ψ=−Δ+Q+|∇ψ|²−Δψ` and uses rotational curl as the obstruction control; global exactness and appropriate operator domains remain hypotheses."
- l.47: "Record376 and later figure code record the important sign correction: biorthogonal transport around a complex Gram-frame loop produces residue½ and a−1 sign, whereas the regular cover/frame comparison changes what connection is being transported. A real conical loop through the two oriented sides has a distinct eigenline reversal. The report does not promote the old fixed-frame sign to an invariant under arbitrary parameter-dependent similarity."
- l.49: "Kerr typeD is diagonalizable with repeated eigenvalues, unlike typeII Jordan degeneracy… Record385 reproduces `ωr²=(r−6)/(r³(r−3))` in proper-time units and the separatrix logarithm with slopeΩ/λ. Record386 defines effectivep by the epicyclic/orbital ratio, obtainingp=2+6M/r; it does not claim the Schwarzschild force literally becomes a Newtonian inverse-power force. Linear proper-distance lapse is Rindler-flat, so a clock gradient alone is not curvature. Extremal RN has a logarithmically infinite spatial throat and no nonextremal square-root fold."
- l.51: "The old random-planar histogram titled"gravity always stiffens" is replaced by the explicit rhombus stiffness `½[4√2−√((1+k²)/2)(1+1/k)]`, which changes sign atk*≈0.1446. The square's positive stiffness2√2−1 survives, but the universal planar claim does not. Retaining the obsolete script inside BH10 is provenance, not evidence that BH10 still endorses its caption. Record384 preserves the limited shared square-root form of a nonextremal static spatial base and Bures wall; identical leading forms do not identify their geometry or causal role." (targets: `bh_qutrit_18.py` P2 "fraction stiffening 1.000" / fig f18 vs `bh_stiff_19.py` / fig f18b)
- l.57–63: "Records388–411 complete the BH10 computational package… a failed universal amplitude expectation leads to a16-residue-class numerical pattern"; "The central surviving finite statement is record397's compression defect: `PH²P−(PHP)²=PHQHP=BB†`… `K(t)=Be^{-iDt}B†`… `Z=W†LW`, and the Cayley defect`I−S†S=4(WV)†Herm(L)(WV)` is positive"; "distinguish the dynamo's **disjoint swaps** from a proposed Kerr-like climbing cascade"; "The reflection sequence records W2's failed complex Richardson criterion, resolves the narrow layer with breakpoints, and then tests direct first-order error scaling inωw… The final sine-guard program identifies the Gram determinant of a metric-unit direction and the Killing direction asg∥−C, yielding a curvature ceiling2√(g∥−C)=2Y/ω under the chosen scalar-wave correspondence. This is an exact local shared factor, not a universal law equating Berry curvature and gravitational impedance."
- l.81: "The BH-card record 426 is now complete. It is labeled v8.4 and repeats the then-current 400-sample positive-gravity-stiffness claim; the later BH10 rhombus counterexample already read supersedes that universal impression. Its membrane match is restricted to local surface impedance, its pure Hawking-pair CHSH result imports the pair model, and its ISCO effective inverse-cube index belongs to the epicyclic ratio. Its static-base doubling is explicitly structural, not a causal identification."
- l.89: "The 2×2 trace-form wall unifies critical damping, the spinning key, ISCO, and recurrence companions only after declaring the actual generator and trace removal."
- l.95 (B207): "for isotropic Schwarzschild ψ=1+a/ρ and λ=(1−a/ρ)/(1+a/ρ), the Bunting–Masood-ul-Alam factors satisfy (1+λ)ψ/2=1 and (1−λ)ψ/2=a/ρ… The source grades this H and explicitly says no Penrose inequality follows and no geometries are identified."
- l.119: "Their local "clock exponent" n/2 is the exponent of the local line element or speed sqrt(g_soft)… It cannot identify an open or closed physical system or import a horizon lapse merely from an exponent."
- l.127: "The author's broader evolution is not erased: earlier rigidity-wall/horizon language and positive-stiffness extrapolation coexist with later finite-distance, kinetic-self-adjointness, rhombus-counterexample, selected-frame and explicit-no-Penrose corrections."

**research_record_reading_6.md — read l.9–12, 45–60, 141–148, 206–209.**
- l.53 ("**Black-hole witness record445.**"): "An apparently nonnormal five-dimensional shape block becomes metric-normal after Cholesky whitening; its compression defect PD²P−A² is positive semidefinite and rank one in the illustrated model. At w3=σ², the signed-height lift has a regular symmetric block, a linear signed gap, and an identity collision at σ=0. This differs from calling the singular Gram chart a physical exceptional point. Complex continuation produces Gram-chart sign −1 and signed-cover sign +1; a separate real two-parameter loop around the joint cone gives −1. These are different paths/connections and do not prove a universal Berry interpretation. Curvature limits11 and4 are explicitly imported high-precision run results, not recomputed by this script."
- l.55: "Kerr's Ψ2-only Q has eigenvalues (λ,λ,−2λ) and is diagonalizable: repeated Petrov roots do not make Kerr a Jordan block."
- l.57: "Schwarzschild ISCO radial linearization changes at r=6 in M=1 units, with half V″=(r−6)/(r³(r−3)), on r>3. A lapse coordinate has a square-root fold with κ²NhNN→1/4, matching the local form of a Bures boundary coefficient; that shared fold is explicitly insufficient to identify physical mechanisms."
- l.59: "sampled Newtonian attraction gives positive stiffness while like-charge repulsion gives negative stiffness; the square example yields slope 2√2−1 and frequency √[2(2√2−1)]. The fold alone cannot choose stability… two-sector retention model… b→0 and t→∞ do not commute. This remains a finite Markov model, not an event horizon theorem."
- l.143–147 (square-root ladder, record 490): "The coplanar Gram block has an unphysical w3<0 complex side; on real signed heightσ, w3=σ², both signs remain real, and the regular lifted wall is a linear diabolical cone."; "||P||√|p−p*|→||N||/[2√|d′(p*)|]"; "The shell calibration composes two folds: E−E_ISCO∝(r−6)² and radial rate∝√|r−6| give a quarter-power in energy, with fourfold analytic monodromy."
- l.208: "two merging black-hole ringdown tones whose separate descriptions diverge while the pair remains regular; a Gram determinant/admittance/total-reflection connection… Formal verification of the graph identity does not automatically verify every cosmological, optical or wave application".

### B7.9 review/corpus_applications_reading.md (54,808 B, 395 lines) — PARTIAL: read l.22, 62–110, 285–296.
- l.22: "The full historical black-hole chat queue remains partially unread, exactly as recorded in `review/archive_reading.md`; completing these sources does not change that boundary." (first-pass status; see Part D)
- l.62–104 concern *What Russell Saw v1* (Schwarzschild `u''+u=M/L²+3Mu²`, `p_eff=2+6GM/(c²r)`; "The Schwarzschild comparison is local, not a global identification… The paper's own Appendix A.4 explicitly admits circular timelike orbits for r>3M, unstable on 3M<r<6M. Those exact circles already contradict the prose "every orbit spirals inside 6M"… Schwarzschild's 6M is also not a universal Kerr ISCO radius."). Target: What Russell Saw v1 — the same `p_eff = 2+6M/r` relation appears in the BH paper's ISCO-cube check (`bh_isco_cube_17` C1); this package paragraph is about the Russell paper.
- l.108: Russell Appendix D names `check_horizon_v1.py` (Russell paper's script, not a BH-paper check).
- l.287–294: Atlas layer/bridge table (B14 "horizon census interpretation" etc.).

### B7.10 review/corpus_boundary_music_reading.md (34,823 B, 232 lines) — PARTIAL: read l.190–212 ("Boundary comparison companion" of the Compound Eye release).
- "The report distinguishes solar optical depth, a Schwarzschild null horizon and a rank-two Gram wall. It derives a finite geometric crossing path `X(q)=diag(sqrt(a)sqrt(1−q²), sqrt(1−a)sqrt(1−q²), q)`. For the declared quotient metric, `ds²=dq²/(1−q²)` and distance to q=0 along this path is arcsin|q0|, finite… G(q)=G(−q) loses orientation, while detX changes sign."
- "The shape block obeys `gA=Aᵀg` in the regular interior. Its simple spectral projector has induced g-norm1 even while coordinate Euclidean norms diverge… Fixed-energy oscillator stiffening shrinks displacement, **not velocity amplitude**."
- "`L_b=[[-1,0],[0.3,−b]]`, outside readout `(1,0)`. Every b and hidden initial state give the same entire outside x1(t) and exterior resolvent."
- "The Schwarzschild demonstration continues a specified classical model in a regular chart; it does not receive an interior signal or identify a real black-hole interior."

### B7.11 review/corpus_geometry_reading.md (35,053 B, 282 lines) — PARTIAL: read l.140–160, 248–254 (June four-body draft vs August Square Case table). Other hits (l.47, 58, 182, 220, 238, 264) are "rigidity"/"horizontal" in three-body/obstruction contexts and were not read beyond the grep line.
- Table "June draft premise | August Square Case replacement": "W derived from XXᵀ treated as a rotation-reduced invariant | G=XᵀX is invariant; XXᵀ is equivariant"; "Six binary collision "hypersurfaces" | Binary collisions have codimension3 in the5D shape body"; "One zero Gram eigenvalue called collinear | Rank2 is coplanar; rank1 is collinear"; "Trace-removal coefficient1 in TH+HT−tr(TH)W | Coefficient2 preserves trace-zero tangents"; "Generic complex interior transport spectrum | Positive commuting family has real, symmetrizable interior spectrum". The June draft "proposes binary-wall refraction, semisimplicity on a "collinear horizon," defectiveness at deeper collision strata". Targets: 4-body paper (June 23) and Square Case (parents of the BH paper's shape geometry).

### B7.12 Other hit files, hit lines only
- review/root_connection_notes.txt (22,934 B, 94 lines) — read l.1–12 and l.55–94 (≈ half; l.13–54 not read here, but the same text was read in the HTML overview, B8). BH statements: l.63 "Later black-hole work replaces the earlier rank-two infinite-wall interpretation with a regular signed lift and finite distance."; l.78 "The supplied black-hole history is now fully covered at the extracted source-text level… all 204 queued chunks, 3,954,816 characters"; "The exact BH edition10.1 cited by the neutrino paper has not been located (edition10 is recovered)."
- review/nonnormality_reading.md (24,904 B) — read l.104–124. l.120 Bunting–Masood-ul-Alam doubling on a Schwarzschild slice; l.122 "the four-body wall is self-adjoint in its Bures metric in the regular interior; its apparent Euclidean eigenvector blow-up is chart/metric dependent. The square-root lift can remain regular at the wall, with finite Bures distance arcsin(x0). This does not make it a spacetime exceptional point."; l.118 "has **not independently read or verified that external262-page source**". Rest not read.
- review/dirac_reading.md (42,591 B) — read l.341–375, 428–434, 470–495. l.359 "A positive response metric is not a Lorentzian spacetime metric. A Schwarzschild-inspired horizon can coexist with positive projector geometry and an open spectral gap. For ds²=−N(x)²dt²+dx², curvature is −2N''/N… No-hair, soft hair, dynamical horizons, and bulk/boundary memory remain bounded analogies until an actual gravitational model and its causal structure are derived."; l.373 "a horizon is not a response-metric wall"; l.493 "The two archived executable witnesses discussed in `review/archive_reading.md` have also now replayed successfully using `review/bh_agent/deps`". Rest not read.
- review/votkp_reading.md — read l.60–67: "This paper's Penrose comparison remains structural. It does not derive spacetime energy conditions or rigidity from IQGT, or identify its projector metric with a spatial metric." Rest not read.
- review/neutrino_verification.md — read l.103–109: "the apparent-horizon mass ratio near 1.19… not derived by the projector/memory framework here." (PBH, not BH paper). Rest not read.
- review/corpus_transport_reading.md — read l.71: "Real gas, solids, stars and black holes are not proven to be classified by these three numbers; the text assigns this reading [H]." Rest not read.
- review/research_record_completion.md — hit lines 7, 9 only ("Assignment 2 includes an explicitly attributed ten-chunk continuation by the black-hole reader…").
- review/light_reading.md, iqgt_reading.md, upg_reading.md, corpus_discrete_reading.md, colour_reading.md, offset_reading.md — hits are false positives for this purpose ("d**isco**very", "rigidity" as transport rigidity R_η, `rigidity_checks.py` of the IQGT bundle); a second grep for `black.?hole|horizon|kerr|schwarzschild|qnm|photon ring|hairdresser` finds nothing in light/iqgt/colour/offset and one line in upg_reading.md (l.56: the "seam is a discount" interpretation "cannot be moved without change to arbitrary dissipative or gravitational operators"). Not read otherwise.
- review/build_learning_record.mjs (21,963 B) — hit lines only: source-table row "Beyond the Event Horizon … 'v8.4 and v10','Scientific content and all 49 current Python sources read; 28 distinct scientific scripts rerun. Exact cited edition10.1 unresolved.'"; card "History left by elimination: The black-hole and memory work retain both a response kernel and the hidden initial preparation." Rest not read.
- review/build_reading_packet.py, review/extract_archive.py — hit lines only (folder name `bh_agent`; path of `BLACK_HOLE_OLD_CHATS_AND_MATH_20261014(1).html`). Not read otherwise.
- review/mccormick_upstream/README.md and CITATION.cff — same bytes/sizes as the P1 copies read in A4 (PBH).

## B8. deliverables/Neutrino_Research_Reading_Record_20261030.html (1,454,985 B)  [UNTRUSTED SOURCE - needs re-test]

Method: tags stripped with a one-off Python text extraction into a scratch file outside the package (8,435 text lines, 1,148,634 characters). Title "Neutrino Starting Point — Research Reading Record"; H1 "Learning the work from the neutrino paper outward"; "Jeromie Beasley · 30–31 October 2026 · Working research record".

Structure: an overview (five sections: "The question that carries through the work", "What the neutrino evidence currently supports", "The two concrete continuations in Steve's direction", "What was actually read", "Integrated understanding and proposed continuation") followed by "Complete reader notes" = 34 collapsible sections that embed the review notes: When the Neutrinos Leave; IQGT; VOTKP; **Black-hole work: v8.4 through v10**; Dirac Time; UPG; Non-normality; Light; Colour; Offset Speed Limit; **Historical black-hole archive: coverage and continuation**; Source discovery; Preserved 13 October index; two-book verification; Discrete mathematics; **Gravity, field theory, solar interfaces and early black holes**; Shape geometry; Atlas/Russell/screening/fractures; Transport; Boundary offset/Weight Between/music; Complete historical source reading parts 1–6; Historical reading completion; Research Review and Record parts 1–6; final coverage and synthesis.

What was read:
- Overview (text lines 1–176): read in full. BH statements: header "A connected reading of the operator, memory, light, colour and black-hole work"; status box "**All 28 indexed paper families have a complete scientific-text reading at the recorded versions.** The complete queued historical source text has now been read, with 204 chunk identities checked."; source-table row "Beyond the Event Horizon | v8.4 and v10 | Scientific content and all 49 current Python sources read; 28 distinct scientific scripts rerun. Exact cited edition10.1 unresolved."; row "Historical black-hole archive | 14 October collection | The complete queued historical source text has now been read, with 204 chunk identities checked…"; integrated notes identical in wording to `root_connection_notes.txt` (incl. "Later black-hole work replaces the earlier rank-two infinite-wall interpretation with a regular signed lift and finite distance."; "The exact BH edition10.1 cited by the neutrino paper has not been located (edition10 is recovered)."). No claim about the black-hole paper appears in the overview that is not also in the review notes recorded above.
- Embedded "Black-hole work: v8.4 through v10" (text lines 870–1215): compared word-by-word (alphanumeric tokens) with `review/black_hole_reading.md`: 3,822 vs 3,809 tokens, the only differences being the 13 list numerals "1"…"13" of the corrections list (rendered as an HTML ordered list). It is the same text as B2; not re-recorded.
- The other black-hole-bearing embedded sections were token-compared with their `.md` sources: archive_reading.md, corpus_gravity_reading.md, corpus_geometry_reading.md, corpus_applications_reading.md, corpus_transport_reading.md, corpus_boundary_music_reading.md, corpus_discovery.md, current_papers_index, two_book_flow_check.md, archive_full_reading_4/5, archive_completion.md, research_record_reading_1–6, research_record_completion.md, dirac_reading.md, nonnormality_reading.md — each matches its source with similarity ≥ 0.98 (differences = the inserted section title and math-rendering token joins such as "against2", "curvaturegap"). "Complete historical source reading — part 6" matches archive_full_reading_6.md (the addendum_6 text is not part of that slot). So every black-hole section of the HTML is a copy of a review note already recorded in B2/B6/B7; the black-hole passages were read in those notes.
- NOT separately read in the HTML: embedded sections with no black-hole content beyond what B7 lists (neutrino, IQGT, VOTKP, UPG, Light, Colour, Offset, discrete, historical parts 1–3) and base64 images/figures.

## B9. JSON manifests and inventories with black-hole hits — inventory only, NOT read in full

- SHA256_MANIFEST.json (32,494 B): dict of 209 entries (every packaged file except itself); its `bh_agent` entries are exactly the 29 files recorded in B3. Hashes not recomputed.
- review/indexed_family_coverage.json (15,061 B): one black-hole entry — `"title": "Beyond the Event Horizon: An Operator-First Theory of Persistent Geometry and Black Hole Dynamics", "zenodo_record": "21860392", "indexed_main_file": "blkhole_v2_final.pdf", "reading_note": "corpus_gravity_reading.md", "coverage": "Complete scientific-text reading of this family; exact read versions, scope, and reproduction limits are specified in the note."`
- review/inventory.json (216,267 B): file inventory of the AI's uploads; the black-hole hits are path names under `bh_v8_4_code_and_sources/` (paper/bh_paper_v8_4.tex, checks/*.py/*.out, paper/fig/f1…f18 PNGs, tools/static_math.js, mixer files). It lists a v8.4 archive (NOT present in /home/claude/bh_recovery/extracted, where v8.5 and v10 archives are).
- review/corpus_version_inventory.json (176,483 B), review/archive_parts/{manifest,reading_queue,assignment_4,assignment_5,dedup_stats,exact_dedup_stats}.json, review/archive_full_coverage_{4,5}.json, review/research_record_coverage_{2,2b}.json, review/research_record_parts/manifest.json: chunk/assignment/coverage bookkeeping whose black-hole hits are source titles (e.g. "Blackholes_and_Suns(6)", "blkhole_v2_final", "BLKHOLE_1_/2_/3_", "blackhole_independent_checks.py"). Header/inventory only.
- review/bh_agent logs with hits (bh_isco_10, bh_isco_cube_17, bh_petrov_06, bh_matched_12, v10_push_others): read in full in B3.


## B10. Corrections to this ledger's own earlier wording (found on re-check with grep/cmp)

- A6: `diff -rq`/`cmp` now confirm that ALL of P1's `review/` files (mccormick_upstream/*, neutrino_agent/rerun/*, nonnormality_checks/*, nonnormality_independent_checks.py, transport_agent/price_kernel_algebra_check.json, two_book_flow_check.*, shear_stationarity_check.json) are byte-identical to the same paths in P2. P1 adds only `START_HERE.txt`, `RECOVERY_SHA256.json` and `original_neutrino_code/`.
- B7.6: in archive_full_reading_2.md the l.15 hit is "not a cosmological sound horizon" and the l.19 hit is "assigns CN labels to particles/black holes without deriving masses" (old SUKS-2 chat material); l.184 is a false positive ("m**isco**nstrues"). In archive_full_reading_1.md l.3 and l.83 are false positives ("discovery"); l.135 is "mismatched time horizons".
- B7.12: a grep without the bare letters "isco" finds ZERO black-hole/horizon/Kerr/Schwarzschild/QNM/photon-ring/hairdresser lines in light_reading.md, iqgt_reading.md, upg_reading.md, colour_reading.md, offset_reading.md and corpus_discrete_reading.md. The upg_reading.md l.56 line quoted earlier matched only through "d**isco**unt"; it is not a black-hole statement. All hits in those six files are "discovery/discount" or "rigidity" in a non-black-hole sense.
- B7.11: corpus_geometry_reading.md l.220 hit is "a universal1THz horizon is a further physical proposal" (obstruction-lattice draft), not black-hole-paper content.

---

# PART C — Register of every claim, criticism, "counterexample", correction and recommendation the packages make about the black-hole work

**Every row is [UNTRUSTED SOURCE - needs re-test].** "Target" names the paper result / check script the item is aimed at. Section numbers of the paper are given only where the package itself gives them; otherwise the target is named by topic and check script (the paper's own section/theorem numbers must be taken from the paper ledgers, not from here). Source grade = the package's own word for its statement.

## C1. Aimed at research edition 10 (current paper) — direct criticisms

| # | Item (verbatim core) | Where | Target in the paper | Package's grade |
|---|---|---|---|---|
| C1.1 | "Section 4.1 (TeX line 287) says Davis–Kahan bounds the cluster angle by sinθ≤‖E‖/δ, with δ "the gap to the rest." V10-PUSH P5 implements δ=w_0[3]−w_0[2], the **unperturbed** gap. Its 4,000 random symmetric examples pass, but the general claim with that denominator is false even for symmetric 2×2 matrices." Counterexample A=diag(0,1), E=[[0.08,0.1833030277982336],[0.1833030277982336,−0.08]]; "‖E‖₂=0.2, the old gap is one, and the sine of the lower-eigenline angle is **0.2043096436892**, exceeding 0.2. A suitable cross-spectrum separation is 0.9582575694956 and yields bound 0.2087121525221, which holds." | black_hole_reading.md l.203–214; bh_agent/davis_kahan_counterexample.json ("verdict": "original-gap bound is exceeded"); repeated in research_record_reading_4.md l.72 and research_record_reading_5.md l.35 | v10 §4.1 Davis–Kahan sentence (paper grade for its numerical sentence: "measured, V10-PUSH"); `checks/v10_push_others.py` P5 (`delta = w0[3] - w0[2]`; output "max DK ratio 0.904 (must be <= 1)") | "false" (package's word); "still needs tightening" |
| C1.2 | Recommendation attached to C1.1: "The revised statement should specify the correct separation and self-adjoint hypotheses (or use a justified perturbation-adjusted denominator). The general non-normal Riesz-resolvent bound proved in the appendix is a different statement and is unaffected." | black_hole_reading.md l.214 | same; and Appendix proofs (Lemma "neumann", Theorem "kato" are the labels the paper cites at that place) | recommendation |
| C1.3 | "the older proof log and mixer retain language repaired in the paper" / "`BH_PROOF_LOG_v7.md` says it covers **v8.5**, despite being bundled with v10. Its Lean sections are plans, not compiled Lean files. The mixer still identifies itself as research edition 8." | black_hole_reading.md l.13, l.216 | BH_PROOF_LOG_v7.md; checks/mixer_src.html | "minor archive drift" |
| C1.4 | ""every number checked" should not be read as independent confirmation of every cited external result." | black_hole_reading.md l.216 | the paper's "every number checked" wording | criticism of wording |
| C1.5 | "The abstract/cover's photon "brightness" wording should retain the near-critical asymptotic/source-model scope of the actual ray calculation." Also: "The code calls the exponential a brightness ratio; what it directly derives is the local orbit-instability/demagnification factor. An observational brightness prediction additionally needs the image/emission setting." | black_hole_reading.md l.216; research_record_reading_4.md l.70 | abstract/cover; photon-ring section; `checks/photon_ring_wall.py`, `v10_push_others.py` P1 | criticism of wording |
| C1.6 | (reported from a "Fable v10 referee report", second-hand) "pre-registered RS03 W2 Richardson kill7.4e−4 remained after layer resolution; replacement first-order test was written afterward. It supports first-order convergence, not original gate survival. v10 still needed local prose corrections and Q=.9 RN nonlinear number's correct script provenance." and "still requests disclosure that RS03's Richardson gate failed before a post-hoc ratio test, source correction for the charged photon-ring number, and removal of leftover horizon/rank/diabolic wording." | research_record_reading_3.md l.75; research_record_reading_1.md l.61 | rs/PREREGISTRATION_RS03.md, rs03_push / rs03b / rs03c; charged photon-ring number; residual wording in v10 | historical report, "none rerun here" |
| C1.7 | "These are internally recorded test plans, not externally registered confirmatory experiments." "The ledger itself says file timestamps do not establish external preregistration." | black_hole_reading.md l.163 | rs/PREREGISTRATION*.md, IDEAS_LEDGER | scope statement |
| C1.8 | "Retaining the obsolete script inside BH10 is provenance, not evidence that BH10 still endorses its caption." (old "gravity always stiffens" histogram vs rhombus) | research_record_reading_5.md l.51 | `bh_qutrit_18.py` P2 / fig f18 versus `bh_stiff_19.py` / fig f18b | remark |
| C1.9 | "The sine-guard diagnostic gave a 3.1×10⁻¹⁵ roundoff excess over an exact inequality; this is not substantive violation." | black_hole_reading.md l.222 | `rs/sine_guard_check.py`; `v10_push_others.py` P2 | remark |
| C1.10 | "The neutrino paper's reference to 10.1 therefore remains a version question." / "The exact BH edition10.1 cited by the neutrino paper has not been located" | black_hole_reading.md l.7; root_connection_notes.txt; corpus_discovery.md l.13 | version identity (edition 10 vs 10.1) | open, per package |

## C2. Corrections the package says v10 itself already made to v8.4 / v8.5.1 (package: "do not report repaired v8.4 issues as current failures")

Source: black_hole_reading.md l.185–201 (13 items, verbatim in B2.1), corpus_discovery.md l.20, research_record_reading_3.md l.33 and l.75, research_record_reading_4.md l.65–72. Target of each = the earlier (v8.4/8.5.1) statement; the confirming v10 script named by the package is `checks/v10_corrections_check.py` (C1…C9) and `checks/bh_stiff_19.py`, `checks/bh_noncommute_check.py`.

| # | Correction as the package states it | v10 check it maps to |
|---|---|---|
| C2.1 | eigenvalue metric "has curvature one, not zero"; real-qubit geometry "a hemisphere with pure-state boundary circle" ("radius 1/2 and curvature 4" in RRR4 l.66) | v10_corrections_check C2, C3 |
| C2.2 | kinetic self-adjointness "requires the common T,W frame. A noncommuting example has asymmetry 2/15. The normalized-flow Jacobian differs from A by a scalar shift" ("−2Tr(TG)H") | C1, C1b; bh_noncommute_check |
| C2.3 | hidden transport defect "has rank at most one and is zero in an isotropic control" | C4; bh_spine_09 S3 |
| C2.4 | "The Gram-to-cover map is singular at the wall, so the two limiting operators are not related by an invertible change of basis there." | lift statement; bh_lift_05 |
| C2.5 | "Regular parameter-dependent similarities do not generally preserve the naive connection integral. A rotation gives a nonzero integral even though the frame is periodic." | C5, C5b |
| C2.6 | "The exact real-projector norm formula includes A12−A21." | C6 |
| C2.7 | Fisher/kinetic equality "needs rank control… nearby QFI tends to four but the support-based SLD value at s=0 is zero"; "F_Q=4g=8K, not 4K" | C7; bh_qutrit_18 Q1 |
| C2.8 | "Square gravity has a negative quartic correction; the harmonic estimate is not a finite-amplitude upper bound. Gravity stiffness changes sign for rhombi at k*=0.144556694814" | C8; bh_stiff_19 S3–S5 |
| C2.9 | "The horizon resistance match is local; exterior scattering remains. The ideal Hawking-state assumption is explicit." | bh_matched_12; bh_bell_11 |
| C2.10 | principal MOTS eigenvalue statement "no longer purports to exclude every Jordan block" | MOTS section; bh_drift_symmetrize_02 |
| C2.11 | projector of the local symbol at zero lapse "is a limit from outside" | C9; bh_wall_03 C11 |
| C2.12 | "Threefold symmetry alone does not force quadratic splitting… Jahn–Teller counterexample" | Petrov/star splitting; bh_petrov_06 P4 |
| C2.13 | "X↦PXP is idempotent for every idempotent P, but orthogonal on matrix space only for Hermitian P; it is not automatically a trace-preserving quantum channel." | v10_push_others P4 (Hairdresser compression) |
| C2.14 | further items listed from the "v10 completeness report": "rank strata rather than collisions… holomorphic logarithm… compression versus separate data disposal… distinct anomalies; static-base fold versus null horizon… no automatic Wong dynamics; non-Hermitian K(t)"; "sixth solar EP drifts beyond α₀13 under grid refinement, preserving five continuum crossings"; "'Kerr is the endpoint' was removed for lack of source" | various; bh_sunladder_16/16b; IDEAS_LEDGER |

## C3. Scope limits ("interpretation limits") the package attaches to v10 threads

Source: black_hole_reading.md l.39, l.82, l.103–109, l.127–133, table l.165–184 (all 15 rows verbatim in B2.1). Summary of targets: qutrit mechanics (bh_qutrit_18); stiffening (bh_stiff_19); Petrov/spinor (bh_petrov_06, bh_ep_spinor_04); ISCO (bh_isco_10); effective exponent (bh_isco_cube_17); photon ring (photon_ring_wall, v10_push_others P1); ringdown (bh_qnm_13: "No Teukolsky computation or detector data"); solar ladder (bh_sunladder_16/16b: "not a calculation of Kerr"); Hawking/Bell (bh_bell_11: "Assumed state and temperature, no derivation of Hawking temperature"); fermion Smith coordinate (bh_offset_15, P3); Ramanujan (bh_shadow_07); knots (bh_knot_08, bh_knot_14: "No demonstrated black-hole microstate model"); MOTS (bh_drift_symmetrize_02); horizon fold (bh_fold_parallel_01: "Second sheet is another exterior, not the black-hole interior"); gauge charge (Wong: "conditional non-normality inequality still requires its unverified hypothesis"). Plus: "This is **shape geometry**, not a spacetime metric, causal structure or physical event horizon"; the cited Penrose manuscript is "an AI-generated OpenAI manuscript dated 5 October 2026, unrefereed and not publicly available… must not be silently treated as an established theorem"; "Projector data are invariant under positive scalar rescaling, so they cannot set an absolute mass or temperature scale by themselves."

## C4. Aimed at the August v2 paper (blkhole_v2_final.pdf)

| # | Item (verbatim core) | Where | Target |
|---|---|---|---|
| C4.1 | "This v2 then overinterprets Gram-coordinate blow-ups at w3=0. It calls `g22∼1/(6w3)` infinitely costly, treats coordinate Jacobi-form entries∼1/w3 as divergent tidal curvature, and stages a horizon there." / "it still mistakes the rank-two Gram fold for infinite distance/tidal divergence" | corpus_gravity_reading.md l.292; archive_full_reading_5.md l.9 | v2 horizon at w3=0, tidal-curvature claim |
| C4.2 | "It also asserts transverse velocity suppression1/sqrt(2λ) from an oscillator without consistently fixing energy/amplitude." / "Stiffness suppresses displacement at fixed energy, not velocity." / "y''+2λy=0 does not fix a λ^(-1/2) velocity amplitude without normalization/initial-data constraints." | corpus_gravity l.292; archive_reading.md l.142; research_record_addendum_2.md l.73; archive_replay/blackhole_independent_checks.py | v2 transverse suppression (Hairdresser "fingers") |
| C4.3 | "Its AppendixB computes with fixed Gram-coordinate directions; those are not bounded unit physical tangents near the folded coordinate wall." | corpus_gravity l.292 | v2 Appendix B scripts |
| C4.4 | "v2's "pure-state boundary is the sphere" conflates these spaces." | corpus_gravity l.294 | v2 real-qubit control |
| C4.5 | "The v2 leap from transport non-normality to the Jacobi stability tensor and QNM-like global eigenfunctions is not a derived equivalence." "Frobenius non-normality of a coordinate matrix alone cannot establish physical transient growth in the kinetic norm." | corpus_gravity l.296 | v2 non-normality → QNM dictionary |
| C4.6 | "The gauge proposition's title says persistence of "defectiveness," but its algebra proves non-normality under a strict mixed-term dominance assumption; non-normality does not imply a Jordan block." | corpus_gravity l.300 | v2 gauge proposition |
| C4.7 | SURVIVING per package: "The triangular shape block and joint Jordan condition are real algebraic findings"; "The result that survives most directly is the cluster ledger… `||P1||·gap→|A12|`… `Tr log A→2logλ*`"; "Its resolvent bound and cluster ledger are the enduring finite results"; self-adjointness of the shape block in the Bures metric (`GA−AᵀG=0`), finite wall distance arcsin√q0, Jordan example `[[13/5,7√3/25],[0,13/5]]` | corpus_gravity l.296–298; archive_full_reading_5.md l.9, l.49; archive_replay JSON | v2 cluster ledger, Appendix A resolvent bound |
| C4.8 | Two statements about v2's printed resolvent relation: "A printed resolvent-identity sign has no effect on its norm bound." and "The printed resolvent inequality has the correct lower-bound direction and should not be criticized as reversed." | corpus_gravity l.298; research_record_addendum_2.md l.73 | v2 Appendix A |
| C4.9 | Appendix C "Black Hole Hairdresser" image "faithfully illustrates the paper's own v2 claims, including the transverse suppression later needing correction. It is explanatory imagery, not an additional computation" | corpus_gravity l.302 | v2 Appendix C graphic |
| C4.10 | "The source census itself contains older language that the transport is "non-normal when both T and W are anisotropic." In the norm-independent sense that is overridden by the more precise physical-metric correction" | archive_reading.md l.151; archive_full_reading_5.md (160) | non-normality statement (bh_nonnormal_04 output) |

## C5. Aimed at the July 2026 drafts (BLKHOLE, BLKHOLE_1_/2_/3_, "Blackholes_and_Suns(6)", Kerr notes)

All verbatim in B7.3–B7.4. List of targets and the package's wording: stiffness formulas with (wi−wj)⁻¹, (wi−wj)⁻² ("presented as exact but the displayed derivation does not establish them"); Theorem 1 EP⇔Ricci blow-up ("expressly retired in the later addendum"); Theorem 2 shape-wall/Kerr "category-theoretic isomorphism… without constructing the map, and incorrectly identifies generic Kerr surface gravity as diverging at the horizon"; Theorem 3; eq. 41 oscillator propagator ("does not establish the draft's universal normal-velocity collapse or clock freezing"); Kreiss bound "lacks the supremum over time"; `Tr(Pi(t)Pi(t+Delta))` "tends at coincidence to projector rank, not necessarily 1"; transient-profile graphic "hand-written… no operator evolution generates it"; junction chapter `[Kab]=(Θ/δ)(hab+ξΔ uaub)` "postulates"; Wong derivation "incomplete"; "persistence of defectiveness" theorem ("non-normality is weaker than defectiveness"); Kerr proof note (ε∼κ^{-1/2}, three channels M,J,Q, Davis–Kahan "applied to unspecified non-normal projectors"); Kerr construction note (`JᵀP_H T J` "by analogy", ω²−mΩH vs ω−mΩH); Hairdresser `D_H(X)=Π_p XΠ_p` ("Dynamics selecting the projector and causal identification are open"); no-hair/ringdown/superradiance mappings ("remain proposed mappings"). SURVIVING per package: "AppendixA's resolvent Neumann estimate is sound under a fixed resolvent contour and sufficient norm bound"; "a separated cluster projector can remain meaningful when its individual eigenvectors are unstable".

## C6. Recommendations ("what to carry forward")

black_hole_reading.md l.129, l.228–232; corpus_gravity_reading.md §5; archive_reading.md l.173–177; research_record_addendum_2.md l.77–81 (all verbatim above): keep cluster not single eigenvectors; state the physical norm; distinguish coordinate wall from physical singularity; retain hidden resolvent/memory; for a McCormick direction pick "a genuine geometric boundary operator or capacity problem with scale and asymptotic normalization"; "The BH paper supplies useful operator bookkeeping and negative controls; it does not yet supply the gravitational constraints or the mass inequality."; continue with the neutrino model first.

## C7. Package's claims about its own verification of the paper

"Twenty distinct inherited scientific scripts completed fresh runs… All completed with their expected outputs"; "Eight additional current-version scripts completed… Their registered numerical gates passed where present"; "Twenty-eight script completions are not twenty-eight independently proved theorems"; "I did not rerun the long solar-ladder sweep, full RS-03 random/adiabatic campaign, all figure generators or the rendering/build pipeline"; "Only three hardcoded output paths in temporary runtime copies were adjusted". Evidence in package: the 28 logs (B3.2). Comparison with the paper's own outputs: B3.2 (verbatim diffs) and B3.3 (table).

---

# PART D — Disagreements (not resolved here)

## D1. Package fresh logs vs the paper's own saved outputs (full detail in B3.2/B3.3)
Nine logs differ from the paper's `.out`; no outcome word differs. Exact differences:
1. bh_ep_spinor_04 l.3–6: signs of zero / printing of `-1.0594j` vs `(-0-1.0594j)`, `(-1.0001+0j)` vs `(-1.0001-0j)`, `(1.0002-0j)` vs `(1.0002+0j)`, `(1+0j)`/`(1-0j)` swapped.
2. bh_isco_10: warning block at end (paper, path /home/claude/bh/levin/) vs at start (package, path /workspace/scratch/4ea79d7a2197/…); eigenvalues `0.01296+0.00000j, -0.01296+0.00000j` (paper) vs `0.01296, -0.01296` (package), likewise 0.06325, 0.17678.
3. bh_lift_05 l.9–10: `-1.00012+0.00000i` / `+1.00000-0.00000i` (paper) vs `-1.00012-0.00000i` / `+1.00000+0.00000i` (package); l.17–20 `±1.000000000+0.000000000j` (paper) vs `±1.000000000` (package).
4. bh_petrov_06 l.5: `np.complex128(-0j)` (paper) vs `np.complex128(0j)` (package).
5. bh_qutrit_18 l.3: F = 0.999999999999996 (paper) vs 0.999999999999994 (package).
6. bh_spine_09 l.1: max error 7.8e-16 (paper) vs 6.7e-16 (package).
7. bh_stiff_19 l.2: 1.828427124746189 (paper) vs 1.828427124746188 (package); l.4: −1.7763568394002505e-15 and 1.6425730021830471 (paper) vs −3.1086244689504383e-15 and 1.6425730021830462 (package).
8. v10_corrections_check l.8 (C6): max dev 4.3e-14 (paper) vs 3.6e-14 (package).
9. v10_push_others l.4 (P2): Gram identity max dev 7.1e-15 and two-level max 1.3e-14 (paper) vs 2.8e-14 and 4.7e-15 (package).
Three package logs have no paper output to compare: bh_noncommute_check, rs02c_realization, sine_guard_check.

## D2. Package claim vs paper claim
1. Davis–Kahan: paper v10 §4.1 "the bound was never exceeded [measured, V10-PUSH]" and both P5 outputs "max DK ratio 0.904 (must be <= 1)" vs package "the general claim with that denominator is false even for symmetric 2×2 matrices" (sin 0.2043096436892 > 0.2). The two are about different things per the package itself (random 6×6 sample vs a constructed 2×2); recorded, not resolved.
2. Count wording: paper text "2000 random symmetric 6×6 matrices"; script output "2000 trials each"; package "Its 4,000 random symmetric examples".
3. Sine guard: `sine_guard_check` log prints "(must be <= 0)" with value +3.1e-15; paper's own v10_push_others.out P2 prints two-level max +1.3e-14 with "PASS"; package calls it "roundoff excess… not substantive violation".
4. RS-03: paper's own `rs/rs03_push.out` l.6 and `rs/rs03b.out` l.4 both print "max |r0 - Gamma| = 7.4e-04  KILL"; `rs/rs03c.out` prints "RS03C: PASS (first-order convergence to Gamma)". Package (black_hole_reading l.163) says RS-03c "passed"; package's second-hand referee account says the replacement test "was written afterward" and "supports first-order convergence, not original gate survival". Both outcomes stand side by side in the paper's own files.
5. bh_qutrit_18 P2 (both paper output and package log): "fraction stiffening (>0) 1.000… equal-mass gravity stiffens toward coplanarity at every sampled planar configuration" vs bh_stiff_19 S3/S4 (both): "rhombus sign change k* = 0.144557… negative stiffness exists away from collisions" — the package flags the first as an obsolete script kept as provenance.
6. bh_nonnormal_04 output "both anisotropic ||[A,A^T]||_F = 0.231425" (Frobenius) vs package statements that the "non-normal when both T and W are anisotropic" language is "overridden by the more precise physical-metric correction".

## D3. Inside the packages
1. black_hole_reading.md l.9 says differences "are retained in `bh_agent/v10_all_changes.txt` and `v84_to_v10.diff`"; neither file is in the package. `review/bh_agent/deps` (dirac_reading l.493, archive_reading l.27) is also absent, as are the run copies of the scripts.
2. archive_reading.md l.27: the two archive_replay scripts "were freshly replayed successfully (exit 0)" vs archive_full_reading_5.md l.83 on the same retention JSON: "These are stored historical outputs from137, not a new check run" and l.105 "No new numerical runs" vs START_HERE (P1) "No scientific calculation was run for this recovery."
3. archive_replay/blackhole_independent_checks.py docstring "This is a new audit script" vs the package describing it as an archived historical script (detail 140) that was replayed.
4. Coverage status: corpus_applications_reading.md l.22 "The full historical black-hole chat queue remains partially unread" and archive_reading.md l.25 "Not yet close-read here" vs archive_completion.md "204 of 204 chunks"; corpus_discovery.md l.5 Research_Review_and_Record "remainder was NOT read" and final_coverage_check.txt "remains only excerpt-read" vs root_connection_notes "has now also been fully read: 205 chunks". final_coverage_check saw "complete=false and 113 completed chunks"; final_delivery_scope_check saw "complete=false,162/205chunks". The README says later supplements supersede earlier notes.
5. v2 resolvent relation: "A printed resolvent-identity sign has no effect on its norm bound" (corpus_gravity l.298) vs "has the correct lower-bound direction and should not be criticized as reversed" (addendum_2 l.73).
6. Rhombus threshold given in three forms: root of "(1+k²)(1+k)²=64k²" (black_hole_reading l.196, bh_stiff_19 S5), "quartic k⁴+2k³−62k²+2k+1" (research_record_reading_3 l.33), stiffness "½[4√2−√((1+k²)/2)(1+1/k)]" (research_record_reading_5 l.51); value 0.144556694814 / 0.144557 / ≈0.1446. Not tested for mutual consistency here.
7. Wall-distance path written three ways: "arcsin√ε" on w3=ε (black_hole_reading), "arcsin|q0|" on q with w3=q² (archive_reading l.139), "arcsin√q0" on weights (a(1−q),(1−a)(1−q),q) (archive_replay; archive_full_reading_5 l.49); and "dell²=(1/(16w1)+1/(16w2)+1/(4s))ds²" along w3=s (archive_full_reading_4, detail 121).
8. Version labels: package read "8.4 + every v10 delta"; inventory.json lists a `bh_v8_4_code_and_sources` archive; the recovery folder holds v8.5 and v10 archives plus `bh_v10_1_hexagon_source` and `bh_v10_2_hexagon_source` — the package says edition 10.1 "has NOT been resolved".
9. Zenodo index (13 Oct) lists the black-hole paper only as August v2 `blkhole_v2_final.pdf` (record 21860392); archive_full_reading_6 Recall 5 says "first public version21147367".
10. P1 START_HERE "210 entries… all209 payload hashes" — P2 on disk has 210 files and its manifest 209 entries (consistent); P1 itself has 81 files, manifest 80.

---

# PART E — Not read / partially read / problems

Read in full (P1): START_HERE.txt, RECOVERY_SHA256.json, and the 13 other grep-hit files listed in A4 (14 files incl. START_HERE; 15 with the manifest).
Header only (P1): the 66 other files listed in A5 (neutrino material, not black-hole).

Read in full (P2): README.txt; review/black_hole_reading.md; all 29 files under review/bh_agent/; the 4 files under review/archive_replay/; two_book_flow_check.md/.py/.json; shear_stationarity_check.json; current_papers_index_20261013_read.md; final_coverage_check.txt; final_delivery_scope_check.txt; final_synthesis_check.txt; archive_completion.md; corpus_discovery.md; archive_reading.md; archive_full_reading_5.md; research_record_addendum_2.md. (48 files.)

Partially read (P2) — only the black-hole sections stated in B7; THE REST OF EACH FILE WAS NOT READ:
- corpus_gravity_reading.md (not read: l.23–217, 241–269)
- archive_full_reading_4.md (not read: l.1–14, 16–88)
- archive_full_reading_6.md (read only l.71, 83–89, 130–136, 175–192, 202)
- archive_full_reading_1.md, _2.md, _3.md, archive_full_addendum_2.md, archive_full_addendum_6.md (hit paragraphs only)
- research_record_reading_1.md (l.59–66, 97–102, 127), _2.md (l.99–106, 128–216), _3.md (l.19–37, 73–77), _4.md (l.27–35, 53–74, 99–101, 144), _5.md (l.11–25, 33–35, 41–63, 79–96, 117–129), _6.md (l.9–12, 45–60, 141–148, 206–209)
- corpus_applications_reading.md (l.22, 62–110, 285–296), corpus_boundary_music_reading.md (l.190–212), corpus_geometry_reading.md (l.140–160, 248–254), corpus_transport_reading.md (l.71)
- root_connection_notes.txt (l.1–12, 55–94 in the file; full text seen once in the HTML overview)
- nonnormality_reading.md (l.104–124), dirac_reading.md (l.341–375, 428–434, 470–495), votkp_reading.md (l.60–67), neutrino_verification.md (l.103–109), research_record_completion.md (l.7, 9)
- build_learning_record.mjs, build_reading_packet.py, extract_archive.py (hit lines only)
- deliverables/Neutrino_Research_Reading_Record_20261030.html: overview read in full from the tag-stripped text; black-hole sections verified by token comparison to be copies of the review notes and read there; other embedded sections and all embedded images not read.

Not read at all (P2), no black-hole content found by grep beyond false positives or titles: light_reading.md, iqgt_reading.md, upg_reading.md, colour_reading.md, offset_reading.md, corpus_discrete_reading.md, synthesis_check.txt, research_record_synthesis_check_2.txt; all files under colour_checks/, iqgt_agent/, votkp_agent/, neutrino_agent/, nonnormality_checks/, mccormick_upstream/ (identical to P1 copies), transport_agent/, applications_agent/, discrete_sources/, geometry_agent/, gravity_agent/; all audit/extract/qa scripts; all JSON manifests, coverage, assignment, inventory and queue files (B9: titles/hits only); the three PNGs in research_record_parts/figures/ (binary: figure_00.png 116,458 B; figure_01.png 272,400 B; figure_02.png 144,945 B).

Problems / cautions:
- No script was run and no number was re-derived by me. Every "PASS", "counterexample", "false", "survives", "superseded" in Parts A–D is the package's or the paper-output's own word.
- The package's Davis–Kahan counterexample has stored numbers but no generating script.
- The package's notes on "Research_Review_and_Record.html", the "v10 completeness report" and the "Fable v10 referee report" are second-hand; those source documents are not in either package.
- Line numbers quoted for the big note files come from `sed -n`/`grep -n` on the files as extracted.
- The verbatim comparison of the 28 fresh-check logs with the paper's own outputs is in B3.2 (full diffs) and B3.3/D1 (every difference listed).

END OF LEDGER F
