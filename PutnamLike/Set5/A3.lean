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

open Finset

/--
Let $n$ be an odd number and let $e_1=1, e_2,\ldots, e_n$ be the $n$-th roots of unity. Prove that $\prod_{i< j} (e_i+e_j)^2=1$.
-/
theorem putnam_like_set5_a3 (n : ℕ) [NeZero n] (hn : Odd n)
    (e : Fin n → ℂ) (he : e 0 = 1)
    (hehe : Set.range e = Polynomial.nthRootsFinset n ℂ) :
    ∏ ⟨i, j⟩ ∈ {x : Fin n × Fin n | x.1 < x.2}, (e i + e j) ^ 2 = 1 := by
  sorry
