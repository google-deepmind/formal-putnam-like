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

/-- Solution: False. -/
abbrev putnam_like_set5_b3_solution : Prop := sorry
-- False

/--
Does there exist a function $f:\mathbb{Z}\to\mathbb{Z}$ such that
\[
9f(x)-10f(f(x))=2x \quad\text{and}\quad f(2x)=2f(x)
\]
for all $x\in\mathbb{Z}$?
-/
theorem putnam_like_set5_b3 :
    (∃ f : ℤ → ℤ, (∀ x, 9 * f x - 10 * f (f x) = 2 * x) ∧
      ∀ x, f (2 * x) = 2 * f x) ↔ putnam_like_set5_b3_solution := by
  sorry
