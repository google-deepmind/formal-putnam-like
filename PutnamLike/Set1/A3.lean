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

/--
Let $f : [0,1] \rightarrow \mathbb{R}$ be defined as a power series
$$
f(x) = \sum_{i=0}^\infty a_i x^i
$$
for some $a_i \in \{0,1\}$. Suppose that for some $n \in \mathbb{N}$, we have
$f \left( \frac{1}{2^n} \right) \in \mathbb{Q}$. Show that for every odd natural
number $q \geq 3$ we have that $f \left( \frac{2}{q} \right) \in \mathbb{Q}$ and
if we write $f \left( \frac{2}{q} \right) = \frac{\alpha}{\beta}$ for some integers
$\alpha, \beta$ with $\mathrm{gcd}\, (\alpha, \beta) = 1$, then $\beta$ is odd.
-/
theorem putnam_like_set1_a3 (f : ℝ → ℝ)
    (a : FormalMultilinearSeries ℝ ℝ ℝ)
    (ha : ∀ n, a n 1 ∈ ({0, 1} : Set ℝ))
    (hf : ∀ x ∈ Set.Icc 0 1, HasFPowerSeriesWithinAt f a (Set.Icc 0 1) x)
    (n : ℕ) (q : ℕ) (hq : Odd q) (hq' : 3 ≤ q)
    (hn : ∃ x : ℚ, f (1 / 2 ^ n) = x) :
    ∃ x : ℚ, x = f (2 / q) ∧ Odd x.den := by
  sorry
