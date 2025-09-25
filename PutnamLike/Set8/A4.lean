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

import Mathlib.Data.ENat.Lattice
import Mathlib.MeasureTheory.Constructions.Pi
import Mathlib.MeasureTheory.Constructions.UnitInterval
import Mathlib.Probability.Process.HittingTime
import Mathlib.Probability.ProductMeasure
import Mathlib.Probability.Notation

open MeasureTheory Measure
open scoped ENNReal ProbabilityTheory unitInterval

/--
Given an asymmetric coin with probability of getting heads equal to $p$, which is a random variable uniformly distributed on $[0,1]$.
Show that the expected number of tosses to get the first heads is infinite.
-/
theorem putnam_like_set8_a4 :
    ∫⁻ p : I, ∫⁻ ω : ℕ∞ → I,
      (hitting (fun n x ↦ x n ≤ p) {True} 0 ⊤ ω : ℕ∞) ∂infinitePi (fun _ ↦ volume) = ∞ := by sorry