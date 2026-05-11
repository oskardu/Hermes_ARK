# 工作流概述

> 用 AI Agent 执行 UI 设计的完整流程，共 9 步。

## 流程图

```
1. 需求对接
   ↓
2. 研究（竞品、用户、技术）
   ↓
3. 产品设计（PRD、功能规划）
   ↓
4. UX Design（交互架构、流程、文案）
   ↓
5. 低保真交互 Demo（可选）
   ↓
6. UI & Animation Design ← AI 重点参与
   ├─ 6.1 找视觉 Moodboard
   ├─ 6.2 做视觉工作坊（多方向探索）
   ├─ 6.3 提取视觉语言 → DESIGN.md
   ├─ 6.4 产出页面视觉设计
   └─ 6.5 动效设计
   ↓
7. Design System 沉淀 ← AI 重点参与
   ↓
8. 高保真 UI Demo（可选）
   ↓
9. 交付开发（Figma 文件等）
```

## AI 参与范围

| 优先级 | 环节 | 说明 |
|--------|------|------|
| 🔴 最高 | Step 6 — UI & Animation | 视觉方向探索、页面延展、动效设计 |
| 🔴 最高 | Step 7 — Design System | 从设计中沉淀 Design System |
| 🟡 次高 | Step 5 — 低保真 Demo | 基于交互稿生成可交互原型 |
| 🟡 次高 | Step 8 — 高保真 Demo | 基于视觉稿生成可交互原型 |

## 输入和输出

| 步骤 | 输入 | 输出 |
|------|------|------|
| Step 6.3 | Moodboard / 视觉参考 | DESIGN.md（视觉语言文档） |
| Step 6.4 | DESIGN.md + 交互稿 | HTML/CSS 原型 |
| Step 6.5 | 已产出 UI | 动效设计（CSS 动画等） |
| Step 7 | DESIGN.md + 页面设计 | Design Token + Figma DS |

## 技术路径

1. **视觉语言文档**：基于 Google DESIGN.md 格式扩展
2. **视觉设计产出**：Hermes 生成 HTML/CSS → 确认 → 同步到 Figma
3. **Figma 连接**：通过 Claude Code + Figma MCP 间接实现
