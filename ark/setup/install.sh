#!/bin/bash
# ARK Design Workflow — Installer
# 将 ARK 工作流的技能安装到你的 Hermes Agent 中
#
# 前置条件：已安装 Hermes Agent
# 用法：bash ark/setup/install.sh

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ARK_DIR="$(dirname "$SCRIPT_DIR")"
HERMES_HOME="${HERMES_HOME:-$HOME/.hermes}"
SKILLS_DIR="$HERMES_HOME/skills"

echo "=== ARK Design Workflow Installer ==="
echo ""
echo "ARK 目录: $ARK_DIR"
echo "Hermes 目录: $HERMES_HOME"
echo ""

# Check Hermes is installed
if [ ! -d "$HERMES_HOME" ]; then
    echo "❌ 未找到 Hermes 目录: $HERMES_HOME"
    echo "请先安装 Hermes Agent: https://hermes-agent.nousresearch.com/docs"
    exit 1
fi

# Install skills
echo "📦 安装技能..."
if [ -d "$ARK_DIR/skills" ] && [ "$(ls -A "$ARK_DIR/skills" 2>/dev/null)" ]; then
    cp -r "$ARK_DIR/skills/"* "$SKILLS_DIR/" 2>/dev/null || true
    echo "   ✅ 技能已安装到 $SKILLS_DIR"
else
    echo "   ⏭️  暂无自定义技能"
fi

echo ""
echo "=== 安装完成 ==="
echo ""
echo "📖 开始使用: 阅读 ark/workflow/how-to-use.md"
echo "📚 完整文档: 阅读 ark/README.md"
