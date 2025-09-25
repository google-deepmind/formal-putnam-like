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

open Filter Finset Topology

/--
Given a sequence $(r_n)$ of positive real numbers which tends to zero. Show that every non-empty
interval $(a, b)$ contains a non-empty subinterval $(c, d)$ that does not contain any numbers equal to a sum of 2025 distinct terms of the sequence $(r_n)$.
-/
theorem putnam_like_set6_b5 (r : ℕ → ℝ) (hr : ∀ n, 0 < r n) (hr' : Tendsto r atTop (𝓝 0))
    (a b : ℝ) (hab : a < b) :
    ∃ c d : ℝ, c < d ∧ Set.Ioo c d ⊆ Set.Ioo a b ∧
      ∀ x, (∃ M : Finset ℕ, Set.InjOn r M ∧ #M = 2025 ∧ x = ∑ i ∈ M, r i) → x ∉ Set.Ioo c d := by
  sorry
