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

/--
Let $n\geq 2$. Prove that the $(2n)\times (2n)$ matrix
$$
A=\begin{pmatrix}
0 & 0 & 0 & \ldots & 0 & 0 & n-1 \\
1 & 0 & 0 &\ldots & 0 & 0 & n-2 \\
0 & 1 & 0 &\ldots & 0 & 0 & n-3 \\
\vdots & \vdots &\vdots &\ddots &\vdots & \vdots &\vdots \\
0 & 0 & 0 &\ldots & 0 & 0 & -(n-3) \\
0 & 0 & 0 &\ldots & 1 & 0 & -(n-2) \\
0 & 0 & 0 &\ldots & 0 & 1 & -(n-1)
\end{pmatrix}
$$
has a non-real eigenvalue (i.e. $\sigma(A)\setminus \mathbb{R}\neq\emptyset$), where in the last column zero appears two times.
-/
theorem putnam_like_set3_b6 (n : ℕ)
    [NeZero n] (hn : 2 ≤ n)
    (A : Matrix (Fin <| 2 * n) (Fin <| 2 * n) ℝ)
    (hA : ∀ i, i + 1 ≠ 0 → A (i + 1) i = 1)
    (hA' : ∀ i, i.val < n → A i (- 1) = n - 1 - i)
    (hA'' : ∀ i, n ≤ i.val → A i (- 1) = n - i)
    (hA''' : ∀ i j, i + 1 = 0 ∨ j ≠ -1 ∨ i ≠ j + 1 → A i j = 0) :
    letI AtoEnd : Module.End ℂ (Fin (2 * n) → ℂ) := (A.map (algebraMap ℝ ℂ)).toLin'
    ∃ α : ℂ, α.im ≠ 0 ∧ AtoEnd.HasEigenvalue α := by
  sorry
