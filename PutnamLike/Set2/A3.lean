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

open scoped Real Nat

/--
Show that
\begin{equation*}
\int_0^{\pi/2} e^{\sin x}\ dx=\frac{\pi}{2}
\left(1+\sum_{k=1}^{\infty}\frac{(2k-1)!!}{(2k)!(2k)!!}\right)+
\sum_{k=0}^{\infty}\frac{(2k)!!}{(2k+1)!(2k+1)!!}
\end{equation*}
where $0!!=1 and $0!=1$.
-/
theorem putnam_like_set2_a3 :
    ∫ x in (0)..(π / 2), rexp (Real.sin x)
      = π / 2 * (1 + ∑' (k : ℕ), (2*(k+1)-1)‼ / ((2*(k+1))! * (2*(k+1))‼ : ℝ))
        + ∑' (k : ℕ), (2*k)‼ / ((2*k+1)! * (2*k+1)‼ : ℝ) := by
  sorry
