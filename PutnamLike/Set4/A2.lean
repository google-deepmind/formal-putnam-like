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

open Polynomial

abbrev putnam_like_set4_a2_solution : Set ℝ[X] := sorry
-- {a • ∏ t ∈ Finset.Icc (0 : ℕ) 1011, (X - 2 • C (t : ℝ)) | (a : ℝ)}

/--
Find all real polynomials $P$ satisfying
$$
x P(x-2) = (x-2024)P(x)
$$
for all $x \in \mathbb{R}$.
-/
theorem putnam_like_set4_a2  :
    {P : ℝ[X] | ∀ x, x * P.eval (x - 2) = (x - 2024) * P.eval x} =
      putnam_like_set4_a2_solution := by
  sorry
