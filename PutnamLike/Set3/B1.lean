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
In the one action the sequence of positive real numbers $(x_1,x_2,\ldots,x_n)$ is transformed into
shorter sequence $(\sqrt{x_1x_2},\sqrt{x_2x_3},\sqrt{x_3x_4},\ldots,\sqrt{x_{n-1}x_n})$. After the
$(n-1)$ actions there is only one number remaining, call it \emph{result}.

Prove that if we start with the numbers $(1,2,\ldots,n)$ then the result is smaller then
$\frac{n+1}2$.
-/
def putnam_like_set3_b1 (n : ℕ) (hn : 2 ≤ n) (seq : ℕ → ℕ → ℝ)
    (hinit : ∀ i ∈ Finset.Icc 1 n, seq 0 i = i)
    (hseq :
      ∀ t ∈ Finset.Ico 0 (n - 1),
      ∀ i ∈ Finset.Ico 1 (n - t), seq (t + 1) i = √(seq t i * seq t (i + 1))) :
    seq (n - 1) 1 < (n + 1) / 2 := by
  sorry
