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

def functionSet : Set (ℝ → ℝ) := {f | ContinuousOn f (Set.Icc 0 1) ∧ f 0 = 0}

abbrev putnam_like_set7_b2_solution : ℝ := sorry
-- 1

/--
Find
$$
\sup_{f \in \mathcal{F}} \frac{\int_{0}^{1} |f(x)| \, dx}{\left( \int_0^1 |f(x)|^2 \, dx \right)^{1/2}},
$$
where
$$
\mathcal{F} = \left\{ f \in \mathcal{C}\left( [0,1]; \mathbb{R} \right) \ : \ f(0) = 0 \right\}.
$$
-/
theorem putnam_like_set7_b2 :
    ⨆ (f ∈ functionSet), (∫ x in (0)..1, |f x|) / √(∫ x in (0)..1, |f x| ^ 2) =
      putnam_like_set7_b2_solution := by
  sorry
