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
Let $q\in(0,1)$ be a rational number. Write $q=\frac{a}{b}$, where $\gcd(a,b)=1$. Show that
\[
\left|q-\frac{1}{\sqrt{3}}\right| > \frac{1}{9b^2}.
\]
 -/
theorem putnam_like_set8_a1 (q : ℚ) (a b : ℕ) (hb : b ≠ 0) (hgcd : Nat.gcd a b = 1)
    (hq : q = a / b) (hq0 : 0 < q) (hq1 : q < 1) :
    (9 * b ^ 2 : ℝ)⁻¹ < |q - √3⁻¹| := by
  sorry
