---
title: 震惊！原来程序员都是这样写 Bug 的（内部资料慎点）
created_at: @git
last_updated_at: @git
author: @git
tags: [reference]
has_custom_tsx: false
---

# 震惊！原来程序员都是这样写 Bug 的（内部资料慎点）

## 一席话

听君一席话，如听一席话。这句话乍一听好像是废话，但仔细一想，确实是废话。

### 一席话示意

![一席话示意](../../assets/images/unsplash/unsplash_008.jpg)

### 一席话实现

```rust
fn listen_to_words(person: &str, words: &str) -> String {
    format!("{} listened to {}, like listening to {}", person, words, words)
}
```

<smallimg>![话图标](../../assets/images/unsplash/unsplash_005.jpg)</smallimg> 图标虽小，含义却大；含义虽大，图标还是小。
