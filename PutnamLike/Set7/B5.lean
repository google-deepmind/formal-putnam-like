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

abbrev putnam_like_set7_b5_solution : Set (ℝ → ℝ) := sorry
-- { fun x ↦ c - x / 2 | (c : ℝ) } ∪ {fun x ↦ x}

/--
Find all continuous functions $g : \mathbb{R} \rightarrow \mathbb{R}$ satisfying
$$
g(g(x)) = \frac12 g(x) + \frac12 x.
$$
-/
theorem putnam_like_set7_b5 :
    {g : ℝ → ℝ | Continuous g ∧ ∀ x, g (g x) = g x / 2 + x / 2} =
    putnam_like_set7_b5_solution := by
  sorry
