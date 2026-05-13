#!/bin/bash
# Fix Chinese code blocks to use English only

cd /Users/blfnxhk/Desktop/v0plex-markdown

# Fix _05_ file
file="zh/_05_传说中的火锅底料配方大全（绝密版）/_01_关于火锅底料与代码质量的哲学思考（深夜版）.md"
if [ -f "$file" ]; then
    cat > "$file" << 'EOF'
title: 关于火锅底料与代码质量的哲学思考（深夜版）
created_at: @git
last_updated_at: @git
author: @git
tags: [reference]
has_custom_tsx: false

# 关于火锅底料与代码质量的哲学思考（深夜版）

## 有用性分析

### 有用性评估

有用性是一个复杂的话题。有时候，我们认为有用的东西实际上可能没那么有用；而看似没用的东西，可能在关键时刻派上用场。

### 数学模型

有用性可以用数学公式表示：

$$
U(x) = \frac{\text{实际效果}}{\text{期望值}} \times 100\%
$$

当 $U(x) > 1$ 时，表示超出预期；当 $U(x) < 1$ 时，表示不如预期。

### 代码示例

```go
func evaluateUsefulness(thing string) string {
    if thing == "useful" {
        return "indeed useful"
    }
    return "as titled"
}
```

<warning>
警告：认为没用的东西可能在你不知道的时候有用。但话说回来，如果你不知道它有用，那它对你来说还是没用。
</warning>

有用性函数 $U(x)$ 在 $x$ 有点用处时取得极小值。

<info>
有用性的悖论：当你觉得一个东西有用的时候，它往往已经在发挥作用了；而当你觉得它没用的时候，你又不会用它。所以，有用性其实是一个主观感受。
</info>

<success>
成功识别了一个哲学问题：如果一样东西永远不被使用，它还有用吗？
</success>
EOF
fi

# Fix _06_ file
file="zh/_06_妈妈问我为什么跪着看代码系列/_01_跪着写代码的108个理由以及为什么不建议这么做.md"
if [ -f "$file" ]; then
    cat > "$file" << 'EOF'
title: 跪着写代码的108个理由以及为什么不建议这么做
created_at: @git
last_updated_at: @git
author: @git
tags: [tutorial]
has_custom_tsx: false

# 跪着写代码的108个理由以及为什么不建议这么做

## 内容简介

某种内容，具体是什么内容不知道，但确实是内容。

### 某种示意图

![某种示意图](/assets/images/pasted_file.png)

![另一种示意图](/assets/images/pasted_file.png)

### 分析

```python
def analyze(problem):
    if problem == "big problem":
        return "big solution"
    return "not a problem"
```

<smallimg>![小图标](/assets/images/pasted_file.png)</smallimg> 这个图标虽然小，但小也有小的好处，大的话可能就太大了。
EOF
fi

# Fix _07_ file
file="zh/_07_[这是一只猫咪的日记本]萌萌哒/_01_猫咪教人类如何优雅地敲键盘（附赠踩键盘技巧）.md"
if [ -f "$file" ]; then
    cat > "$file" << 'EOF'
title: 猫咪教人类如何优雅地敲键盘（附赠踩键盘技巧）
created_at: @git
last_updated_at: @git
author: @git
tags: [guide]
has_custom_tsx: false

# 猫咪教人类如何优雅地敲键盘（附赠踩键盘技巧）

## 时间流逝

时间是最公平的资源，每个人每天都只有24小时，不多不少。

### 时间流逝图

![时间流逝图](/assets/images/pasted_file.png)

![废话分布图](/assets/images/pasted_file.png)

### 时间计算

```javascript
function elapse(time) {
    return time + 1;
}
```

<smallimg>![小标记](/assets/images/pasted_file.png)</smallimg> 小标记虽然不起眼，但显眼的话就不叫小标记了。
EOF
fi

# Fix _08_ file
file="zh/_08_{修仙从入门到放弃完全指南}/_01_从炼气期到渡劫期的完整修仙路线图（内含避雷指南）.md"
if [ -f "$file" ]; then
    cat > "$file" << 'EOF'
title: 从炼气期到渡劫期的完整修仙路线图（内含避雷指南）
created_at: @git
last_updated_at: @git
author: @git
tags: [guide]
has_custom_tsx: false

# 从炼气期到渡劫期的完整修仙路线图（内含避雷指南）

## 搁这指南

搁这是一门玄学。你说它在这吧，它好像又不在；你说它不在吧，它又确实在这。

### 搁这示意图

![搁这示意图](/assets/images/pasted_file.png)

![位置分析图](/assets/images/pasted_file.png)

### 搁这实现

```java
public class Here {
    public static void main(String[] args) {
        System.out.println("Right here!");
    }
}
```

<smallimg>![搁这标记](/assets/images/pasted_file.png)</smallimg> 小标记指示你确实搁这呢。
EOF
fi

# Fix _09_ file
file="zh/_09_震惊！程序员竟然这样写代码/_01_震惊！原来程序员都是这样写Bug的（内部资料慎点）.md"
if [ -f "$file" ]; then
    cat > "$file" << 'EOF'
title: 震惊！原来程序员都是这样写Bug的（内部资料慎点）
created_at: @git
last_updated_at: @git
author: @git
tags: [reference]
has_custom_tsx: false

# 震惊！原来程序员都是这样写Bug的（内部资料慎点）

## 一席话

听君一席话，如听一席话。这句话乍一听好像是废话，但仔细一想，确实是废话。

### 一席话示意

![一席话示意](/assets/images/pasted_file.png)

### 一席话实现

```rust
fn listen_to_words(person: &str, words: &str) -> String {
    format!("{} listened to {}, like listening to {}", person, words, words)
}
```

<smallimg>![话图标](/assets/images/pasted_file.png)</smallimg> 图标虽小，含义却大；含义虽大，图标还是小。
EOF
fi

# Fix _10_ file
file="zh/_10_如何用Python控制微波炉加热粽子/_01_Python控制家电完全教程（包括但不限于微波炉烤箱洗衣机）.md"
if [ -f "$file" ]; then
    cat > "$file" << 'EOF'
title: Python控制家电完全教程（包括但不限于微波炉烤箱洗衣机）
created_at: @git
last_updated_at: @git
author: @git
tags: [tutorial]
has_custom_tsx: false

# Python控制家电完全教程（包括但不限于微波炉烤箱洗衣机）

## 无语

无语是最深的语言。当你无语的时候，其实你说了很多；当你说了很多的时候，其实你可能很无语。

### 无语表情图

![无语表情图](/assets/images/pasted_file.png)

### 无语实现

```python
def speechless(text):
    if len(text) == 0:
        return "truly speechless"
    return text
```

<smallimg>![无语小图标](/assets/images/pasted_file.png)</smallimg> 小小的无语图标，承载着大大的无语。
EOF
fi

# Fix _11_ file
file="zh/_11_（深夜放毒）美食图片合集精选/_01_深夜放毒精选集（保证看了会饿）【高清无水印】.md"
if [ -f "$file" ]; then
    cat > "$file" << 'EOF'
title: 深夜放毒精选集（保证看了会饿）【高清无水印】
created_at: @git
last_updated_at: @git
author: @git
tags: [reference]
has_custom_tsx: false

# 深夜放毒精选集（保证看了会饿）【高清无水印】

## 星期

一周有七天，这是不变的真理。今天是星期几？这个问题每天都在困扰着我们。

### 一周七天图

![一周七天图](/assets/images/pasted_file.png)

![时间轮回图](/assets/images/pasted_file.png)

### 星期实现

```typescript
interface Week {
    days: string[];
    currentDay: number;
    
    getToday(): string;
}
```

<smallimg>![星期图标](/assets/images/pasted_file.png)</smallimg> 小小的图标，承载着一周七天的厚重历史。
EOF
fi

echo "Code blocks fixed!"
EOF