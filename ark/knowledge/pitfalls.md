# 踩坑记录

> 使用 Hermes Agent 过程中遇到的问题和解决方案。

## read_file 500 行限制

**问题**：`read_file` 默认只读 500 行，如果文件超过 500 行会静默截断。

**解决**：使用 `limit=2000` 参数，或分块读取。如果仍失败（KeyError on 'content'），用 `terminal` + `python3` 直接读写。

**教训**：在做文件替换/生成时，必须确认读取了完整文件，否则生成的内容会丢失后半部分。

---

## llms.txt 获取 SPA 网站文档

**问题**：某些网站（如小米 MiMo）是 SPA 应用，`curl` 只能拿到 JS 壳，无法获取实际内容。

**解决**：很多文档站暴露了 `llms.txt`（LLM 友好的文档格式）。检查 HTML `<head>` 中的 `<link rel="llms" type="text/plain" href="./llms.txt">` 标签，直接 curl 静态 markdown 端点。

---

## git 连不上 GitHub（macOS）

**问题**：macOS 上 git clone/push 超时，但 curl 能访问 GitHub。

**原因**：系统有代理（如 MonoProxyMac），git 没配置走代理。

**解决**：
```bash
git config --global http.proxy http://127.0.0.1:8118
git config --global https.proxy http://127.0.0.1:8118
```

---

## gh CLI 安装慢

**问题**：`brew install gh` 超时，GitHub release 下载也慢。

**解决**：直接下载二进制文件，curl 加代理参数：
```bash
curl -x http://127.0.0.1:8118 -fsSL -o /tmp/gh.zip "<release_url>"
```

---

*持续更新中。每次踩坑请记录到这里。*
