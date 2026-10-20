import EventHorizon.Edition10
-- The extremal hole (M = Q = 1) has its photon sphere at u₀ = 1/2, where 1 − 3u₀ + 2u₀² = 0.
-- Its squared growth per radian is 1/2, not the uncharged value 1.
example : (6 : ℝ) * 1 * (1 / 2) - 6 * 1 ^ 2 * (1 / 2) ^ 2 - 1 = 1 := by norm_num
