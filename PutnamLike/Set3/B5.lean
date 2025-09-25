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

abbrev putnam_like_set3_b5_solution : ℂ := sorry
-- 7

/--
Find the sum
\[\sum_{i=1}^4\frac{2x_i^2+1}{(x_i^2-1)^2},\]
where $x_i$, $i=1,\ldots,4$ are the solutions of the equation $x^4-2x-1=0$.
-/
theorem putnam_like_set3_b5 (sol : Multiset ℂ)
    (hsol : sol = Polynomial.roots (X ^ 4 - 2 * X - 1)) :
    (sol.map fun x ↦ (2 * x ^ 2 + 1) / (x ^ 2 - 1) ^ 2).sum = putnam_like_set3_b5_solution := by
  sorry
