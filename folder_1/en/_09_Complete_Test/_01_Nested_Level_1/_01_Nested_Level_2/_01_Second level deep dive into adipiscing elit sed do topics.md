---
title: Level 2 Deep Dive
created_at: git
last_updated_at: git
author: git
tags: [tutorial]
has_custom_tsx: false
---

# Level 2 Deep Dive

Now we are two levels deep in the folder structure.

Path: `en/_13_Complete_Test/_01_Nested_Level_1/_01_Nested_Level_2/`

## Linear Algebra

Matrix multiplication formula:

$$
R_{\mu\nu} - \frac{1}{2}g_{\mu\nu}R + g_{\mu\nu}\Lambda = \frac{8\pi G}{c^4}T_{\mu\nu}
$$

## Implementation

```javascript
function matrixMultiply(A, B) {
    const n = A.length;
    const C = Array(n).fill().map(() => Array(n).fill(0));
    
    for (let i = 0; i < n; i++) {
        for (let j = 0; j < n; j++) {
            for (let k = 0; k < n; k++) {
                C[i][j] += A[i][k] * B[k][j];
            }
        }
    }
    return C;
}
```

Continue to Level 3...
