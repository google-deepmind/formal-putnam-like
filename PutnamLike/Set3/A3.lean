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

import Mathlib.MeasureTheory.Constructions.Pi
import Mathlib.MeasureTheory.Constructions.UnitInterval
import Mathlib.Probability.Notation

open scoped NNReal ProbabilityTheory unitInterval

def putnam_like_set3_a3_sol : ℝ≥0 := sorry
-- 1 / 91

/--
There are three balls in the box: green (G), red (R) and blue (B). A player draws the ball
randomly and returns it with one extra ball of the same colour. Find the probability that among
$90$ moves the red ball was drawn exactly $45$ times.
Solution: $1 / 91$
-/
theorem putnam_like_set3_a3
    (nextState : ℕ × ℕ × ℕ → I → ℕ × ℕ × ℕ)
    (nextState_red : ∀ (r g b : ℕ) (x : I),
        (x : ℝ) < r / (r + g + b) → nextState (r, g, b) x = (r + 1, g, b))
    (nextState_green : ∀ (r g b : ℕ) (x : I),
        r / (r + g + b : ℝ) ≤ x → (x : ℝ) < (r + g) / (r + g + b) →
      nextState (r, g, b) x = (r, g + 1, b))
    (nextState_blue : ∀ (r g b : ℕ) (x : I),
        (r + g) / (r + g + b : ℝ) ≤ x → nextState (r, g, b) x = (r, g, b + 1)) :
    ℙ {ω : Fin 90 → I |
        let (r, g, b) := ((List.finRange 90).map ω).foldl nextState (1, 1, 1)
        r = 45} = putnam_like_set3_a3_sol := sorry
