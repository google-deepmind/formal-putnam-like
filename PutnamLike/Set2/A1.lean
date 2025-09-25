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

abbrev putnam_like_set2_a1_solution : Prop := sorry
-- True

/--
Let $A$ and $B$ be two square invertible matrices of size $2n+1$, where $n\geq 1$. Do there exist real numbers
$a$ and $b$ such that $a^2+b^2\neq 0$ and $\det(aA+bB)=0$?
Solution: True
-/
theorem putnam_like_set2_a1
    (n : ℕ) (hn : 1 ≤ n)
    (A B : Matrix (Fin (2 * n + 1)) (Fin (2 * n + 1)) ℝ)
    (hA : IsUnit A) (hB : IsUnit B) :
    (∃ (a b : ℝ), a ^ 2 + b ^ 2 ≠ 0 ∧ (a • A + b • B).det = 0) ↔
       putnam_like_set2_a1_solution := by
  sorry
