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

/--
Prove that the sequence $(a_n)$ where
\[
a_n=\frac{\left(1+\frac 1n\right)^{3n+2}}{\left(1+\frac 1n\right)^n+\left(1+\frac 1n\right)^{n+1}+\left(1+\frac 1n\right)^{n+2}}
\]
is strictly increasing.
-/
theorem putnam_like_set3_a1 (a : ℕ → ℝ)
    (ha : ∀ n ≥ 1, a n =
      (1 + 1 / n) ^ (3 * n + 2) /
        ((1 + 1 / n) ^ n + (1 + 1 / n) ^ (n + 1) + (1 + 1 / n) ^ (n + 2))) :
    StrictMonoOn a (Set.Ici 1) := by
  sorry
