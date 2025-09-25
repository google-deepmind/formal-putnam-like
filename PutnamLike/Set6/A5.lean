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
A base $b$ palindrome is an integer which is the same
when read backwards in base $b$. Show that for any natural
number $n$ there is an integer which for at least $n$
values of $b$ has 4 digits in base $b$ and is a base $b$
palindrome.
-/
theorem putnam_like_set6_a5 (n : ℕ) :
    ∃ N, n ≤ {b : ℕ | b ≠ 0 ∧
      (b.digits N).length = 4 ∧ (b.digits N).Palindrome}.ncard := by
  sorry
