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

def fromPresentation (n : ℕ) : Type :=
  PresentedGroup (α := Fin 2) {.of 0 ^ n, .of 1 ^ 2, .of 0 * .of 1 * .of 0 * .of 1}

instance (n : ℕ) : Group (fromPresentation n) := inferInstanceAs (Group (PresentedGroup _))

/--
Let \( n \in \mathbb{N} \) and \( n \geq 3 \). Prove that the group \( G \) defined by
\[
\langle x, y : x^n=e, y^2=e, xyxy=e \rangle
\]
is a non-abelian group of order \( 2n \).
-/
theorem putnam_like_set1_a4 (n : ℕ) (hn : 3 ≤ n) :
    ¬ (∀ x y : fromPresentation n, Commute x y) ∧ Nat.card (fromPresentation n) = 2 * n := by
  sorry
