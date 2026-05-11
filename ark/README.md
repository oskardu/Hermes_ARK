# ARK — AI 设计工作流

> 基于 [Hermes Agent](https://github.com/NousResearch/hermes-agent) 搭建的 AI 设计工作流和生产能力。

## 这是什么

ARK 是一套用 AI Agent 执行 UI 设计全流程的工作流。它不是 Hermes 的改版，而是**跑在 Hermes 上的设计生产力**。

核心能力：
- 从需求到视觉设计的 9 步完整流程
- 视觉语言提取和 DESIGN.md 扩展
- HTML/CSS 原型自动生成
- Design System 自动沉淀
- 动效设计产出

## 快速开始

```bash
# 前置条件：已经安装好 Hermes Agent
# https://hermes-agent.nousresearch.com/docs

# 一键安装 ARK 工作流到你的 Hermes
git clone https://github.com/oskardu/Hermes_ARK.git
cd Hermes_ARK
bash ark/setup/install.sh
```

## 文档导航

| 文档 | 说明 |
|------|------|
| [workflow/overview.md](workflow/overview.md) | 完整流程概述（9 步） |
| [workflow/definitions.md](workflow/definitions.md) | 概念定义 |
| [workflow/how-it-works.md](workflow/how-it-works.md) | 每一步怎么做 |
| [workflow/how-to-use.md](workflow/how-to-use.md) | 使用教程 |
| [workflow/examples/](workflow/examples/) | 实际案例（slides 等） |
| [knowledge/pitfalls.md](knowledge/pitfalls.md) | 踩坑记录 |
| [knowledge/plugins.md](knowledge/plugins.md) | 额外安装的插件和配置 |
| [requirements.md](requirements.md) | 原始需求文档 |

## 目录结构

```
ark/
├── README.md              ← 你在这里
├── workflow/              # AI 设计工作流（方法论 + 教程）
├── skills/                # 封装的 Hermes 技能
├── setup/                 # 一键安装脚本
├── knowledge/             # 经验沉淀
└── requirements.md        # 原始需求文档
```

## 如何更新 Hermes

本仓库是 Hermes 官方的 fork，可以随时同步官方更新：

```bash
git fetch upstream
git merge upstream/main
```

`ark/` 目录与官方代码完全独立，更新不会冲突。

## License

ARK 工作流内容：MIT
Hermes Agent 代码：遵循 [Hermes 官方 License](LICENSE)
