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

/--
Let $B(0,1)$ denote the unit ball in $\mathbb{R}^n$. Show that
$$
\int_{B(0,1)} |x_1|^{2k} \, dx \geq \frac{\omega_n}{n^{k} (2k+n)}
$$
for any $k \geq 1$, where $\omega_n$ denotes the surface area of the $(n-1)$-dimensional sphere in $\mathbb{R}^n$.
-/
theorem putnam_like_set4_b4 (n k : ℕ) [NeZero n] (hk : 1 ≤ k) :
    letI normalisationFactor := (volume <| Metric.closedBall (0 : EuclideanSpace ℝ (Fin n)) 1).toReal / 2 ^ n
    (μH[n-1] (Metric.sphere (0 : EuclideanSpace ℝ (Fin n)) 1)).toReal / normalisationFactor / (n ^ k * (2 * k + n))
      ≤ ∫ x in Metric.closedBall (0 : EuclideanSpace ℝ (Fin n)) 1, |x 0| ^ k := by sorry
