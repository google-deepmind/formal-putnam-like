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

open MeasureTheory ProbabilityTheory

/-- Solution: this is the set of numbers that can be written as
$3 * p + 1$ for some non-negative $p$. -/
abbrev putnam_like_set8_b5_solution : ℕ → Set ℕ+ := sorry
-- fun n => {m | ∃ p, m.val = 3 * p + 1}

/--
Let $m,$ $n$ be positive integers. Given $n$ boxes numbered $1, 2, \ldots,n$. Each box contains $k$
balls with number $k$ for $k=1,2,\ldots,m$. One draws a ball from the first box and put it into the
second. Then draws a ball from the second box and put it into the third, and so on. Finally, one
draws a ball from the $n$-th box, check the number on it and write it down. For which $m$ expected
value of the written number is an integer?
-/
theorem putnam_like_set8_b5
    {n : ℕ} [NeZero n] {Ω : Type*} [MeasureSpace Ω]
    [IsProbabilityMeasure (ℙ : Measure Ω)]
    -- `X m · i` is the random variable outputting the value of the `i`th ball picked
    (X : ℕ+ → Ω → (Fin n → ℕ))
    (X_meas : ∀ m, Measurable (X m))
    (hX : ∀ m, ∀ ω i, X m ω i ∈ Finset.Icc 1 m.val)
    (hX' : ∀ᵉ (m) (j ∈ Finset.Icc 1 m),
      ℙ {ω | X m ω 0 = j} = j / (∑ u ≤ m.val, u))
    (hX'' : ∀ᵉ (m) (i ≠ -1) (j ∈ Finset.Icc 1 m) (k ∈ Finset.Icc 1 m),
      -- We're given the probability that the `i+1`th ball has number `j` (conditioned
      -- on the `i`th ball having value `k`)
      ℙ[{ω | X m ω (i + 1) = j} | {ω | X m ω i = k}]
        = (j + (if j = k then 1 else 0)) / (1 + ∑ u ≤ m.val, u)) :
    {m | ∃ u : ℕ, 𝔼[fun ω ↦ (X m ω (-1) : ℝ)] = u}
      = putnam_like_set8_b5_solution n := by
  sorry
