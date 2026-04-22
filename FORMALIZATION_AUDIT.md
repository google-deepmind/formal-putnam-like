# Formalization audit: five statement-level fixes

This PR applies five corrections to `PutnamLike/` files where the Lean
formalization appeared to disagree with the natural-language problem.
Each correction is a single-hypothesis or single-conclusion edit — no
proofs change.

| File | Category | Diff |
|---|---|---|
| `PutnamLike/Set1/A3.lean` | **vacuity** | replace `∀ x, HasFPowerSeriesWithinAt f a [0,1] x` with `∀ x, HasSum (fun n => a n 1 * x^n) (f x)` on `Ico 0 1` |
| `PutnamLike/Set1/B3.lean` | **type + naming** | `p, q : ℕ` → `p, q : ℝ≥0∞`; rename `hf, hf` → `hf_p, hf_q`; `Icc (p : ℝ) q` → `Icc p.toReal q.toReal`; `Memℒp` → `MemLp` |
| `PutnamLike/Set3/A3.lean` | **off-by-one** | conclusion `r = 45` → `r = 46` |
| `PutnamLike/Set6/A4.lean` | **vacuity** | `ha_odd : ∀ n ≥ 1, …` → `ha_odd : ∀ n ≥ 2, …` |
| `PutnamLike/Set8/A2.lean` | **under-specified** | flip sign of `b` in the solution comment; add `a·d ≠ b·c` non-degeneracy conjunct |

## Per-finding rationale

### `Set1/A3` — power series centered at every point

**Before.**
```lean
hf : ∀ x ∈ Set.Icc 0 1, HasFPowerSeriesWithinAt f a (Set.Icc 0 1) x
```
Demands the **same** `FormalMultilinearSeries a` expand `f` around
**every** `x ∈ [0, 1]`. Unpacking: `f(y) = Σ (a n) (y − x)^n` for `y`
near each `x`, with identical `a`. That forces `f(x + h) = f(h)` for
small `h` and every `x`, i.e. `f` is constant. Under `a_n ∈ {0, 1}`
only `f ≡ 0` and `f ≡ 1` survive, so the binary-coefficient power
series problem class the problem studies disappears.

**After.**
```lean
hf : ∀ x ∈ Set.Ico (0 : ℝ) 1, HasSum (fun n => a n 1 * x ^ n) (f x)
```
The literal translation of the informal statement — a single power
series centered at `0`. Covers every evaluation point in the theorem
(`1/2ⁿ` for `n ≥ 1` and `2/q` for odd `q ≥ 3`, all in `[0, 1)`).

### `Set1/B3` — three stacked issues

**Before.**
```lean
(n p q : ℕ) (hn : n ≠ 0) (hp : p ∈ Set.Ioo 0 q)
(f : (Fin n → ℝ) → ℝ)
(hf : MeasureTheory.Memℒp f p)
(hf : MeasureTheory.Memℒp f q)
(ψ : ℝ → ℝ)
(hψ : ∀ s, ψ s = Real.log (∫ x, (|f x| ^ s))) :
ConvexOn ℝ (Set.Icc (p : ℝ) q) ψ
```
1. `p, q : ℕ` restricts to integer exponents; informal statement wants
   real `0 < p < q < ∞`.
2. The two `hf` hypotheses share a name; the later one shadows the
   earlier one, so the intended `f ∈ L^p ∩ L^q` loses its `L^p` half.
3. `Icc (p : ℝ) q` is fine while `p, q : ℕ` via coercion, but is
   inconsistent once `p, q : ℝ≥0∞`.

**After.**
```lean
(n : ℕ) (hn : n ≠ 0)
(p q : ℝ≥0∞) (hp : 0 < p) (hpq : p < q) (hq : q < ⊤)
(f : (Fin n → ℝ) → ℝ)
(hf_p : MeasureTheory.MemLp f p)
(hf_q : MeasureTheory.MemLp f q)
(ψ : ℝ → ℝ)
(hψ : ∀ s, ψ s = Real.log (∫ x, (|f x| ^ s))) :
ConvexOn ℝ (Set.Icc p.toReal q.toReal) ψ
```
`Memℒp → MemLp` also applied (the former is deprecated on current
Mathlib and triggers a warning otherwise).

### `Set3/A3` — off-by-one in the red-draw count

The Pólya-urn state starts at `(r, g, b) = (1, 1, 1)`, and each red
draw increments `r`. The problem asks for the probability of **45
red draws**. After 45 reds, `r = 1 + 45 = 46`, not `45`.

The original Lean statement asks `ℙ {… | r = 45} = sol`, which
corresponds to **44** red draws. The `-- 1 / 91` comment next to the
opaque `sol : ℝ≥0 := sorry` is also the right value for `r = 46`
(closed-form Pólya-urn: `46 / Nat.choose 92 2 = 46 / 4186 = 23 / 2093 = 1 / 91`),
which is further evidence that `r = 46` was the intended conclusion.

Fix: change `r = 45` to `r = 46` in the `foldl` predicate. The
solution stub and comment are left unchanged.

### `Set6/A4` — inconsistent hypotheses

**Before.**
```lean
(ha₀ : a 0 = 1) (ha₁ : a 1 = 1)
(ha_odd : ∀ n ≥ 1, a (2 * n - 1) = a n + a (n - 1))
```
At `n = 1`, `ha_odd` gives `a 1 = a 1 + a 0`, so `a 0 = 0`. Combined
with `ha₀ : a 0 = 1`, this forces `0 = 1` — the hypotheses are
inconsistent, and the theorem is vacuously provable by `exfalso`.

The natural-language problem says the recurrence applies **past** the
base cases, so `2n − 1 ≥ 3`, equivalently `n ≥ 2`.

**After.**
```lean
(ha_odd : ∀ n ≥ 2, a (2 * n - 1) = a n + a (n - 1))
```
With this, the sequence evaluates to
`a = 1, 1, 1, 2, 1, 3, 2, 3, 1, 4, 3, 5, …` and
`{a_{n+1} / a_n : n ∈ ℕ}` enumerates the positive rationals
(Calkin–Wilf-style).

### `Set8/A2` — "parabola" that is actually a doubled line

The curve is the zero set of `(a·x + b·y)² + c·x + d·y + e`. With the
intended solution
`(a, b, c, d, e) = (β, α, −2αβ², −2α²β, α²β²)`
the polynomial factors **exactly** as
```
(β·x + α·y − α·β)²,
```
so the "parabola" is a **doubled line** through `(α, 0)` and
`(0, β)`. Both tangency conditions in the conclusion

```
Parabola ∩ {y = 0} = {(α, 0)}
Parabola ∩ {x = 0} = {(0, β)}
```

are satisfied by any line with those axis crossings, not just
parabolas — the formalisation admits degenerate answers.

Two coordinated fixes:

1. **Sign fix in the solution comment.** The honest parabola tangent
   to `y = 0` at `(α, 0)` and to `x = 0` at `(0, β)` is the
   quadratic Bézier `C(t) = ((1−t)²·α, t²·β)`. Eliminating `t`:
   ```
   β²x² − 2αβxy + α²y² − 2αβ²x − 2α²βy + α²β² = 0,
   ```
   i.e. `(a, b, c, d, e) = (β, −α, −2αβ², −2α²β, α²β²)`. The only
   change is `b := −α` (not `α`); all other coordinates are the same.

2. **Non-degeneracy hypothesis.** Add the conjunct `a·d ≠ b·c` to
   the theorem's conclusion. This is exactly the condition that
   `(c, d)` is not a scalar multiple of `(a, b)`, which rules out
   the doubled-line family `(a·x + b·y)² + k·(a·x + b·y) + e = 0`.
   Under the corrected solution, `a·d − b·c = −4·α²·β² ≠ 0`.
