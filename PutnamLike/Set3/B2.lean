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

open Filter Topology

abbrev putnam_like_set3_b2_solution : Filter ℝ := sorry
-- 𝓝 ((Real.exp 1 - 1) / 2)

/--
Compute the limit
\[
\lim\limits_{n\to\infty} \frac{1}{n^2}\sum\limits_{k=1}^n\sum\limits_{l=1}^k e^{l/k}.
\]
-/
theorem putnam_like_set3_b2 :
    putnam_like_set3_b2_solution ∈ {atTop, atBot} ∪ Set.range 𝓝 ∧
    Tendsto (fun n : ℕ ↦ 1 / n ^ 2 * ∑ k ∈ Finset.Icc 1 n, ∑ l ∈ Finset.Icc 1 k, Real.exp (l / k))
      atTop putnam_like_set3_b2_solution := by
  sorry
