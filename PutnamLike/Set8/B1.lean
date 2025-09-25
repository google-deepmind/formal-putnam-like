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

abbrev putnam_like_set8_b1_solution : Ordering := sorry
-- .gt

/--
Let $a=\sqrt[3]{n}$ and $b=\sqrt[3]{n+1}$ for some $n\in\mathbb{N}$, $n\geq 21$. Which is greater: $a^b$ or $b^a$?
-/
theorem putnam_like_set8_b1 (n : ℕ) (hn : 21 ≤ n) (a b : ℝ)
    (ha : a = n ^ (3⁻¹ : ℝ))
    (hb : b = (n + 1) ^ (3⁻¹ : ℝ)) :
    cmp (a ^ b) (b ^ a) = putnam_like_set8_b1_solution := by
  sorry
