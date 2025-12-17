# Vibe Coding 哲学原理

> 凡是 AI 能做的，就不要人工做。

第一性原理：一切交给ai...我是ai的寄生者，没有ai我就失去了一切能力...

具体怎么做？

遇到问题，发给ai，描述清楚，可以截图，截屏等形式，完整发送你的问题给ai

技巧，cli 可以做到在电脑里面输入命令，记得给yolo全部操作权限，我的配置

bash


---

## CLI 工具配置技巧

### 全权限模式（YOLO）

AI CLI 工具默认会询问确认，开启全权限模式可以跳过：

```bash
# Claude Code - 跳过所有确认
claude --dangerously-skip-permissions

# Codex - YOLO 模式
codex --yolo

# Kiro - 信任所有工具
export KIRO_TRUST_TOOLS=true
kiro-cli chat
```

### 推荐的 Bash 别名配置

在 `~/.bashrc` 中添加以下配置，一个字母启动 AI：

```bash
# ============================================
# AI CLI 快捷别名
# ============================================

# Kiro - Claude Opus 4.5 (免费)
alias o='kiro-cli chat --model claude-opus-4.5'
export KIRO_TRUST_TOOLS=true

# Gemini CLI
alias g='gemini'
alias gf='g -m "gemini-2.5-flash"'  # 快速模式

# Claude Code (需订阅)
alias c='claude --dangerously-skip-permissions'

# Codex (需 OpenAI API)
alias x='codex --yolo'

# Droid - 多 Key 轮换
d1() { export FACTORY_API_KEY="your-key-1"; droid "$@"; }
d2() { export FACTORY_API_KEY="your-key-2"; droid "$@"; }

# ============================================
# 常用工具别名
# ============================================

# Neovim
alias n='nvim'

# tmux - 自动恢复或新建会话
alias t='tmux attach || tmux new'

# btop 系统监控
alias b='btop'
```

配置后执行 `source ~/.bashrc` 生效。

### 使用示例

```bash
# 一个字母启动 AI
o          # Kiro + Claude Opus 4.5
g          # Gemini CLI
c          # Claude Code (全权限)
x          # Codex (YOLO)

# 在项目目录启动
cd ~/projects/my-app
o          # 开始 Vibe Coding
```

---

## 工作流要点

### 1. Memory Bank 结构

每个项目建议创建：

```
project/
├── memory-bank/
│   ├── requirements.md      # 需求文档
│   ├── tech-stack.md        # 技术栈
│   ├── implementation.md    # 实施计划
│   ├── progress.md          # 进度记录
│   └── architecture.md      # 架构说明
├── CLAUDE.md                # AI 行为规则
└── src/
```

### 2. 提示词技巧

```
# 触发深度思考（Claude Code）
think < think hard < think harder < ultrathink

# 强调执行质量
"慢慢想，不着急，重要的是严格按我说的做"

# 明确边界
"只修改 xxx 文件，不要动其他文件"
```

### 3. 常用命令

| 命令 | 说明 |
|:---|:---|
| `/init` | 初始化项目规则 |
| `/clear` | 清空上下文 |
| `/compact` | 压缩历史保留摘要 |
| `/rewind` | 回滚到之前状态 |
| `shift+tab` | 切换 Plan Mode |

---

## 下一步

理解了哲学原理后，开始实操：

→ [01-网络环境配置](./01-网络环境配置.md)
