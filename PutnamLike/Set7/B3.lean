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

open ContDiff Set

abbrev putnam_like_set7_b3_solution : Prop := sorry
-- False

/--
Suppose that $f : (0,1) \rightarrow \mathbb{R}$ of class $\mathcal{C}^\infty$ is such that $\frac{f(x)}{x^n}$ is increasing on $(0,1)$ for all $n \geq 0$. Is that true that
$$
f^{(n)} (x) \geq 0
$$
for every $n \geq 0$ and all $x \in (0,1)$?
-/
theorem putnam_like_set7_b3 :
    (∀ f : ℝ → ℝ,
      ContDiffOn ℝ ∞ f (Set.Ioo 0 1) →
      (∀ n, MonotoneOn (fun x ↦ f x / x ^ n) (Set.Ioo 0 1)) →
      ∀ n, ∀ x ∈ Set.Ioo 0 1, 0 ≤ iteratedDeriv n f x) ↔
    putnam_like_set7_b3_solution := by
  sorry
