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

abbrev putnam_like_set1_a2_solution : ℝ := sorry

/-
Compute the sum
$$
\sum_{k=0}^{\left\lfloor \frac{n}{2} \right\rfloor} \sum_{\ell = \max\{1, 2k\}}^n  \frac{1}{4^k} {\ell \choose 2k}.
$$
-/
theorem putnam_like_set1_a2 (n : ℕ) :
    ∑ k ≤ (n / 2 : ℕ), ∑ ℓ ∈ Finset.Icc (max 1 (2 * k)) n,
      (1 / 4 ^ k * ℓ.choose (2 * k) : ℝ)
    = putnam_like_set1_a2_solution := by
  sorry
