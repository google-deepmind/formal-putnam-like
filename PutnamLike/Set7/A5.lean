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

abbrev putnam_like_set7_a5_solution : Prop := sorry
-- True

/--
Let $(m_k) \subset \mathbb{N}$ be an increasing sequence such that $m_k \to \infty$. Suppose that
$(a_k) \subset \mathbb{R}$ is a sequence such that for every $\gamma > 1$,
$a_{\lfloor \gamma^{m_k} \rfloor} \to 0$ as $k \to \infty$. Is that true that $a_k \to 0$?
-/
theorem putnam_like_set7_a5 (m : ℕ → ℕ) (hm_mono : Monotone m) (hm : Tendsto m atTop atTop)
    (a : ℕ → ℝ) (ha : ∀ γ > 1, Tendsto (fun k => a ⌊γ ^ m k⌋₊) atTop (𝓝 0)) :
    Tendsto a atTop (𝓝 0) ↔ putnam_like_set7_a5_solution := by
  sorry
