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

noncomputable abbrev putnam_like_set2_a4_solution : ℕ → ℝ × ℝ × ℝ := sorry
-- fun m => (m*(m-1)/2, m*(2-m), (m^2-3*m+2)/2)

open Polynomial

/--
Let $M$ be a square matrix of dimension $3$. Assume that $1$ is an eigenvalue of the matrix $M$, whose algebraic multiplicity is $3$.
For any natural number $m\geq 3$, compute the coefficients $a_m,b_m,c_m$ that satisfy the equation
\begin{equation*}
M^m=a_mM^2+b_mM+c_mI_3
\end{equation*}
Solution:
\begin{equation*}
a_m=\frac{m(m-1)}{2},\;b_m=m(2-m) \text{ and } c_m=\frac{m^2-3m+2}{2}.
\end{equation*}
-/
theorem putnam_like_set2_a4
    (M : Matrix (Fin 3) (Fin 3) ℝ)
    (hM : (X - 1) ^ 3 ∣ M.charpoly) (m : ℕ) (hm : 3 ≤ m) :
    let (a, b, c) := putnam_like_set2_a4_solution m
    M ^ m = a • M ^ 2 + b • M + c • 1 := by
  sorry
