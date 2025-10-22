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

open Polynomial

def oneDigits (p : ℕ) : Set ℕ :=
  { n > 0 | ∀ i ∈ Nat.digits p n, i = 1 }

abbrev putnam_like_set7_b4_solution : ℕ → Set ℝ[X] := sorry
-- fun p ↦ { (p - 1 : ℝ)⁻¹ • (p ^ k • ((p - 1) • X + 1) ^ n - 1) | (n) (k ≥ 1 - n)}

/--
Fix any $p \geq 2$. Let $\mathbb{O}$ denote the set of all positive integers whose all digits in
base $p$ are ones. Find all polynomials $f$ with real coefficients such that
$f(\mathbb{O}) \subset \mathbb{O}$.
-/
theorem putnam_like_set7_b4 (p : ℕ) (hp : 2 ≤ p) :
    { f : ℝ[X] | (fun o : ℕ ↦ f.eval (o : ℝ)) '' oneDigits p ⊆ (↑) '' oneDigits p } =
      putnam_like_set7_b4_solution p := by
  sorry
