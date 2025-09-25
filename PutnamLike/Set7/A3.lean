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

open Nat

/--
Let $n \geq 2$. Show that for any positive integers $a_1, \ldots, a_n$ and any permutation $\sigma \in S_n$ there holds
$$
\frac{\left( \sum_{i=1}^n a_i \right)^{\sum_{i=1}^n a_i} }{ \left( \sum_{i=1}^n a_i \right) !} > \frac{\prod_{i=1}^n a_i^{a_{\sigma(i)}}}{\prod_{i=1}^n ( a_i ! )}
$$
-/
theorem putnam_like_set7_a3 {n : ℕ} (hn : 2 ≤ n) (a : Fin n → ℕ) (ha : ∀ i, 0 < a i)
    (σ : Equiv.Perm (Fin n)) :
    (∏ i, a i ^ a (σ i) / ∏ i, (a i) ! : ℚ) < (∑ i, a i) ^ (∑ i, a i) / (∑ i, a i) ! := by
  sorry
