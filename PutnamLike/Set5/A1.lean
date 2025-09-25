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

/--
$P(x)=a_nx^n+\ldots+a_1x+a_0$ is a polynomial with integer coefficients. $a_n$ is a power of $5$, $a_0$ is a power of $3$ and $P(-1)$ is odd. Prove that $P(x)$ has no rational roots.
-/
theorem putnam_like_set5_a1
    (P : ℤ[X])
    (hP₀ : ∃ n, P.leadingCoeff = 5 ^ n)
    (hP₁ : ∃ n, P.constantCoeff = 3 ^ n)
    (hP₂ : Odd (P.eval (-1))) 
    (q : ℚ) :
    P.aeval q ≠ 0 := by
  sorry
