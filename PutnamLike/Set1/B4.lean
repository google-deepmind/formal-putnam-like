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

open scoped Real Topology

abbrev putnam_like_set1_b4_solution : Filter ℝ := sorry
-- 𝓝 (rexp 1)

/--
Find the limit
$$
\lim_{n\to\infty} \int_0^1 \frac{(1-\ln(1-x))^n}{n!} \, dx.
$$
-/
theorem putnam_like_set1_b4 :
    Filter.atTop.Tendsto (fun n ↦ ∫ x in (0)..1, (1 - Real.log (1 - x)) ^ n / n.factorial) putnam_like_set1_b4_solution ∧
    putnam_like_set1_b4_solution ∈ {𝓝 a | (a : ℝ)} ∪ {Filter.atBot, Filter.atTop} := by
  sorry
