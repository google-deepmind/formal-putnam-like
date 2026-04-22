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

open scoped Matrix

abbrev putnam_like_set6_b4_solution : ℕ → ℤ := sorry
-- let f : ℕ → (Fin 2 → ℤ) := Nat.rec ![2, 18] (fun _ fn ↦ !![(0 : ℤ), 1; - 1, 18] *ᵥ fn); fun n ↦ f n 0

/--
Let $n$ be a positive integer. Find the smallest integer greater than $(\sqrt{5}+2)^{2n}$.
-/
theorem putnam_like_set6_b4 (n : ℕ) (hn : n ≠ 0) :
    ⌈(√5 + 2) ^ (2 * n)⌉₊ = putnam_like_set6_b4_solution n := by
  sorry
