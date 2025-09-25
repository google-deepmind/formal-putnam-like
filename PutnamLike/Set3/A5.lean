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

open Filter Real Topology

/--
Show that
\begin{equation*}
\lim_{y\to\infty}\int_{-\infty}^{\infty}e^{-x^2/2}\cos(yx)dx=0.
\end{equation*}
-/
theorem putnam_like_set3_a5 (y : ℝ) :
    Tendsto (fun y => ∫ x : ℝ, Real.exp (-x ^ 2 / 2) * Real.cos (y * x)) atTop (𝓝 0) := by
  sorry
