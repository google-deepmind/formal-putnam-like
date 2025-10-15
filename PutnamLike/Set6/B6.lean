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

/--
Let $(X_n=(R_n,S_n,T_n))$ be a sequence of independent random variables, where each $X_n$ has a
uniform distribution on the set of permutations of $(1,2,3)$. Let
$\hat X_n = (\hat R_n,\hat S_n,\hat T_n)
          = (\sum_{i=1}^{n}R_i,\sum_{i=1}^{n}S_i,\sum_{i=1}^{n}T_i)$,
$p_n = P(\hat R_n=\hat S_n=\hat T_n)$ and
$q_n = P(\hat R_n,\hat S_n,\hat T_n \in \{2n-1,2n,2n+1\}, \hat R_n\neq\hat S_n)$.
Show that $4p_n< q_n$ for infinitely many $n$.
-/
theorem putnam_like_set6_b6 {Ω : Type*} [MeasureSpace Ω]
    (X : ℕ → Ω → Fin 3 → Fin 3)
    (hX_unif : ∀ n, pdf.IsUniform (X n) {f | f.Bijective} ℙ Measure.count)
    (hX_indep : iIndepFun X)
    (Rhat Shat That : ℕ → Ω → ℕ)
    (Rhat_def : ∀ n ω, Rhat n ω = ∑ i ∈ Finset.range n, (X i ω 0 + 1))
    (Shat_def : ∀ n ω, Shat n ω = ∑ i ∈ Finset.range n, (X i ω 1 + 1))
    (That_def : ∀ n ω, That n ω = ∑ i ∈ Finset.range n, (X i ω 2 + 1))
    (p q : ℕ → ENNReal)
    (hp : ∀ n, p n = ℙ {ω | Rhat n ω = Shat n ω ∧ Shat n ω = That n ω})
    (hq : ∀ n, q n =
      ℙ {ω |
          ({Rhat n ω, Shat n ω, That n ω} : Set ℕ) ⊆ {2 * n - 1, 2 * n, 2 * n + 1} ∧
          Rhat n ω ≠ Shat n ω}) :
  ∃ᶠ n in Filter.atTop, 4 * p n < q n :=
  sorry
