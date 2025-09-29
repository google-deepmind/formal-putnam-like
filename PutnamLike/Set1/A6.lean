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

abbrev putnam_like_set1_a6_solution : Prop := sorry
-- False

/--
Let $f : \mathbb{R}^2 \rightarrow \mathbb{R}$ be a continuous function and let $r > 0$ be fixed. Suppose that
$$
\int_{B(x_0, r)} f(x) \, dx = 0
$$
for any $x_0 \in \mathbb{R}^2$. Does it imply that $f \equiv 0$?
-/
theorem putnam_like_set1_a6 :
    (∀ (f : EuclideanSpace ℝ (Fin 2) → ℝ) (r : ℝ), Continuous f → 0 < r →
      (∀ x₀, ∫ x in Metric.closedBall x₀ r, f x = 0) → f = 0)
    ↔ putnam_like_set1_a6_solution := by
  sorry
