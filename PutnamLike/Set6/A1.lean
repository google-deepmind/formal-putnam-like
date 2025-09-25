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

/-- Solution: $X ^ 3 - (a^2+2b)*X^2 - (b^2-2ac)X - c^2$-/
noncomputable abbrev putnam_like_set6_a1_solution : ℝ → ℝ → ℝ → ℝ[X] :=
  fun a b c ↦ X ^ 3 - (a ^ 2 + 2 * b) • X ^ 2 - (b ^ 2 - 2 * a * c) • X - C (c ^ 2)

/--
The roots of $x^3 + a x^2 + b x + c = 0$ are $\alpha,$ $\beta$
and $\gamma$. Find the cubic polynomial whose roots are
$\alpha^2$, $\beta^2$, $\gamma^2$.
-/
theorem putnam_like_set6_a1 (α β γ : ℝ) (P : ℝ[X])
    (hP : P.roots = {α, β, γ}) :
    letI Q := putnam_like_set6_a1_solution (P.coeff 2) (P.coeff 1) (P.coeff 0)
    Q.roots = {α ^ 2, β ^ 2, γ ^ 2} := by
  sorry
