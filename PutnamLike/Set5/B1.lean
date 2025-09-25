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
Let $a_1,\ldots,a_n$, $b_1,\ldots,b_n$ and $c_1,\ldots, c_n$ be nonnegative real numbers. Show that
\[
\left(\prod_{i=1}^n a_i\right)^\frac 1n+\left(\prod_{i=1}^n b_i\right)^\frac 1n+\left(\prod_{i=1}^n c_i\right)^\frac 1n\leq \left(\prod_{i=1}^n (a_i+b_i+c_i)\right)^\frac 1n.
\]
-/
theorem putnam_like_set5_b1
    (a b c : ℕ → ℝ) (n : ℕ) (hn : 1 ≤ n)
    (ha : 0 ≤ a) (hb : 0 ≤ b) (hc : 0 ≤ c) :
    (∏ i ∈ Finset.Icc 1 n, a i) ^ (1 / n : ℝ) + (∏ i ∈ Finset.Icc 1 n, b i) ^ (1 / n : ℝ)
      + (∏ i ∈ Finset.Icc 1 n, c i) ^ (1 / n : ℝ)
      ≤ (∏ i ∈ Finset.Icc 1 n, (a i + b i + c i)) ^ (1 / n : ℝ) := by
  sorry
