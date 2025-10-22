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

abbrev putnam_like_set6_b1_solution : ℕ → ℕ × ℕ := sorry
-- fun n ↦ (n ^ 2 * (4 * n ^ 2 + 1), n ^ 2 * (4 * n ^ 2 + 1))

open Classical Finset

/--
Number the cells in a $2n \times 2n$ grid from $1$ to $4n^2$, starting at the top left and moving
down to bottom along each column, then continuing at the top of the next column right and so on.
Color half the cells black and half white, so that just half the cells in each row and half the
cells in each column are black. What is the minimal and the maximal possible sum of all numbers
in the black cells.
-/
theorem putnam_like_set6_b1 (n : ℕ)
    (number : Fin (2 * n) → Fin (2 * n) → ℕ)
    (number_def : ∀ i j, number i j = 2 * n * j + i + 1)
    (isValidColouring : (Fin (2 * n) → Fin (2 * n) → Prop) → Prop)
    (isValidColouring_def : ∀ C, isValidColouring C ↔
      (∀ i : Fin (2 * n), #{j | C i j} = n) ∧
      (∀ j : Fin (2 * n), #{i | C i j} = n))
    (possibleSum : Set ℕ)
    (possibleSum_def : ∀ s, s ∈ possibleSum ↔
      ∃ C, isValidColouring C ∧ (s = ∑ i, ∑ j, if C i j then number i j else 0)) :
    IsLeast possibleSum (putnam_like_set6_b1_solution n).1 ∧
    IsGreatest possibleSum (putnam_like_set6_b1_solution n).2 := by
  sorry
