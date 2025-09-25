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

noncomputable abbrev putnam_like_set4_a3_solution : Prop × Prop × Prop := sorry
-- (False, False, False)

/--
Let $n \geq 2$. It is known that for every symmetric matrix $A \in \mathbb{M}_n (\mathbb{R})$ all its eigenvalues are positive if and only
if all leading principal minors are positive. Let $p \in \mathbb{P}$ be a prime number. We say that an element $x \in \mathbb{F}_p$ is positive
if and only if it is a square of another element in $\mathbb{F}_p$ (namely, there is $y \in \mathbb{F}_p$ such that $x=y^2$).

Assume that $A \in \mathbb{M}_n (\mathbb{F}_p)$ is symmetric and all its eigenvalues are in $\mathbb{F}_p$.

Is that true that all eigenvalues of a $A$ are positive in $\mathbb{F}_p$ if and only if all its leading principal minors are positive
in $\mathbb{F}_p$? If yes, prove it. If not, then which implication doesn't hold?
-/
theorem putnam_like_set4_a3
    (Good : ∀ n p, Matrix (Fin n) (Fin n) (ZMod p) → Prop)
    (Good_def : ∀ n p A (hp : p.Prime), letI : Fact p.Prime := ⟨hp⟩
      Good n p A ↔ A.IsSymm ∧ A.charpoly.Splits (RingHom.id <| ZMod p))
    (PosEvalues : ∀ n p, Matrix (Fin n) (Fin n) (ZMod p) → Prop)
    (PosEvalues_def : ∀ p n A, PosEvalues n p A ↔ ∀ (μ : ZMod p),
      Module.End.HasEigenvalue A.toLin' μ → IsSquare μ)
    (PosMinors : ∀ n p, Matrix (Fin n) (Fin n) (ZMod p) → Prop)
    (PosMinors_def : ∀ p n A, PosMinors n p A ↔
      ∀ m, ∀ ι : Fin m ↪o Fin n, IsSquare (A.submatrix ι ι).det) :
    let (IsTrue, leftImpl, rightImpl) := putnam_like_set4_a3_solution
    (IsTrue ↔ ∀ n ≥ 2, ∀ p A, p.Prime → Good n p A → PosEvalues n p A = PosMinors n p A) ∧
      (leftImpl ↔ ∀ n ≥ 2, ∀ p A, p.Prime → Good n p A → PosEvalues n p A → PosMinors n p A) ∧
      (rightImpl ↔ ∀ n ≥ 2, ∀ p A, p.Prime → Good n p A → PosMinors n p A → PosEvalues n p A) :=
  sorry
