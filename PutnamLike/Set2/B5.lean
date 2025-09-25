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
Prove that
\begin{equation*}
\sum_{k=0}^n
\binom{n}{k}\frac{(-1)^k}{(k+1)^3}=\frac{1}{n+1}\sum_{k=0}^n\sum_{j=0}^k\frac{1}{k+1}\cdot \frac{1}{j+1}.
\end{equation*}
-/
theorem putnam_like_set2_b5 (n : ℕ) :
    ∑ k ∈ Finset.Icc 0 n, n.choose k * ((-1) ^ k / (k + 1) ^ 3 : ℚ)
      = 1 / (n + 1) * ∑ k ∈ Finset.Icc 0 n, ∑ j ∈ Finset.Icc 0 k, 1 / (k + 1 : ℚ) * 1 / (j + 1 : ℚ) := by
  sorry
