---
title: VMD Full Feature Test
created_at: @git
last_updated_at: @git
author: @git
tags: [tutorial, test]
has_custom_tsx: false
---

# VMD Full Feature Test

This document demonstrates all VMD features with proper nesting levels.

## Block Math Formulas

The following are common mathematical formulas without any Chinese characters:

$$
\hat{H} = -\frac{\hbar^2}{2m}\nabla^2 + V(\mathbf{r})
$$

$$
\Gamma(z) = \int_0^{\infty} t^{z-1}e^{-t} dt
$$


## Mega Test Table

This table contains inline code and inline math across many rows and columns to test rendering at scale.

<table>

| Feature | Syntax | LaTeX Inline | Python Code | JS/TS Code | Result | Complexity | Notes |
|---|---|---|---|---|---|---|---|
| Inline Math | Valid | $\alpha + \beta = \gamma$ | `dict.get(key, default)` | `Array.from({length: 10}, (_, i) => i)` | WARN | O(n) | Row 1 |
| Block Math | Invalid | $\mathrm{Var}(X) = \mathbb{E}[X^2] - (\mathbb{E}[X])^2$ | `df.groupby(["col"]).sum()` | `type User = { id: string; name: string }` | DEBUG | O(1) | Row 2 |
| Code Block | Experimental | $\prod_{p} \frac{1}{1-p^{-s}}$ | `lambda x: x + 1` | `const x = 42` | OK | O(n) | Row 3 |
| Inline Code | Invalid | $\nabla^2 \phi = 4\pi G \rho$ | `if __name__ == "__main__": main()` | `const x = 42` | DEBUG | O(n) | Row 4 |
| Table Cell | Experimental | $\prod_{p} \frac{1}{1-p^{-s}}$ | `class Model(nn.Module): pass` | `new URLSearchParams(window.location.search)` | DEBUG | O(n log n) | Row 5 |
| Nested Expr | Valid | $\mathfrak{sl}(2, \mathbb{C})$ | `list comprehension [x for x in xs]` | `npm install react react-dom` | INFO | O(n log n) | Row 6 |
| Escaped Chars | Partial | $\lim_{x \to 0} \frac{\sin x}{x} = 1$ | `pip install numpy pandas` | `const callback = useCallback(() => {}, [])` | ERR | O(1) | Row 7 |
| Unicode Mix | Valid | $\oint_C \mathbf{F} \cdot d\mathbf{r}$ | `df.groupby(["col"]).sum()` | `console.log(`value: ${x}`)` | ERR | O(2ⁿ) | Row 8 |
| Long Formula | Partial | $\mathsf{H} \in \mathrm{Mat}_{n \times n}$ | `lambda x: x + 1` | `const memoized = useMemo(() => compute(x), [x])` | INFO | O(2ⁿ) | Row 9 |
| Short Ref | Valid | $\mathscr{F}[f](\xi) = \hat{f}(\xi)$ | `json.dumps(data, indent=2)` | `await fetch(url)` | DEBUG | O(n log n) | Row 10 |
| Matrix Notation | Experimental | $\lfloor x \rfloor \leq x < \lceil x \rceil$ | `functools.reduce(operator.add, xs)` | `console.log(`value: ${x}`)` | DEBUG | O(n) | Row 11 |
| Set Theory | Valid | $\sum_{i=1}^{n} x_i^2$ | `enumerate(["a", "b", "c"])` | `Object.keys(data).filter(Boolean)` | ERR | O(1) | Row 12 |
| Calculus | Invalid | $\Re(z) = x, \; \Im(z) = y$ | `df.groupby(["col"]).sum()` | `setTimeout(() => {}, 1000)` | ERR | O(n²) | Row 13 |
| Algebra | Partial | $\nabla \cdot \mathbf{E} = \frac{\rho}{\varepsilon_0}$ | `torch.optim.Adam(model.parameters())` | `console.log(`value: ${x}`)` | WARN | O(n!) | Row 14 |
| Statistics | Partial | $\wp(z; \omega_1, \omega_2)$ | `typing.NewType("UserId", int)` | `type User = { id: string; name: string }` | OK | O(2ⁿ) | Row 15 |
| Probability | Invalid | $\mathcal{L}\{f(t)\} = \int_0^\infty e^{-st}f(t)dt$ | `dict.get(key, default)` | `Object.keys(data).filter(Boolean)` | WARN | O(n²) | Row 16 |
| Logic Gates | Deprecated | $\mathbb{R}^n \to \mathbb{C}$ | `typing.NewType("UserId", int)` | `return <div className="flex" />` | DEBUG | O(n) | Row 17 |
| Type Theory | Partial | $\vec{a} \times \vec{b} = \vec{c}$ | `str.join(", ", items)` | `const callback = useCallback(() => {}, [])` | OK | O(n) | Row 18 |
| Category Theory | Valid | $\mathsf{H} \in \mathrm{Mat}_{n \times n}$ | `np.random.randn(100, 100)` | `setTimeout(() => {}, 1000)` | ERR | O(1) | Row 19 |
| Number Theory | Invalid | $\mathscr{F}[f](\xi) = \hat{f}(\xi)$ | `import matplotlib.pyplot as plt` | `structuredClone(obj)` | ERR | O(n) | Row 20 |
| Graph Theory | Deprecated | $\oint_C \mathbf{F} \cdot d\mathbf{r}$ | `@dataclass(frozen=True)` | `crypto.randomUUID()` | INFO | O(n) | Row 21 |
| Topology | Partial | $\lim_{x \to 0} \frac{\sin x}{x} = 1$ | `class Model(nn.Module): pass` | `const memoized = useMemo(() => compute(x), [x])` | DEBUG | O(2ⁿ) | Row 22 |
| Group Theory | Partial | $\mathrm{Var}(X) = \mathbb{E}[X^2] - (\mathbb{E}[X])^2$ | `import matplotlib.pyplot as plt` | `document.querySelector("#app")` | DEBUG | O(n²) | Row 23 |
| Ring Theory | Partial | $\Gamma(z) = \int_0^\infty t^{z-1}e^{-t}dt$ | `git commit -m "wip"` | `export default function App() {}` | INFO | O(1) | Row 24 |
| Field Theory | Valid | $\Re(z) = x, \; \Im(z) = y$ | `df.groupby(["col"]).sum()` | `useEffect(() => {}, [])` | WARN | O(n!) | Row 25 |
| Linear Algebra | Deprecated | $\mathbf{J} = \sigma \mathbf{E}$ | `np.linalg.norm(v)` | `setTimeout(() => {}, 1000)` | INFO | O(2ⁿ) | Row 26 |
| Differential Eq | Deprecated | $\nabla^2 \phi = 4\pi G \rho$ | `await asyncio.sleep(1)` | `import { useRouter } from "next/router"` | OK | O(n!) | Row 27 |
| Integral Transform | Valid | $\chi^2 = \sum \frac{(O_i - E_i)^2}{E_i}$ | `@dataclass(frozen=True)` | `import { useRouter } from "next/router"` | ERR | O(n!) | Row 28 |
| Series Expansion | Partial | $\frac{\partial f}{\partial x}$ | `list(filter(None, seq))` | `document.querySelector("#app")` | WARN | O(n²) | Row 29 |
| Tensor Notation | Valid | $\mathrm{Var}(X) = \mathbb{E}[X^2] - (\mathbb{E}[X])^2$ | `@dataclass(frozen=True)` | `const memoized = useMemo(() => compute(x), [x])` | ERR | O(2ⁿ) | Row 30 |

</table>