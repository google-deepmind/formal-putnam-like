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

/-- Solution: the minimum value is $-\frac{549}{140}$. -/
abbrev putnam_like_set5_a5_solution : ℝ := sorry
-- - 549 / 140

/--
Let $F$ be the family of all continuous functions $u:[0,1]\to\mathbb{R}$ satisfying
\[
|u(t)|^2\leq 1+6\int_0^t s^2|u(s)|\, ds,\quad \forall t\in[0,1].
\]
The functional $J:F\to\mathbb{R}$ is defined by
\[
J(u)=\int_0^1 (u^3(t)-u^2(t))\,dt.
\]
Prove that $J$ attains a minimum value on $F$ and find it.

-/
theorem putnam_like_set5_a5
    (F : Set (ℝ → ℝ))
    (hF : F = {u : ℝ → ℝ | ContinuousOn u (Set.Icc 0 1) ∧
      ∀ t ∈ Set.Icc 0 1, |u t| ^ 2 ≤ 1 + 6 * ∫ s in (0)..t, s ^ 2 * |u s|})
    (J : (ℝ → ℝ) → ℝ)
    (hJ : ∀ u, J u = ∫ t in (0)..1, u t ^ 3 - u t ^ 2) :
    IsLeast (J '' F) putnam_like_set5_a5_solution := by
  sorry
