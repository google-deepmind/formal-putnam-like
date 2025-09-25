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
Suppose that $a_1, a_2, \ldots, a_n > 0$ satisfy $a_1+a_2+\ldots+a_n=1$ and let $p > 0$. Show that
$$
\sum_{i=1}^n \left( a_i + \frac{1}{a_i} \right)^p \geq \frac{(n^2+1)^p}{n^{p-1}}.
$$
-/
theorem putnam_like_set4_b3 (n : ℕ) (hn : 2 ≤ n) (p : ℝ) (hp : 0 < p)
    (a : Fin n → ℝ) (ha : ∀ i, 0 < a i) (ha' : ∑ i, a i = 1) :
    (n ^ 2 + 1) ^ p / n ^ (p - 1) ≤ ∑ i, (a i + 1 / a i) ^ p  := by
  sorry
