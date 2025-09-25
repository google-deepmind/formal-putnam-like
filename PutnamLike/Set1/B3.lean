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

/-
Let $f \in L^p (\mathbb{R}^n) \cap L^q (\mathbb{R}^n)$ for some $0 < p < q < +\infty$. Define $\Psi : [p,q] \rightarrow \mathbb{R}$ by
$$
\Psi(s) := \ln \left( \int_{\mathbb{R}^n} |f(x)|^s \, dx \right).
$$
Show that $\Psi$ is convex.
-/
theorem putnam_like_set1_b3
    (n p q : ℕ) (hn : n ≠ 0) (hp : p ∈ Set.Ioo 0 q)
    (f : (Fin n → ℝ) → ℝ)
    (hf : MeasureTheory.Memℒp f p)
    (hf : MeasureTheory.Memℒp f q)
    (ψ : ℝ → ℝ)
    (hψ : ∀ s, ψ s = Real.log (∫ x, (|f x| ^ s))) :
    ConvexOn ℝ (Set.Icc (p : ℝ) q) ψ := by
  sorry
