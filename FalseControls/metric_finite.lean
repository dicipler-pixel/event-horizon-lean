import EventHorizon.Basic
-- The E₂ metric is not bounded at the wall: at w₃ = 1/1000 its 1/(6w₃) term alone exceeds 100.
example : (4 : ℝ) / 6 * (1 / (4 * (1 / 1000))) < 100 := by norm_num
