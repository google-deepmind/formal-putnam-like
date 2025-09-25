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

abbrev putnam_like_set7_a4_solution : Prop := sorry
-- False

/--
Does there exist a matrix $A \in \mathbb{M}_{2\times 2} (\mathbb{R})$ such that
$$
\cos A = \left[ \begin{array}{cc}
1 & 2025 \\ 0 & 1
\end{array} \right],
$$
where
$$
\cos A := \sum_{n=0}^\infty (-1)^n \frac{A^{2n}}{(2n)!}?
$$
-/
theorem putnam_like_set7_a4
    (cos : Matrix (Fin 2) (Fin 2) ℝ → Matrix (Fin 2) (Fin 2) ℝ)
    (cos_def : ∀ A, cos A = ∑' n : ℕ, (-1) ^ n * (A ^ (2 * n) / (2 * n).factorial)) :
    (∃ A : Matrix (Fin 2) (Fin 2) ℝ, cos A = !![1, 2025; 0, 1]) ↔
      putnam_like_set7_a4_solution := by
  sorry
