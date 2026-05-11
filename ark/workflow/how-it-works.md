# 每一步怎么做

> 工作流各环节的详细说明。

## Step 6: UI & Animation Design

### 6.1 找视觉 Moodboard

**做什么**：搜集同行业/同风格的视觉参考，整理为 moodboard。

**怎么做**：
- 输入：产品定位、行业、风格偏好
- Hermes 自动搜集参考图
- 整理为可浏览的 moodboard 集合

**产出物**：moodboard 图片集

### 6.2 做视觉工作坊

**做什么**：基于 moodboard 探索多个视觉方向。

**怎么做**：
- 输入：moodboard + 交互稿
- Hermes 生成 3-4 个不同视觉方向的可预览方案
- 团队选择方向

**产出物**：多个视觉方向的 HTML/CSS 预览

### 6.3 提取视觉语言

**做什么**：从选中的视觉方向中提取视觉语言，产出 DESIGN.md。

**怎么做**：
- 输入：选中的 moodboard / 视觉方向
- 提取色彩、字体、间距、圆角、阴影、渐变、布局、动效等
- 产出扩展版 DESIGN.md 文档

**产出物**：DESIGN.md（视觉语言文档）

### 6.4 产出页面视觉设计

**做什么**：基于视觉语言 + 交互稿，产出具体页面。

**怎么做**：
- 输入：DESIGN.md + 交互稿
- Hermes 生成 HTML/CSS 原型
- 浏览器预览确认效果
- 确认后通过 Figma MCP 同步到 Figma

**产出物**：HTML/CSS 原型 → Figma 文件

### 6.5 动效设计

**做什么**：基于已产出 UI，延续设计语言，产出动画。

**动效类型**：
- 元素微动画（悬浮/点击反馈）
- 动态视觉效果（背景光团等）
- 开机动画

**产出物**：CSS 动画 / Lottie 文件

## Step 7: Design System

**做什么**：从设计语言和页面设计中总结 Design System。

**产出物**：
- Design Token 文件（结构化数据）
- Figma 中的 Design System
- 说明 Slides

## Step 5 & 8: 交互 Demo（待细化）

- Step 5：低保真交互稿 → 可交互原型
- Step 8：高保真 UI 稿 → 可交互原型
