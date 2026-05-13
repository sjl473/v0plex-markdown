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
\int_{-\infty}^{+\infty} e^{-x^2} dx = \sqrt{\pi}
$$

$$
\sum_{i=1}^{n} i = \frac{n(n+1)}{2}
$$

$$
\nabla \cdot \vec{E} = \frac{\rho}{\varepsilon_0}
$$

## Inline Math Examples

The quadratic formula $x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}$ is used to solve equations.

Einstein's famous equation $E = mc^2$ shows mass-energy equivalence.

The Pythagorean theorem states $a^2 + b^2 = c^2$ for right triangles.

## Code Blocks

### Python Code

```python
def fibonacci(n):
    """Calculate fibonacci sequence."""
    if n <= 1:
        return n
    return fibonacci(n-1) + fibonacci(n-2)

# Calculate first 10 fibonacci numbers
for i in range(10):
    print(f"F({i}) = {fibonacci(i)}")
```

### JavaScript Code

```javascript
// Sort array using quicksort algorithm
function quickSort(arr) {
    if (arr.length <= 1) return arr;
    
    const pivot = arr[Math.floor(arr.length / 2)];
    const left = arr.filter(x => x < pivot);
    const middle = arr.filter(x => x === pivot);
    const right = arr.filter(x => x > pivot);
    
    return [...quickSort(left), ...middle, ...quickSort(right)];
}

console.log(quickSort([3, 1, 4, 1, 5, 9, 2, 6]));
```

### TypeScript Code

```typescript
interface User {
    id: number;
    name: string;
    email: string;
    isActive: boolean;
}

class UserManager {
    private users: User[] = [];
    
    addUser(user: User): void {
        this.users.push(user);
    }
    
    getActiveUsers(): User[] {
        return this.users.filter(u => u.isActive);
    }
}
```

## Inline Code Examples

Use the `console.log()` function for debugging. The `map()` method creates a new array. Check `array.length` property for size.

## Tables

### Small Table with Inline Code and Math

<table>

| Function | Code Example | Result | Math Formula |
|----------|--------------|--------|--------------|
| Sum | `sum([1,2,3])` | 6 | $\sum_{i=1}^{n} i$ |
| Factorial | `factorial(5)` | 120 | $n! = \prod_{i=1}^{n} i$ |
| Power | `pow(2, 10)` | 1024 | $a^n$ |
| Sqrt | `sqrt(16)` | 4 | $\sqrt{x}$ |
| Modulo | `mod(17, 5)` | 2 | $a \bmod b$ |

</table>

### Large Table with Various Content

<table>

| Algorithm | Time Complexity | Space Complexity | Code Snippet | Mathematical Bound |
|-----------|-----------------|------------------|--------------|-------------------|
| Quick Sort | $O(n \log n)$ | $O(\log n)$ | `qsort(arr)` | $\Theta(n \log n)$ |
| Merge Sort | $O(n \log n)$ | $O(n)$ | `msort(arr)` | $\Theta(n \log n)$ |
| Heap Sort | $O(n \log n)$ | $O(1)$ | `hsort(arr)` | $\Theta(n \log n)$ |
| Binary Search | $O(\log n)$ | $O(1)$ | `bsearch(arr, x)` | $\Theta(\log n)$ |
| Linear Search | $O(n)$ | $O(1)$ | `lsearch(arr, x)` | $O(n)$ |
| Breadth-First | $O(V + E)$ | $O(V)$ | `bfs(graph)` | $\Theta(V + E)$ |
| Depth-First | $O(V + E)$ | $O(V)$ | `dfs(graph)` | $\Theta(V + E)$ |
| Dijkstra | $O((V+E)\log V)$ | $O(V)$ | `dijkstra(g, s)` | $O(E \log V)$ |
| Bellman-Ford | $O(VE)$ | $O(V)$ | `bellman(g, s)` | $O(VE)$ |
| Floyd-Warshall | $O(V^3)$ | $O(V^2)$ | `floyd(g)` | $\Theta(V^3)$ |

</table>

### Massive Data Table

<table>

| ID | Name | Type | Value | Formula | Status | Priority | Assigned | Due Date |
|----|------|------|-------|---------|--------|----------|----------|----------|
| 1 | Task Alpha | `FEATURE` | 42 | $f(x) = x^2$ | Active | `HIGH` | Alice | 2024-01-15 |
| 2 | Task Beta | `BUG` | 17 | $g(x) = \sqrt{x}$ | Pending | `MEDIUM` | Bob | 2024-01-20 |
| 3 | Task Gamma | `IMPROVEMENT` | 99 | $h(x) = \sin(x)$ | Active | `LOW` | Carol | 2024-02-01 |
| 4 | Task Delta | `FEATURE` | 73 | $f(x) = e^x$ | Completed | `HIGH` | Dave | 2024-01-10 |
| 5 | Task Epsilon | `BUG` | 28 | $g(x) = \ln(x)$ | Active | `MEDIUM` | Eve | 2024-01-25 |
| 6 | Task Zeta | `REFACTOR` | 55 | $h(x) = \cos(x)$ | Pending | `LOW` | Frank | 2024-02-05 |
| 7 | Task Eta | `FEATURE` | 91 | $f(x) = x^3$ | Active | `HIGH` | Grace | 2024-01-30 |
| 8 | Task Theta | `BUG` | 64 | $g(x) = |x|$ | Completed | `MEDIUM` | Henry | 2024-01-18 |
| 9 | Task Iota | `IMPROVEMENT` | 37 | $h(x) = \tan(x)$ | Pending | `HIGH` | Ivy | 2024-02-10 |
| 10 | Task Kappa | `FEATURE` | 82 | $f(x) = 2^x$ | Active | `LOW` | Jack | 2024-02-15 |
| 11 | Task Lambda | `BUG` | 19 | $g(x) = \lfloor x \rfloor$ | Completed | `MEDIUM` | Kate | 2024-01-22 |
| 12 | Task Mu | `REFACTOR` | 66 | $h(x) = \lceil x \rceil$ | Active | `HIGH` | Liam | 2024-01-28 |
| 13 | Task Nu | `FEATURE` | 45 | $f(x) = \frac{1}{x}$ | Pending | `LOW` | Mia | 2024-02-20 |
| 14 | Task Xi | `BUG` | 88 | $g(x) = x!$ | Completed | `MEDIUM` | Noah | 2024-02-02 |
| 15 | Task Omicron | `IMPROVEMENT` | 23 | $h(x) = \pi \cdot x$ | Active | `HIGH` | Olivia | 2024-02-25 |

</table>

## Info, Warning, and Success Boxes

<info>
This is an informational box. Use it for important notes that users should be aware of.
</info>

<warning>
This is a warning box. Use it for potential issues or things to watch out for.
</warning>

<success>
This is a success box. Use it to confirm successful operations or positive outcomes.
</success>

## Post Component with Multiple Images

<post>
<lft>

This is a comprehensive example of the `<post>` component with multiple images on the right side. The post component allows you to create a two-column layout where text appears on the left and images appear on the right.

The `left` section supports standard Markdown formatting including **bold**, *italic*, and `inline code`. Mathematical expressions like $E = mc^2$ are also supported.

This is useful for creating visually appealing documentation pages with supporting images.

</lft>
<rt>

![Sample Image 1](/assets/images/img_01.jpg)
![Sample Image 2](/assets/images/img_02.jpg)
![Sample Image 3](/assets/images/img_03.jpg)
![Sample Image 4](/assets/images/img_04.jpg)

</rt>
</post>

## Another Post Example with Different Content

<post>
<lft>

### Algorithm Visualization

Here we demonstrate how different sorting algorithms work step by step. Each image shows the state of the array at different stages of execution.

- **QuickSort**: Divide and conquer approach
- **MergeSort**: Stable sorting with guaranteed $O(n \log n)$
- **HeapSort**: In-place sorting using heap data structure

Use `sort()` method in most languages or implement your own for learning purposes.

</lft>
<rt>

![Algorithm Step 1](/assets/images/img_02.jpg)
![Algorithm Step 2](/assets/images/img_05.jpg)
![Algorithm Step 3](/assets/images/img_06.jpg)

</rt>
</post>

## Small Image Example

Here is an inline example with a <smallimg>![Icon](/assets/images/pasted_file.png)</smallimg> small image icon embedded directly in the text flow. This is useful for avatars, badges, or inline icons.

## Lists and Formatting

### Unordered List

- First item with `code inline`
- Second item with *emphasis*
- Third item with **strong emphasis**
- Nested item with $x^2$ math
  - Nested level 1
  - Nested level 2
- Final item

### Ordered List

1. Initialize the `Array` with size $n$
2. Calculate the sum $\sum_{i=1}^{n} a_i$
3. Apply formula $\frac{\sum x}{n}$ for average
4. Return the `result`

## Blockquote

> "The best way to predict the future is to invent it."
> — Alan Kay

> Mathematics is the language of science. Formulas like $F = ma$ and $E = mc^2$ have shaped our understanding of the universe.

## Nested Folders Navigation

This file is located at: `en/_13_Complete_Test/_00_VMD_Full_Test.md`

Navigate deeper to see nested folder examples:
- Level 1: `_01_Nested_Level_1/`
- Level 2: `_01_Nested_Level_1/_01_Nested_Level_2/`
- Level 3: `_01_Nested_Level_1/_01_Nested_Level_2/_01_Nested_Level_3/`
- Level 4: `_01_Nested_Level_1/_01_Nested_Level_2/_01_Nested_Level_3/_01_Nested_Level_4/`
- Level 5: `_01_Nested_Level_1/_01_Nested_Level_2/_01_Nested_Level_3/_01_Nested_Level_4/_01_Nested_Level_5/`

## Horizontal Rule

---

## Conclusion

This document showcases:
1. Mathematical formulas (block and inline)
2. Code blocks in multiple languages
3. Tables with inline code and math
4. Large data tables
5. Post components with multiple images
6. Small inline images
7. Various formatting options
8. Deep nesting support