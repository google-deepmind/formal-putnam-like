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
Show that for every $n \geq 0$ there holds
$$
\sum_{k=0}^n (-1)^{\left\lfloor k (\sqrt{3}-1) \right\rfloor} \geq 1.
$$
-/
theorem putnam_like_set7_b6 (n : ℕ) :
    1 ≤ ∑ k ≤ n, (- 1) ^ ⌊k * (√3 - 1)⌋₊ := by
  sorry
