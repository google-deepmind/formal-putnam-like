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

open scoped Matrix

/--
Let $x(t)$ be a solution of the system
\begin{equation}\label{Row}
\left\{
\begin{array}{I}
\dot{x}(t)=A(t)x , \\
x(0)\neq 0,
\end{array}
\right.
\end{equation}
where
\begin{equation*}
A(t)=\begin{pmatrix}
  1+\sin^2 t & -1 & -1 \\
  1 & 1/(1+\sin^2 t) & -1 \\
  1 & 1 & 1+\cos^2 t
\end{pmatrix}.
\end{equation*}
Show that the function $\mathbb{R}\ni t \mapsto \|x(t)\|\in \mathbb{R}$ is
increasing, where $\|\cdot\|$ denotes the Euclidean norm.
-/
theorem putnam_like_set2_b4
    (x : ℝ → EuclideanSpace ℝ (Fin 3))
    (A : ℝ → Matrix (Fin 3) (Fin 3) ℝ)
    (hAx : ∀ t, HasDerivAt x (A t *ᵥ x t) t)
    (hx0 : x 0 ≠ 0)
    (hA : ∀ t, A t =
      !![1 + Real.sin t ^ 2, - 1, - 1;
         1, 1 / (1 + Real.sin t ^ 2), -1;
         1, 1, 1 + Real.cos t ^ 2]) :
    StrictMono (fun t ↦ ‖x t‖) := by
  sorry
