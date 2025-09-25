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
Prove that $\lceil (\sqrt {11}+3)^{2n}\rceil$ is divisible by $2^{n+1}$ for any $n\geq 1$.
-/
theorem putnam_like_set3_a4 (n : ℕ) (hn : 1 ≤ n) :
    2 ^ (n + 1) ∣ ⌈(√11 + 3) ^ (2 * n)⌉₊ := by
  sorry
