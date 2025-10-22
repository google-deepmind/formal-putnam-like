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

open Topology
open Filter

noncomputable abbrev putnam_like_set3_b4_solution : Set (ℝ × ℝ) := sorry
-- {(4 / 3, 6 ^ (1 / 3 : ℝ) / 2)}

/--
Consider the sequence
$$
(a_n)_{n=1}^{\infty}=(1,{1,2,3,4},{1,2,\ldots, 8,9},\ldots,1,2,\ldots,k^2,\ldots).
$$
Put $b_n=\frac{\sum_{k=1}^n a_k}{n^{\alpha}}$, where $\alpha>0$. Find all pairs $(\alpha,\beta)$ of positive real numbers such that $\lim_{n\to\infty} b_n=\beta$.
Solution: $(\alpha,\beta)=(\frac 43,\frac{\sqrt[3]{6}}{2})$
-/
theorem putnam_like_set3_b4
    (a c : ℕ → ℕ) (b : ℝ → ℕ → ℝ)
    (hc : ∀ n, c n = ∑ i ≤ n, i ^ 2)
    (ha : ∀ n, ∀ i ∈ Set.Icc 1 ((n + 1) ^ 2), a (c n + i) = i)
    -- Note: for positive `α` we can ignore the `k=0` summand, which is exactly what we need.
    (hb : ∀ α n, b α n = ∑ k ≤ n, a k / (n : ℝ) ^ α) :
    {(α, β) | 0 < α ∧ 0 < β ∧ Filter.atTop.Tendsto (b α) (𝓝 β)} =
      putnam_like_set3_b4_solution := by
  sorry

