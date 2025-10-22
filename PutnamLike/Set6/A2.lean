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

open MeasureTheory
open Polynomial
open scoped Classical
open scoped ENNReal
open scoped EuclideanGeometry
open scoped InnerProductSpace
open scoped intervalIntegral
open scoped List
open scoped Matrix
open scoped Nat
open scoped NNReal
open scoped Pointwise
open scoped ProbabilityTheory
open scoped Real
open scoped symmDiff
open scoped Topology

abbrev putnam_like_set6_a2_solution : ℝ := sorry
-- rexp 1

/--
Find $\lim_{k\to 0} \frac 1k \int_0^k (1+\tan(x))^{\frac 1x}\, dx$
Solution: $e$
-/
theorem putnam_like_set6_a2 :
    (𝓝[≠] 0).Tendsto (fun k ↦ ↑(1 / k * ∫ x in (0)..k, (1 + Real.tan x : ℝ)^(1 / x)))
      (𝓝 putnam_like_set6_a2_solution) := by
  sorry
