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

open Filter Topology

/--
Let $\alpha>0$ and $f:[0,\infty)\to\mathbb{R}$ be strictly decreasing continuous function such
that $\lim_{x\to\infty}f(x)=0$. Prove that
\[
\int_\alpha^\infty \frac{f(x-\alpha)-f(x+\alpha)}{f(x)}dx= \infty.
\]

-/
theorem putnam_like_set8_a6 (α : ℝ) (hα : 0 < α) (f : ℝ → ℝ)
    (hfcont : ContinuousOn f (Set.Ici 0)) (hfanti : StrictAntiOn f (Set.Ici 0))
    (hlim : Tendsto f atTop (𝓝 0)) :
    Tendsto (fun β ↦ ∫ x in α..β, (f (x - α) - f (x + α)) / f x) atTop atTop := by
  sorry
