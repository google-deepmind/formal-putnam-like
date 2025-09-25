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
open Polynomial
open scoped Classical
open scoped ENNReal
open scoped EuclideanGeometry
open scoped InnerProductSpace
open scoped intervalIntegral
open scoped List
open scoped Matrix
open scoped Nat
open scoped NNReal
open scoped Pointwise
open scoped ProbabilityTheory
open scoped Real
open scoped symmDiff
open scoped Topology

abbrev putnam_like_set3_a6_solution : Set ℕ := sorry 
-- {(2*d^2) | (d : ℕ) (_ : d ≠ 0)}

/--
Let $J_n$ denote the $n\times n$ matrix with ones in each odd column and zeros in each even column e.g. $J_3=\begin{pmatrix}
1&0& 1 \\
1&0& 1 \\
1&0& 1
\end{pmatrix}$. For which even integers $n$ does there exist an $n\times n$ matrix $A$ whose entries are all in $\{0,1\}$, such that $A^2=J_n$?
Solution: $n = 2d^2$ for positive
-/
theorem putnam_like_set3_a6
    {J : (n : ℕ) → Matrix (Fin n) (Fin n) ℤ}
    (hJ : ∀ n i j, J n i j = if 2 ∣ (j.val + 1) then 1 else 0) :
    --Formalisation note: here we take `n` positive since this is implicit in the problem
    --but note that the problem still works without this!
    {n | n ≠ 0 ∧ Even n ∧ ∃ A : Matrix (Fin n) (Fin n) ℤ,
      (∀ i j, A i j ∈ ({-1, 1} : Set ℤ)) ∧ A^2 = J n}
      = putnam_like_set3_a6_solution := by
  sorry
