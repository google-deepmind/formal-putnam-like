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
Suppose that integers $k, m, n$ such that $k \geq 1$ and $n \geq m \geq 2$, satisfy the following equation
$$
(n-(m-1))^2 + \ldots + (n-1)^2 + n^2 = (n+1)^2 + (n+2)^2 + \ldots + (n+k)^2.
$$
Show that
\begin{align*}
m \leq 7k \leq 7n.
\end{align*}
-/
theorem putnam_like_set4_a5 (k m n : ℕ) (hk : 1 ≤ k) (hn : m ≤ n) (hm : 2 ≤ m)
    (h : ∑ i ∈ Finset.range m, (n - i) ^ 2 = ∑ i ∈ Finset.Icc 1 k, (n + i) ^ 2) :
    m ≤ 7 * k ∧ 7 * k ≤ 7 * n := by
  sorry
