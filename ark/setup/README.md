# ARK 工作流安装说明

> 将 ARK 设计工作流安装到你的 Hermes Agent 中。

## 前置条件

1. **已安装 Hermes Agent**
   ```bash
   curl -fsSL https://raw.githubusercontent.com/NousResearch/hermes-agent/main/scripts/install.sh | bash
   ```

2. **Hermes 可正常运行**
   ```bash
   hermes doctor
   ```

## 安装 ARK

```bash
git clone https://github.com/oskardu/Hermes_ARK.git
cd Hermes_ARK
bash ark/setup/install.sh
```

## 安装脚本做了什么

1. 将 `ark/skills/` 中的技能复制到 `~/.hermes/skills/`
2. 创建 ARK 工作流的配置提示（不覆盖你现有的 config）
3. 验证安装是否成功

## 安装后

你可以：
- 阅读 [workflow/how-to-use.md](../workflow/how-to-use.md) 开始使用
- 查看 [workflow/examples/](../workflow/examples/) 看实际案例
