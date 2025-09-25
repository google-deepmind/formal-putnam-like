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
The sequence $(a_n)$ is defined by $a_1=3$, $a_2=10$ and the recurrence relation
\[
a_{n+2}=4a_{n+1}-3a_n+\frac{3^n}{a_n}\quad\text{for } n\geq 1.
\]
Prove that $\lim_{n\to\infty} \frac{a_n}{3^n}$ exists and is not greater then $\frac 74$.
-/
theorem putnam_like_set5_a4
    (a : ℕ → ℝ) (ha : a 1 = 3) (ha' : a 2 = 10)
    (hn : ∀ n ≥ 1, a (n + 2) = 4 * a (n + 1) - 3 * a n + 3 ^ n / a n) :
    ∃ l, Tendsto (fun n ↦ a n / 3 ^ n) atTop (𝓝 l) ∧ l ≤ 7 / 4 := by
  sorry
