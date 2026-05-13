---
title: VMD 完整功能测试
created_at: @git
last_updated_at: @git
author: @git
tags: [tutorial, test]
has_custom_tsx: false
---

# VMD 完整功能测试

本文档演示所有 VMD 功能，包含适当的嵌套层级。

## 块级数学公式

以下是常见的数学公式（代码中不含中文）：

$$
\int_{-\infty}^{+\infty} e^{-x^2} dx = \sqrt{\pi}
$$

$$
\sum_{i=1}^{n} i = \frac{n(n+1)}{2}
$$

$$
\nabla \cdot \vec{E} = \frac{\rho}{\varepsilon_0}
$$

## 行内数学公式示例

二次方程公式 $x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}$ 用于求解方程。

爱因斯坦著名的质能方程 $E = mc^2$ 展示了质量与能量的等价关系。

勾股定理指出对于直角三角形 $a^2 + b^2 = c^2$。

## 代码块

### Python 代码

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

### JavaScript 代码

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

### TypeScript 代码

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

## 行内代码示例

使用 `console.log()` 函数进行调试。`map()` 方法创建一个新数组。检查 `array.length` 属性获取大小。

## 表格

### 小型表格（含行内代码和数学公式）

<table>

| 函数 | 代码示例 | 结果 | 数学公式 |
|----------|--------------|--------|--------------|
| 求和 | `sum([1,2,3])` | 6 | $\sum_{i=1}^{n} i$ |
| 阶乘 | `factorial(5)` | 120 | $n! = \prod_{i=1}^{n} i$ |
| 幂运算 | `pow(2, 10)` | 1024 | $a^n$ |
| 平方根 | `sqrt(16)` | 4 | $\sqrt{x}$ |
| 取模 | `mod(17, 5)` | 2 | $a \bmod b$ |

</table>

### 大型表格（含各种内容）

<table>

| 算法 | 时间复杂度 | 空间复杂度 | 代码片段 | 数学界限 |
|-----------|-----------------|------------------|--------------|-------------------|
| 快速排序 | $O(n \log n)$ | $O(\log n)$ | `qsort(arr)` | $\Theta(n \log n)$ |
| 归并排序 | $O(n \log n)$ | $O(n)$ | `msort(arr)` | $\Theta(n \log n)$ |
| 堆排序 | $O(n \log n)$ | $O(1)$ | `hsort(arr)` | $\Theta(n \log n)$ |
| 二分查找 | $O(\log n)$ | $O(1)$ | `bsearch(arr, x)` | $\Theta(\log n)$ |
| 线性查找 | $O(n)$ | $O(1)$ | `lsearch(arr, x)` | $O(n)$ |
| 广度优先 | $O(V + E)$ | $O(V)$ | `bfs(graph)` | $\Theta(V + E)$ |
| 深度优先 | $O(V + E)$ | $O(V)$ | `dfs(graph)` | $\Theta(V + E)$ |
| Dijkstra | $O((V+E)\log V)$ | $O(V)$ | `dijkstra(g, s)` | $O(E \log V)$ |
| Bellman-Ford | $O(VE)$ | $O(V)$ | `bellman(g, s)` | $O(VE)$ |
| Floyd-Warshall | $O(V^3)$ | $O(V^2)$ | `floyd(g)` | $\Theta(V^3)$ |

</table>

### 超大数据表格

<table>

| ID | 名称 | 类型 | 数值 | 公式 | 状态 | 优先级 | 负责人 | 截止日期 |
|----|------|------|-------|---------|--------|----------|----------|----------|
| 1 | 任务 Alpha | `FEATURE` | 42 | $f(x) = x^2$ | 活跃 | `HIGH` | 张三 | 2024-01-15 |
| 2 | 任务 Beta | `BUG` | 17 | $g(x) = \sqrt{x}$ | 待定 | `MEDIUM` | 李四 | 2024-01-20 |
| 3 | 任务 Gamma | `IMPROVEMENT` | 99 | $h(x) = \sin(x)$ | 活跃 | `LOW` | 王五 | 2024-02-01 |
| 4 | 任务 Delta | `FEATURE` | 73 | $f(x) = e^x$ | 已完成 | `HIGH` | 赵六 | 2024-01-10 |
| 5 | 任务 Epsilon | `BUG` | 28 | $g(x) = \ln(x)$ | 活跃 | `MEDIUM` | 孙七 | 2024-01-25 |
| 6 | 任务 Zeta | `REFACTOR` | 55 | $h(x) = \cos(x)$ | 待定 | `LOW` | 周八 | 2024-02-05 |
| 7 | 任务 Eta | `FEATURE` | 91 | $f(x) = x^3$ | 活跃 | `HIGH` | 吴九 | 2024-01-30 |
| 8 | 任务 Theta | `BUG` | 64 | $g(x) = |x|$ | 已完成 | `MEDIUM` | 郑十 | 2024-01-18 |
| 9 | 任务 Iota | `IMPROVEMENT` | 37 | $h(x) = \tan(x)$ | 待定 | `HIGH` | 钱十一 | 2024-02-10 |
| 10 | 任务 Kappa | `FEATURE` | 82 | $f(x) = 2^x$ | 活跃 | `LOW` | 陈十二 | 2024-02-15 |
| 11 | 任务 Lambda | `BUG` | 19 | $g(x) = \lfloor x \rfloor$ | 已完成 | `MEDIUM` | 林十三 | 2024-01-22 |
| 12 | 任务 Mu | `REFACTOR` | 66 | $h(x) = \lceil x \rceil$ | 活跃 | `HIGH` | 黄十四 | 2024-01-28 |
| 13 | 任务 Nu | `FEATURE` | 45 | $f(x) = \frac{1}{x}$ | 待定 | `LOW` | 杨十五 | 2024-02-20 |
| 14 | 任务 Xi | `BUG` | 88 | $g(x) = x!$ | 已完成 | `MEDIUM` | 刘十六 | 2024-02-02 |
| 15 | 任务 Omicron | `IMPROVEMENT` | 23 | $h(x) = \pi \cdot x$ | 活跃 | `HIGH` | 吴十七 | 2024-02-25 |

</table>

## 信息、警告和成功框

<info>
这是信息框。用于用户需要注意的重要说明。
</info>

<warning>
这是警告框。用于潜在问题或需要注意的事项。
</warning>

<success>
这是成功框。用于确认操作成功或积极的结果。
</success>

## Post 组件（多图片）

<post>
<lft>

这是 Post 组件的综合示例，右侧有多张图片。post 组件允许你创建双列布局，文字在左侧，图片在右侧。

左侧区域支持标准 Markdown 格式，包括 **粗体**、* 斜体* 和 `行内代码`。数学表达式如 $E = mc^2$ 也支持。

这适用于创建带有支持图片的视觉吸引力文档页面。

</lft>
<rt>

![示例图片 1](/assets/images/img_01.jpg)
![示例图片 2](/assets/images/img_02.jpg)
![示例图片 3](/assets/images/img_03.jpg)
![示例图片 4](/assets/images/img_04.jpg)

</rt>
</post>

## 另一个 Post 示例

<post>
<lft>

### 算法可视化

这里我们演示不同排序算法如何逐步工作。每张图片显示数组在不同执行阶段的状态。

- **快速排序**: 分治方法
- **归并排序**: 稳定的 $O(n \log n)$ 排序
- **堆排序**: 使用堆数据结构的就地排序

使用大多数语言中的 `sort()` 方法，或自己实现以用于学习。

</lft>
<rt>

![算法步骤 1](/assets/images/img_02.jpg)
![算法步骤 2](/assets/images/img_05.jpg)
![算法步骤 3](/assets/images/img_06.jpg)

</rt>
</post>

## 小图片示例

这是一个行内示例，带有 <smallimg>![图标](/assets/images/pasted_file.png)</smallimg> 直接嵌入文本流的小图片图标。这适用于头像、徽章或行内图标。

## 列表和格式

### 无序列表

- 第一个项目含 `行内代码`
- 第二个项目含 * 强调*
- 第三个项目含 **粗体强调**
- 含 $x^2$ 公式的嵌套项目
  - 嵌套层级 1
  - 嵌套层级 2
- 最后一个项目

### 有序列表

1. 用大小 $n$ 初始化 `Array`
2. 计算求和 $\sum_{i=1}^{n} a_i$
3. 应用公式 $\frac{\sum x}{n}$ 计算平均值
4. 返回 `result`

## 引用块

> "预测未来的最好方式是创造它。"
> — 艾伦·凯

> 数学是科学的语言。像 $F = ma$ 和 $E = mc^2$ 这样的公式塑造了我们对宇宙的理解。

## 嵌套文件夹导航

此文件位于：`zh/_13_完整测试/_00_VMD_完整测试.md`

导航到更深层以查看嵌套文件夹示例：
- 层级 1: `_01_嵌套层级一/`
- 层级 2: `_01_嵌套层级一/_01_嵌套层级二/`
- 层级 3: `_01_嵌套层级一/_01_嵌套层级二/_01_嵌套层级三/`
- 层级 4: `_01_嵌套层级一/_01_嵌套层级二/_01_嵌套层级三/_01_嵌套层级四/`
- 层级 5: `_01_嵌套层级一/_01_嵌套层级二/_01_嵌套层级三/_01_嵌套层级四/_01_嵌套层级五/`

## 水平分隔线

---

## 总结

本文档展示了：
1. 数学公式（块级和行内）
2. 多语言代码块
3. 含行内代码和数学的表格
4. 大型数据表格
5. 含多图片的 Post 组件
6. 小型行内图片
7. 各种格式选项
8. 深度嵌套支持