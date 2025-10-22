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

open MeasureTheory ProbabilityTheory
open scoped EuclideanGeometry Real

instance :  Fact (Module.finrank ℝ (EuclideanSpace ℝ (Fin 2)) = 2) :=
  ⟨finrank_euclideanSpace_fin⟩

noncomputable instance : Module.Oriented ℝ (EuclideanSpace ℝ (Fin 2)) (Fin 2) :=
  ⟨(EuclideanSpace.basisFun (Fin 2) ℝ).toBasis.orientation⟩

/-- Solution: $1 - \frac{4096575}{2^{2024}}$-/
abbrev putnam_like_set6_a6_solution : ℝ := sorry
-- 1 - 4096575 / 2 ^ 2024

/-- The set of convex $2025$-gons whose vertices lie on the unit circle. -/
def Convex2025GonSet : Set (Set (EuclideanSpace ℝ (Fin 2))) :=
    {S | ∃ P : Fin 2025 → EuclideanSpace ℝ (Fin 2), S = Set.range P ∧ (∀ i, ‖P i‖ = 1) ∧
      (∀ i j k, i < j → j < k → (∡ (P i) (P j) (P k)).sign = 1)}

/-- The predicate that a set is a $2025$-gon whose vertex angles are obtuse. -/
def IsConvexObtuse2025GonSet (S : Fin 2025 → EuclideanSpace ℝ (Fin 2)) : Prop :=
  ∃ P : Fin 2025 → EuclideanSpace ℝ (Fin 2), Set.range S = Set.range P ∧ (∀ i j k, i < j → j < k → (∡ (P i) (P j) (P k)).sign = 1) ∧
    (∀ i, btw (Real.Angle.coe 0) (∡ (P i) (P <| i + 1) (P <| i + 2)) (Real.Angle.coe <| π / 2))

/--
Suppose that $P_1, P_2, \dots, P_{2025}$ are $2025$ randomly,
independently and uniformly, chosen points on a circle.
Consider the convex $2025$-gon whose vertexes are the $P_k$.
What is the probability that all vertex angles of this polygon
are obtuse?
-/
theorem putnam_like_set6_a6
    {Ω : Type*} [MeasureSpace Ω] [IsProbabilityMeasure (ℙ : Measure Ω)] (P : Ω → Fin 2025 → EuclideanSpace ℝ (Fin 2))
    (hP : Measurable P) (hP' : iIndepFun (fun ω ↦ P ω ·))
    (hP'' : ∀ i, pdf.IsUniform (P · i) (Metric.sphere (0 : EuclideanSpace ℝ (Fin 2)) 1) (ℙ : Measure Ω) μH[1]) :
    (ℙ { ω : Ω | IsConvexObtuse2025GonSet (P ω)}).toReal = putnam_like_set6_a6_solution := by
  sorry
