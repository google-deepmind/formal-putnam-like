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

open Affine

-- Low priority prevents this clashing with google-deepmind/formal-conjectures
notation (priority := low) "ℝ²" => EuclideanSpace ℝ (Fin 2)

/-- Solution: $\frac{\sqrt{2}}{2}$. -/
abbrev putnam_like_set5_a6_solution : ℝ := sorry
-- √2 / 2

/--
There are two points $P,Q$, $P\neq Q$, on the positive branch of hyperbola \[
\mathcal{H}=\left\{(x,y)\in\mathbb{R}^2\,:\, y=\frac 1x,\, x>0,\,y>0\right\}.
\]
The line $k$ is a tangent at $P$, and the line $l$ is a tangent at $Q$, and the point $R$ is the intersection of $k$ and $l$. Denote by $r(P,Q)$ the radius of the circumcircle of the triangle $PQR$. Compute
\[
\inf_{P,Q}\, r(P,Q).
\]
-/
theorem putnam_like_set5_a6 :
    -- The tangent line
    letI T : ℝ² → AffineSubspace ℝ ℝ² :=
      fun P ↦ AffineSubspace.mk' P (Submodule.span ℝ {!₂[1, - 1 / P 0 ^ 2]})
    -- The positive branch of the hyperbola
    letI 𝓗 : Set ℝ² := {P | 0 < P 0 ∧ P 1 = 1 / P 0}
    -- The set of triangles `PQR` with `P, Q, R` as in the statement
    letI 𝓟 : Set (Triangle ℝ ℝ²) :=
      {t | t.points 0 ∈ 𝓗 ∧ t.points 1 ∈ 𝓗 ∧ (T (t.points 0) : Set ℝ²) ∩ (T (t.points 1) : Set ℝ²) = {t.points 2}}
     ⨅ t ∈ 𝓟, t.circumradius = putnam_like_set5_a6_solution := by
  sorry
