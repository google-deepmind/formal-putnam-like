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

open Polynomial Real Classical

-- Solution: $2$
abbrev putnam_like_set5_b5_solution : ℕ := sorry
-- 2

/--
Find the number of zeros of the polynomial $P(z)=z^8-5z^3+10$ in the set $A=\{z\in\mathcal{C}\,:\, \frac \pi 2 \leq \arg z\leq \pi\}$, where $\arg z\in [0,2\pi)$ is an argument of a complex number $z$.
-/
theorem putnam_like_set5_b5
    (P : ℂ[X]) (hP : P = X ^ 8 - 5 * X ^ 3 + 10) :
    (P.roots.filter fun z ↦ ∃ᵉ (θ ∈ Set.Icc (π / 2) π),
      z = ‖z‖ * Complex.exp (Complex.I * θ)).card = putnam_like_set5_b5_solution := by
  sorry
