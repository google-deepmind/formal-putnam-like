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

def putnam_like_set6_b4_solution : ℕ → ℕ := sorry
-- fun n ↦ match n with | 0 => 2 | 1 => 18 | n + 2 => 18 * putnam_like_set6_b4_solution (n + 1) - putnam_like_set6_b4_solution n

/--
Let $n$ be a positive integer. Find the smallest integer greater than $(\sqrt{5}+2)^{2n}$.
-/
theorem putnam_like_set6_b4 (n : ℕ) (hn : n ≠ 0) :
    ⌈(√5 + 2) ^ (2 * n)⌉₊ = putnam_like_set6_b4_solution n := by
  sorry
