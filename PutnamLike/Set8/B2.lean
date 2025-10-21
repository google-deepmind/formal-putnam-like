/-
Copyright 2025 Google LLC

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    https://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
-/

import Mathlib

/-- Solution: \frac{2025}{8096}. -/
abbrev putnam_like_set8_b2_solution : ℚ := sorry
-- 2025 / 8096

/--
Given 2025 boxes numbered 0, 1, $\ldots$ 2024. Each $k$-th box contains $k$ white and $2024-k$ black
balls. Maria chooses randomly one box and draws 3 balls (with returning). What is the probability
that all of them are white?
-/
theorem putnam_like_set8_b2
    -- `IsWhiteBallFor k i` is the predicate that the `i`th ball in box `k` is white.
    (IsWhiteBallFor : Fin 2025 → Fin 2024 → Prop)
    [∀ box, DecidablePred <| IsWhiteBallFor box]
    -- The `k`th box contains `k` white balls (i.e. there are `k` elements of `Fin 2024`
    -- that satisfy `IsWhiteBallFor k` )
    (IsWhiteBallFor_pred : ∀ boxIdx,
      (Finset.univ.filter (IsWhiteBallFor boxIdx)).card = boxIdx) :
    {(box, mariaChoice) : Fin 2025 × Multiset (Fin 2024) |
      mariaChoice.card = 3 ∧
      ∀ ball ∈ mariaChoice, IsWhiteBallFor box ball}.ncard /
    {(box, mariaChoice) : Fin 2025 × Multiset (Fin 2024) |
      mariaChoice.card = 3}.ncard
      = putnam_like_set8_b2_solution := by
  sorry
