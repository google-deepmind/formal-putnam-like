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

open Filter Topology

/--
Let $(a_n)_{n=0}^{\infty}$ be a sequence of positive real numbers such that $a_{n+1}\leq\frac 12 a_n$ for all $n\geq 0$. Define $b_n=a_n-3a_{n+1}+3a_{n+2}-a_{n+3}$. Prove that $\sum_{n=1}^\infty nb_n =a_1-a_2$.
-/
theorem putnam_like_set5_a2
    (a b : ℕ → ℝ) (ha : ∀ n, 0 < a n)
    (ha' : ∀ n, a (n + 1) ≤ 1 / 2 * a n)
    (hb : ∀ n, b n = a n - 3 * a (n + 1) + 3 * a (n + 2) - a (n + 3)) :
    HasSum (fun n ↦ n * b n) (a 1 - a 2) := by
  sorry
