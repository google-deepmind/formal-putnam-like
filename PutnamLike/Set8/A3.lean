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

abbrev putnam_like_set8_a3_solution : ℝ → Set ℝ := sorry
-- fun c ↦ Set.Ioo 0 (c ^ 3)

def convSequences (c : ℝ) : Set (ℕ → ℝ) := { x : ℕ → ℝ | (∀ n, 0 < x n) ∧ HasSum x c }

/--
Let $c$ be a positive constant. Consider a set $X$ of all sequences $(x_n)$ of positive reals such
that $\sum_{n=0}^{\infty}x_n=c$. Describe the set
\[
Y = \left\{\sum_{n=0}^{\infty}x_n^3\;:\: (x_n)\in X\right\}.
\]
-/
theorem putnam_like_set8_a3 (c : ℝ) (hc : 0 < c) :
    { ∑' n, x n ^ 3 | x ∈ convSequences c } = putnam_like_set8_a3_solution c := by
  sorry
