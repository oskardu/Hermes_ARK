# 额外插件和配置

> Hermes 默认不带的、我们额外安装和配置的内容。

## Hindsight 记忆插件（本地模式）

**安装日期**：2026-05-11

**用途**：替代 Hermes 默认记忆系统，提供知识图谱 + 多策略搜索的长期记忆。

**配置详情**：
- 模式：`local_embedded`（本地嵌入式，含 PostgreSQL）
- LLM 提取模型：`mimo-v2.5-pro`（小米 MiMo，通过 OpenAI 兼容接口）
- LLM Base URL：`https://token-plan-cn.xiaomimimo.com/v1`
- API Key：复用 `XIAOMI_API_KEY`
- Daemon 端口：`8888`
- 数据库位置：`~/.pg0/instances/hindsight-embed-hermes`
- 日志位置：`~/.hindsight/profiles/hermes.log`

**安装步骤**：
1. `uv pip install hindsight-all`（需要 Python >= 3.11，Hermes venv 已满足）
2. `brew install openssl@3`（PostgreSQL 依赖）
3. `hindsight-embed profile create hermes --port 8888`
4. 设置环境变量（HINDSIGHT_API_LLM_API_KEY, HINDSIGHT_API_LLM_PROVIDER=openai, HINDSIGHT_API_LLM_BASE_URL, HINDSIGHT_API_LLM_MODEL）
5. `hindsight-embed -p hermes daemon start`
6. Hermes config.yaml 中设置 `memory.provider: hindsight`

**工作原理**：
- 每轮对话后自动提取事实和实体（auto_retain）
- 每轮对话前自动注入相关记忆（auto_recall）
- Daemon 空闲 5 分钟自动关闭，有请求时自动启动
- 暴露 3 个工具给 Hermes：`hindsight_retain`（存储）、`hindsight_recall`（搜索）、`hindsight_reflect`（AI 综合推理）

**管理命令**：
```bash
# 查看状态
hindsight-embed -p hermes daemon status

# 启动/停止
hindsight-embed -p hermes daemon start
hindsight-embed -p hermes daemon stop

# 查看日志
hindsight-embed -p hermes daemon logs

# 启动 Web UI
hindsight-embed -p hermes ui start
```

---

## Xiaomi MiMo 模型

- 配置位置：`plugins/model-providers/xiaomi/__init__.py`
- 用途：作为 Hermes 的模型 provider
- 环境变量：`XIAOMI_API_KEY`

## 飞书 Gateway

- 用途：通过飞书与 Hermes 交互
- 配置方式：参见 [Hermes 飞书文档](https://hermes-agent.nousresearch.com/docs/user-guide/messaging/)

---

*每次安装新插件或做额外配置，请记录到这里。*
