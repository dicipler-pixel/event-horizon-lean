# Black-hole work recovery: manifest v1

Jeromie Beasley. Recovery run of 16 to 17 November 2026. Phase 1 only: files gathered, read and recorded. No test was run, no grade was changed, no file was overwritten.

## How to read this

- Every file below was copied into one folder (`drive/` for Drive files, the named repositories for GitHub files). Checksums are in `inventory_drive.json`.
- "Read by" says who read it and how much. "me" is the lead session; "agent" is a full-read agent working under `READING_RULES.md` (read every line, quote with location, run nothing, regrade nothing).
- What each file says, with quotes and locations, is in the ledgers A to G. The manifest is the index; the ledgers are the record.
- Anything not read in full is listed in section 5, not hidden.

## 1. Version line of the paper, earliest to latest

| Stage | Date | Title as printed | What changed |
|---|---|---|---|
| J00 to J06 "Blackholes_and_Suns" | 1 to 2 Jul 2026 | Principle of Structural Persistence (two versions untitled) | Seven saves in ten hours. Barber becomes Hairdresser at J05. Boundary result climbs from Dictionary (Theorem 2) to Isomorphism (Theorem 3, then Theorem 2). Core Operator Pipeline and C(Δ) in every one. |
| J07 to J11 "BLKHOLE" | 2 Jul 2026 (last two print July 3) | Beyond the Event Horizon | Boundary result becomes Proposition IX.1 (correspondence). Junction conditions, Wong derivation, persistence theorem, Appendix A added. Core Operator Pipeline, C(Δ), Kreiss and the Besson reference dropped from the body. |
| v2 | 8 Aug 2026 | Beyond the Event Horizon (Zenodo record 21860392) | Horizon staging moved from the binary collision w1→w2 to the coplanar wall w3=0. Bures/qutrit metric. Survival ledger. "No isomorphism is claimed." |
| v3 to v8.3 | Aug to Oct 2026 | not found as files | Known only through the proof log's change notes and figure scripts v6, v7, v8. |
| v8.4 | about 14 Oct 2026 | Beyond the Event Horizon: What Survives at a Rigidity Wall | No paper file found. Survives as bh_figs_v8_4.py/.out and proof-log Part 12 (qutrit dictionary, stiffening potential, cone slope). |
| v8.5 / v8.5.1 | 15 Oct 2026 | same | Proof-log Part 13 (rhombus threshold, two quadratic gap laws, match confined to the surface, Gram frame versus cover). 8.5.1 adds only the AI-assisted line. |
| Edition 10 (= files 10.1, 10.2) | 20 Oct 2026 | same (Zenodo record 23493466 per the site data) | Adds reflection and refraction on the pullback metric (Section 8.3), photon ring, fermion Smith coordinate, sine guard, Davis-Kahan; corrects ten statements of v8.5 (V10-CORRECTIONS). Source identical in v10, 10.1 and 10.2. |
| v11 | 26 Oct 2026 | Beyond the Event Horizon v11, 59 pp | NOT RECOVERED. Named in the 26 Oct record as bh_paper_v11.pdf and bh_v11_tex_and_check.zip "sent in chat", new Section 10 "Black holes as orientation records", check BH-ORIENT-20. Only the draft section survives (records zip). |

## 2. Drive files

| # | File (in drive/) | Version and date | Bytes | Read by | Ledger | What it holds that no other file holds | Drive id | sha256 (first 12) |
|---|---|---|---|---|---|---|---|---|
| 1 | older/2026-08-16 Suns paper v1.5 (tex).zip | Suns paper v1.5 source, 16 Aug 2026 | 19522 | agent, full | B | Companion paper; the dynamo exceptional point α0*=3.8717 and the shape wall | photosphere | horizon comparison that later editions cite. | 1ZKASR_ET3UgE9KltkavQ837djhYpkDmK | a9e9978cbeb3 |
| 2 | older/BLKHOLE (1).pdf | J08, 2 Jul 18:22 | 2280724 | agent, full | A | Persistence theorem (Theorem XII.1) wording with two hypotheses; abstract first announces the "Dunford trace-log contour calculus" and "four-tier Hairdresser pruning tensor". | 19IARwGJW_12kWJPC8aXFf8hXar25YasC | 2ff47ec69104 |
| 3 | older/BLKHOLE (2).pdf | J09, 2 Jul 18:32 | 2313776 | agent, full | A | See ledger A cross-version table. | 1Tau-zrpwHcVeHQZWpbk_mA8u_pDDpPPR | 41473a8fb61c |
| 4 | older/BLKHOLE (3).pdf | J10, 2 Jul 19:17; printed date July 3 | 2333595 | agent, full | A | See ledger A cross-version table. | 1xbP-eoYTPCCLKJftoYV2b0V2HRQZFDzG | 2aa251973bb5 |
| 5 | older/BLKHOLE (4).pdf | J11, 2 Jul 19:24; printed date July 3 (the "(4), 3 July" you named) | 2345450 | agent, full (twice) | A, B | The eleven annotated references; Appendix A Riesz/Kato persistence bounds; the "[? ]" citations; no Besson reference. | 1EsuRongq4_6oq0Vy8y7poIKjkYYqWtkA | 0f96ab5f2686 |
| 6 | older/BLKHOLE.pdf | J07, 2 Jul 15:34; title "Beyond the Event Horizon" | 2254274 | agent, full | A | First "Beyond the Event Horizon" title; correspondence downgraded to Proposition IX.1; "Horizon Compression Operator D_H"; junction conditions and Wong derivation enter. | 1hPhbk7TUxvKXY8vg8HI_plaruDX0QSsG | 5b87015a33b2 |
| 7 | older/Blackholes_and_Suns (1).pdf | J01, 1 Jul 22:19 | 281071 | agent, full | A | Nothing unique (J02 carries all of it). | 1TO3-cLzvjHEyoE6C36TzZOaE8hLQaQeq | 360d69688885 |
| 8 | older/Blackholes_and_Suns (2).pdf | J02, 1 Jul 23:24 | 309814 | agent, full | A | First VI.B Transient Plateaus on shape manifolds; first "Unified Boundary Correspondence" with Theorem 2 (Topological Boundary Dictionary). | 1lcZ3iC7PCcaF5Dfmpj1nJ6CL7NADDxKj | 772574019712 |
| 9 | older/Blackholes_and_Suns (3).pdf | J03, 1 Jul 23:47 | 506042 | agent, full | A | First four-tier lift FIG. 1 and Theorem 3 (Projector-Level Boundary Isomorphism). With J04, the only versions holding BOTH the Dictionary theorem and the Isomorphism theorem. | 1wJlW69Qcu3wLPp_kscNc5BHs9LP_VJKY | 54fb09abdbf1 |
| 10 | older/Blackholes_and_Suns (4).pdf | J04, 2 Jul 00:00 | 487416 | agent, full | A | Last version with the numbered A_boundary (40) and propagator limit (41); last version that says "Barber". | 1JYogHeRZ20eJ8aFRQG5yBCaZfZwBHInk | c18b0608f05b |
| 11 | older/Blackholes_and_Suns (5).pdf | J05, 2 Jul 07:13 | 463318 | agent, full | A | First polariton mass-coupling section (θ_lock); first use of "Hairdresser". | 1Vj2Hzv6iK4xMEtniSKUOdBPfNtJUGCCL | ecfefeb43e95 |
| 12 | older/Blackholes_and_Suns (6).pdf | J06, 2 Jul 08:07 (the "(6), 2 July" you named) | 2207979 | agent, full | A | Introduction with the honesty promise (established vs speculative); graphical abstract; "Horizon Hairdresser Operator D_H"; BH-side transients with Kreiss constant; Besson et al. as ref [1]; correspondence as "Theorem 2 (Isomorphism)" with a 5-step proof. Last version with the Core Operator Pipeline and C(Δ) in the body. | 1PlgqD8wenRamymPychqDi5gCSvu_kL_7 | a9fc4667df93 |
| 13 | older/Blackholes_and_Suns.pdf | J00, earliest; PDF made 1 Jul 2026 22:05; title "Principle of Structural Persistence"; byline "Jeromie N. Beasley" | 248040 | agent, full | A | Only version with Section 1 "Structural Matrix of the Compounded Field Theory" (table). First statement of the Core Operator Pipeline, C(Δ)=Tr Π(t)Π(t+Δ), the stability spine K, SU(3) extension, EP/Ricci theorem, the "Barber" mechanism. | 1vehVg6LOfB6d1B8ENmHh0IDomTGISYcf | 5e16db352cd0 |
| 14 | older/blkhole_v2_final.pdf | v2, 8 Aug 2026 (printed "August 2026"), 16 pp; Zenodo record 21860392 | 2203746 | agent, full, all 16 pages viewed | B | Theorem 1 (Bures/qutrit metric), Theorem 2 (three mechanisms at the coplanar wall), "A withdrawal" box, survival ledger table, snapped law, Theorem 3 + Conjecture 1 ("No isomorphism is claimed"), seven open problems, BH-CURV-01 and BH-LEDGER-01 listed inside the PDF (Appendix B). The 8 Aug scripts exist only as these in-PDF listings. | 1e3P7pMGRRY-bcRYEMv5sRbU_rzbecKe- | 41704441cd9c |
| 15 | older/infographic_hairdresser_corrected.png | corrected Hairdresser infographic, Aug 2026 | 1528665 | me and agent, viewed | B | The four tools (scissors, fingers, mirror, light) with the v2 numbers. | 11oTHdTv3au2F9Wp08UEe1k2oWFQgxjpl | 0d9b1ffc6597 |
| 16 | current-papers/CURRENT_PAPERS_20261011.md | index, 11 Oct 2026 | 9762 | agent, full | C | Lists only blkhole_v2_final (record 21860392) as the black-hole paper. | 1leQQoruNUloki1bJH00VZQXriSEbuIkK | aba76ba7aec7 |
| 17 | current-papers/CURRENT_PAPERS_20261013.md | index, 13 Oct 2026 | 10384 | agent, full | C | Same; v8.5 is in neither index. | 14HfLOZOokuYsOWKEpOgp4ybs_NnfJ7G- | 1c42775e6654 |
| 18 | current-papers/bh_mixer_v1.html | mixer v1 (edition 8, 10 eyes), 15 Oct 2026 | 482237 | agent, full except embedded data line | C | The interactive explorer for v8.x. | 1sR7OwK7emJLr8xSbPXIvFWR-JPKJTFYJ | 1dd9658f9224 |
| 19 | current-papers/bh_paper_v8_5_1.pdf | v8.5.1, 15 Oct 2026, 50 pp | 3422560 | agent, full (text) | C | Only difference from the v8.5 source: the "AI-assisted." paragraph above the abstract. | 10FbEn_jz4k_TiTP1UHFfRWKrs4O9t3M7 | 124bbb3fa2c5 |
| 20 | current-papers/bh_v8_5_code_and_sources.zip | v8.5 package, 15 Oct 2026 | 4749212 | agent, 69 files full | C | LaTeX source of v8.5; BH_PROOF_LOG_v7 (all Lean-plan entries L1.1 to L13.6); 32 check scripts and 26 outputs; the only surviving traces of v6, v7, v8 and v8.4 (figure scripts, bh_figs_v8_4.out, first-run Sun-ladder outputs). | 1QOv9LacpsT35lAQSyarfjY2ZAl3zCvGO | 67be4ba4ebf9 |
| 21 | oct26/Corpus_Review_and_Shell_Routes.html | 25 Oct 2026 | 321834 | agent, full (one embedded novel diff paged with long lines cut) | E | Charged-shell (EMD) routes and a corpus review; a counterexample that touches atlas card B199. | 19KgJnwmdosI1R_i5rdhK6Y7VQD89sg56 | 74fcfb1d06e2 |
| 22 | oct26/Light_BlackHole_TwoBooks_chat_transcript_2026-10-20.txt | chat transcript, 20 Oct 2026, 217 KB | 221917 | agent, full | E | Your own words for the ideas behind Edition 10 and the two-books thread; the v10 review and corrections; Hexagon plan. | 14k4nTyEAf5mQ3HiOcQ_3MxHaAcuOBroU | 607fc7e698ef |
| 23 | oct26/PENROSE_BEASLEY_COMPLETE_CONVERSATION_FINDINGS_20261011.md | findings, 11 Oct 2026 | 34683 | agent, full | E | What was taken from the Penrose-inequality manuscript and how it maps to the fold. | 1QKajs5HHUZQbO-2tv1yPSZaWPF5tAQv1 | cb5379ce7eed |
| 24 | oct26/bh_mixer_v10.html | mixer v10 (18 eyes) | 513527 | agent, full except embedded data line | D | The Edition 10 explorer. (The mixer source inside the v10 zip is still the 10-eye edition 8 one.) | 1-EYh06OJspd_Hah_SQEVdI8hKfNokmcT | 4277c07e8ba9 |
| 25 | oct26/bh_paper_v10.pdf | Edition 10, dated 20 Oct 2026, 56 pp | 3812597 | agent, full (text) | D | Delivered Edition 10 PDF. | 1ZUNd4YYIWO3fnAeODM7Ale3s9YdYQcYg | 1047d81faf75 |
| 26 | oct26/bh_v10_1_hexagon_source.zip | file 10.1 (Hexagon source) | 4670781 | agent; checksum compare | D | Paper source byte-identical to Edition 10. Layout for Hexagon (anc/, fig/). | 13n4P4vfAy__fc-yXtuyy1mBQcsGPLcEN | 2cbce8107b29 |
| 27 | oct26/bh_v10_2_hexagon_source.zip | file 10.2 (Hexagon source) | 4662355 | agent; merged logs read in full | D | Same source again; check outputs merged into two log files, identical line for line to the separate outputs. | 1289513FKETInjdDt4LJtqRXaJQP81RxR | 58d8bc90b023 |
| 28 | oct26/bh_v10_code_and_sources.zip | Edition 10 package, 19-21 Oct 2026 | 5276358 | me: paper source in full, proof log, ideas ledger, pre-registrations, README; agent: 37 files full | D | Edition 10 source (adds Section 8.3 reflection and refraction on the pullback metric, the photon ring, the fermion record as a Smith coordinate, the sine guard, Davis-Kahan, and the corrections to v8.5); IDEAS_LEDGER_v5 (your 33 ideas in your words with status); the RS-01/02/03 pre-registrations with their kills. | 1KQebgsJHOshrQFZVv5JKWAp8djALYXNy | 724139d4fad4 |
| 29 | nov26/Neutrino_Research_Reading_Notes_and_Checks_20261030.zip | off-rails AI package, 30 Oct 2026 | 2044536 | agent: 48 files full; about 25 large notes read in their black-hole sections only | F | UNTRUSTED. black_hole_reading.md; 28 re-run logs of the Edition 10 checks (16 byte-identical to yours, 9 differ only in last digits or zero signs, no PASS/KILL word differs); the claimed Davis-Kahan counterexample. | 1QXs60x_g9YNX94URjyN3rzDOhlJyndnU | 64f07e73f5b4 |
| 30 | nov26/Recovered_Useful_Work_20261031.zip | off-rails AI package, 31 Oct 2026 | 114045 | agent: 15 files full, 66 neutrino files header only | F | UNTRUSTED. No black-hole-paper content; its hits are primordial-black-hole neutrino code. | 1DocnL2m0xeUP-3ExAJjPCMA935hG6jeL | b25b09288d8c |
| 31 | records/2026-10-25 Bridge map - Spine and BH section vs Atlas v7 v1.md | 2026-10-25 | 4820 | agent, full | E | Session record; contents itemised in ledger E. | see ledger E | 879c17405f74 |
| 32 | records/2026-10-25 Review - Spine and BH Orientation Section v1.md | 2026-10-25 | 9070 | agent, full | E | Session record; contents itemised in ledger E. | see ledger E | 6a43d81c9305 |
| 33 | records/2026-10-26 Round 2 - BH v11, atlas-source, new cards, GitHub tidy (record).md | 2026-10-26 | 3342 | agent, full | E | Session record; contents itemised in ledger E. | see ledger E | 6df7817d473c |
| 34 | records/2026-10-28 Lean Pool proposals (coboundary-k3, event-horizon).html | 2026-10-28 | 6375 | agent, full | E | Session record; contents itemised in ledger E. | see ledger E | 8d3bae1967a8 |
| 35 | records/2026-10-28 Lean Pool review preview (coboundary-k3, event-horizon).html | 2026-10-28 | 3656 | agent, full | E | Session record; contents itemised in ledger E. | see ledger E | f0c1b7a4ac23 |
| 36 | records/2026-10-30 Steve PBH neutrinos vs Beyond the Event Horizon - comparison.html | 2026-10-30 | 6544 | agent, full | E | Session record; contents itemised in ledger E. | see ledger E | 578a4a3794ba |
| 37 | records/2026-10-31 BH Paper Fresh Re-test of Kept Results.html | 2026-10-31 | 7135 | agent, full | E | Session record; contents itemised in ledger E. | see ledger E | eab289ffbda7 |
| 38 | records/2026-11-02 Atlas v7 connections record - round 1 of 6.txt | 2026-11-02 | 3198 | agent, full | E | Session record; contents itemised in ledger E. | see ledger E | de991f8abc9e |
| 39 | records/2026-11-02 Atlas v7 crossings for the black-hole neutrino work (record).txt | 2026-11-02 | 4093 | agent, full | E | Session record; contents itemised in ledger E. | see ledger E | d46d47ed705b |
| 40 | records/2026-11-02 Black-hole neutrino crossings explored (E1-E5 results, record).txt | 2026-11-02 | 3583 | agent, full | E | Session record; contents itemised in ledger E. | see ledger E | 83f7885d897f |
| 41 | records/2026-11-02 Read of the Grok conversation (record).txt | 2026-11-02 | 2143 | agent, full | E | Session record; contents itemised in ledger E. | see ledger E | 5bc2f1bf35a6 |
| 42 | records/2026-11-02 Topology vs surfaceology re-read of the neutrino tests (record).txt | 2026-11-02 | 2750 | agent, full | E | Session record; contents itemised in ledger E. | see ledger E | 26d93e8b28f8 |
| 43 | records/2026-11-03 Atlas v7 connections record - FINAL round 6 synthesis.txt | 2026-11-03 | 5695 | agent, full | E | Session record; contents itemised in ledger E. | see ledger E | b9dce504d607 |
| 44 | records/2026-11-03 Atlas v7 connections record - round 2 of 6.txt | 2026-11-03 | 2017 | agent, full | E | Session record; contents itemised in ledger E. | see ledger E | faccb487476b |
| 45 | records/2026-11-03 Atlas v7 connections record - round 3 of 6.txt | 2026-11-03 | 1859 | agent, full | E | Session record; contents itemised in ledger E. | see ledger E | 5b2d52e8e5fb |
| 46 | records/2026-11-03 Atlas v7 connections record - round 4 of 6.txt | 2026-11-03 | 1065 | agent, full | E | Session record; contents itemised in ledger E. | see ledger E | 65ba2d421d0d |
| 47 | records/2026-11-03 Atlas v7 connections record - round 5 of 6.txt | 2026-11-03 | 1797 | agent, full | E | Session record; contents itemised in ledger E. | see ledger E | eacf9a6cd094 |
| 48 | records/2026-11-03 Black-hole pairs and trios - measured quantities only, Colab archive script v1.txt | 2026-11-03 | 5803 | agent, full | E | Session record; contents itemised in ledger E. | see ledger E | 7651bb79db51 |
| 49 | records/2026-11-03 Cosmic Owl, three-black-hole galaxy, new black-hole pairs - research note.txt | 2026-11-03 | 3231 | agent, full | E | Session record; contents itemised in ledger E. | see ledger E | 4dd035d634e8 |
| 50 | records/2026-11-03 Getting raw black-hole pair and trio data.txt | 2026-11-03 | 2278 | agent, full | E | Session record; contents itemised in ledger E. | see ledger E | d9399262c1e0 |
| 51 | records/2026-11-03 Independent read - Matter, gases and VOTKP deep dive.txt | 2026-11-03 | 2664 | agent, full | E | Session record; contents itemised in ledger E. | see ledger E | 14542ee728c1 |
| 52 | records/other_bh_paper_section_orientation_records_draft_2026-10-25_548646ae.zip | draft section, 25 Oct 2026 | 5884 | agent, full | E | Draft "Black holes as orientation records" section with its check; marked as not inserted into v10. This is the only surviving text of what became v11 Section 10. | see ledger E | 548646ae4aa9 |
Duplicate copies on Drive with the same byte size as a file above were not downloaded again: Blackholes_and_Suns (7) to (13) match (1) to (6) and the unnumbered file; BLKHOLE (5) to (9) match (1) to (4) and the unnumbered file; three copies of blkhole_v2_final.pdf; two of the infographic; four of bh_mixer_v1.html; three of bh_mixer_v10.html. Same size is strong evidence, not proof, that they are identical.

Too large for the Drive connector (over 10 MB), not downloaded: bh_paper_v8_5_1.html (11.6 MB), bh_paper_v10.html and bh_paper_v10 (1).html (13.2 MB each). Their content is covered by the PDFs and the LaTeX sources.

## 3. GitHub (dicipler-pixel)

All 55 public repositories were cloned and every branch searched. Two private repositories (mixin-colors, mad-hatters-acc-private) could not be cloned; neither name suggests black-hole work. No repository holds the paper text itself (no PDF, HTML or tex of any edition).

| Repository / branch | What it holds for the black-hole paper | Read | Ledger |
|---|---|---|---|
| event-horizon-lean (main) | The black-hole Lean repo. Basic.lean (from v2: 3 definitions and the lift, wall-metric, discriminant, Jordan, ledger and snapped-law theorems) and Edition10.lean (25 theorems for Sections 8.3, 7.1, 8.1). 40 theorems, 5 false controls, no sorry. README, LIMITATIONS, PROVENANCE. History 27 Sep to 20 Oct 2026. | me: Edition10.lean, README, LIMITATIONS, PROVENANCE in full; agent: all 21 files in full | G |
| votkp-lean, claude/matter-disk | matter-disk/corpus-notes/bh.md, the Edition 10 reading note (copied whole into ledger G); 44 corpus notes in all | agent: bh.md and 6 others in full; 37 notes read in their black-hole passages only | G |
| votkp-lean, claude/votkp-research-20261110 | research records of 10, 11 and 16 Nov with black-hole passages | agent: black-hole passages | G |
| votkp-lean, claude/light-at-the-hypersurface | Light at the Hypersurface research files with black-hole passages | agent: black-hole passages | G |
| votkp-lean, claude/sm-ball-20261111 | the November gather, including 28 stored black-hole check logs | agent: the 28 logs in full; other files in passages | G |
| votkp-lean, claude/moving-matrix-of-balls | ball files naming black holes | agent: passages | G |
| neutrinos-leave-lean (5 branches) | Neutrino paper. Kept separate. Reference lists cite the black-hole paper as "edition 10.1"; primordial-black-hole mentions counted, not transcribed. | agent: black-hole-paper passages only | G |
| nonnormality-connection-energy-lean | Connection-energy theorems the black-hole paper can cite | agent: README and theorem list | G |
| dicipler-pixel.github.io | balls/blackholes.json is empty ("items": []); the paper is filed under "unsorted"; site data gives the Edition 10 Zenodo record | agent | G |
| relational-atlas-lean | atlas cards citing "Black Hole v8.4" with their own section numbers; zenodo_record.json | agent | G |
| formula-pictures, geometric-flux-magnetic-charge-lean, yang-mills-lean, others | passing mentions only | agent | G |

## 4. Zenodo

Zenodo could not be reached from this session (blocked for the shell and the page fetcher; search did not surface the record). Nothing in this manifest was checked against Zenodo. From your own files: concept DOI 10.5281/zenodo.21147366; v2 record 21860392; Edition 10 record 23493466 (dated 20 Oct 2026). The number of versions on the record and their file lists are unknown here.

## 5. Named in the task but not found, and not read in full

Not found on Drive or GitHub:
- Millennium_Research_Recovery_Package_2026-11-15.zip
- a file called the black-hole read record (ten read records of 10 Nov exist for other papers; none for this one). The nearest things are corpus-notes/bh.md on GitHub and black_hole_reading.md in the off-rails package.
- a drift audit for the black-hole paper (two IQGT drift-fix checks of 17 Nov exist; they are about the IQGT paper)
- any v8.4 paper file
- bh_paper_v11.pdf and bh_v11_tex_and_check.zip
- the short Levin extension PDF (the proof log, Part 7b, also records it as not found)
- the 8 Aug scripts as separate files (they exist as listings inside blkhole_v2_final.pdf)
- the FOURBODY-AUDIT-01/02/03 scripts that v2 names

Read in part only:
- 66 neutrino code files in Recovered_Useful_Work (header only; no black-hole-paper content)
- about 25 large notes and one 1.4 MB page in the Neutrino reading-notes package (black-hole sections only)
- 37 of 44 matter-disk corpus notes and the large HTML/JS files in votkp-lean (black-hole passages only)
- the 70 neutrino-repo files (black-hole-paper passages only)
- embedded data lines of the two mixer pages, and all binaries (png, jpg, npz)
- lines 3051 to 3885 of Corpus_Review_and_Shell_Routes (an embedded diff of the novel; long lines were cut)

## 6. Ledgers

| Ledger | Covers | Size |
|---|---|---|
| A_july_lineage.md | the twelve July versions, version by version | 175 KB |
| B_august_v2.md | v2, the infographic, Suns v1.5, and v2 against BLKHOLE (4) | 145 KB |
| C_v8_5_package.md | v8.5 source, proof log, every check and output, v8.5.1 PDF, indexes, mixer v1 | 280 KB |
| D_v10_package.md | Edition 10 source, ideas ledger, pre-registrations, new checks, 10.1 and 10.2, mixer v10, the full v8.5 to v10 change list (62 hunks) | 214 KB |
| E_transcript_and_records.md | the 20 Oct transcript, Penrose findings, shell routes, 21 records, the orientation draft | 218 KB |
| F_offrails_packages.md | both off-rails packages, every item tagged UNTRUSTED | 263 KB |
| G_github.md | the Lean repo, votkp-lean branches, neutrino and connection-energy repos, site and atlas | 412 KB |
