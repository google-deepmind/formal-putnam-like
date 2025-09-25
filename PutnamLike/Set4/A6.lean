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

open Nat

/--
Let $1 \leq x, y, z \leq 4$ and let $n,m,k \in \mathbb{N}$. Show that
\begin{align*}
&\quad x \cdot (2n)! + y \cdot (2m)! + z \cdot (2k)! \\
&\geq (x-y+z) \cdot (n+k)! + (-x+y+z) \cdot (m+k)! + (x+y-z) \cdot (n+m)!.
\end{align*}
-/
theorem putnam_like_set4_a6 (x y z : ℝ) (hx : 1 ≤ x) (hy : 1 ≤ y) (hz : 1 ≤ z)
    (hx' : x ≤ 4) (hy' : y ≤ 4) (hz' : z ≤ 4) (n m k : ℕ) :
    (x - y + z) * (n + k)! + (-x + y + z) * (m + k)! + (x + y - z) * (n + m)!
      ≤ x * (2 * n)! + y * (2 * m)! + z * (2 * k)! := by
  sorry
