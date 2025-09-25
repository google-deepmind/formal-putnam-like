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
Show that any prime divisor $p>2$ of the number $a^{2^k}+b^{2^k}$ is of the form $p=2^{d}m+1$, where
$d\geq k+1$, $m$ is an odd positive integer, and $k$, $a$ and $b$ are positive integers with
$\gcd(a,b)=1$.
-/
theorem putnam_like_set4_a4 (a b k p : ℕ)
    (hk : 0 < k) (ha : 0 < a) (hb : 0 < b) (h : a.gcd b = 1) (hp : p > 2) (hp' : p.Prime)
    (hpk : p ∣ a ^ (2 ^ k) + b ^ (2 ^ k)) :
    ∃ d m : ℕ, k + 1 ≤ d ∧ Odd m ∧ 0 < m ∧ p = 2 ^ d * m + 1 := by
  sorry
