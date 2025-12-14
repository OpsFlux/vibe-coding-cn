# 💡 AI 提示词库 (Prompts Library)

`prompts/` 目录是本项目中 AI 提示词的核心资产，包含 **40+ 个**经过精心设计和分类的提示词，用于指导 AI 进行各种任务。

## 目录结构

```
prompts/
├── README.md                # 本文件
├── coding_prompts/          # 编程与代码生成相关提示词（40+ 个）
│   ├── index.md             # 提示词索引与版本矩阵
│   ├── plan提示词.md         # 实施计划生成
│   ├── 系统架构可视化生成Mermaid.md
│   ├── 项目上下文文档生成.md
│   └── ...
├── system_prompts/          # AI 系统级提示词（10 个版本）
│   └── CLAUDE.md/
│       ├── 1/ ~ 10/         # 不同版本的系统提示词
│       └── ...
└── user_prompts/            # 用户自定义提示词
    ├── ASCII图生成.md
    ├── 数据管道.md
    └── 项目变量与工具统一维护.md
```

## 各子目录详解

### `coding_prompts/` - 编程提示词集

| 类别 | 示例提示词 | 用途 |
|------|-----------|------|
| 项目规划 | `plan提示词.md` | 生成详细实施计划 |
| 架构设计 | `系统架构可视化生成Mermaid.md` | 架构分析与可视化 |
| 文档生成 | `项目上下文文档生成.md`、`精华技术文档生成提示词.md` | 自动生成项目文档 |
| 代码规范 | `标准项目目录结构.md`、`标准化流程.md` | 统一代码风格与结构 |
| 需求分析 | `智能需求理解与研发导航引擎.md` | 需求澄清与任务分解 |
| 深度思考 | `ultrathink` 系列 | 触发 AI 深度推理模式 |

**索引文件**: `index.md` 提供完整的提示词列表和快速跳转链接。

### `system_prompts/` - 系统级提示词

用于设定 AI 整体行为模式和思维框架，当前包含 **10 个版本**：

| 版本 | 特点 |
|------|------|
| v1 | 开发者行为准则与工程规范 |
| v2 | ultrathink 模式与架构可视化规范 |
| v3 | 思维创作哲学与执行确认机制 |
| v4 | Linus 级工程师服务认知架构 |
| v5 | 顶级程序员思维框架与代码品味 |
| v6 | 综合版本，整合所有最佳实践 |
| v7 | 推理与规划智能体，专职复杂任务分解 |
| v8 | 最新综合版，顶级程序员服务 Linus 级工程师 |
| v9 | 简化版本（实验性） |
| v10 | 最新版，加入 Augment 上下文引擎规范 |

**推荐**: 新项目建议从 `v8` 或 `v10` 开始。

### `user_prompts/` - 用户自定义提示词

- `ASCII图生成.md` - 生成 ASCII 艺术图
- `数据管道.md` - 数据处理流程设计
- `项目变量与工具统一维护.md` - 项目配置管理

## 快速使用

```bash
# 查看某个提示词
cat prompts/coding_prompts/plan提示词.md

# 使用 v8 版本的系统提示词
cp prompts/system_prompts/CLAUDE.md/8/CLAUDE.md ./CLAUDE.md
```

## 相关资源

- [Google 表格提示词数据库](https://docs.google.com/spreadsheets/d/1ngoQOhJqdguwNAilCl1joNwTje7FWWN9WiI2bo5VhpU/edit?gid=2093180351#gid=2093180351&range=A1)
- [元提示词](https://docs.google.com/spreadsheets/d/1ngoQOhJqdguwNAilCl1joNwTje7FWWN9WiI2bo5VhpU/edit?gid=1770874220#gid=1770874220)
- [系统提示词收集仓库](https://github.com/x1xhlol/system-prompts-and-models-of-ai-tools)
- [Skills 生成器](https://github.com/yusufkaraaslan/Skill_Seekers)
