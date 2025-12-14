# 🔌 外部集成模块 (External)

存放第三方工具、外部依赖和集成模块。

## 目录结构

```
external/
├── prompts-library/              # 提示词库管理工具（Excel ↔ MD 互转）
├── my-nvim/                      # Neovim 配置
└── XHS-image-to-PDF-conversion/  # 小红书图片转 PDF
```

## 工具说明

| 工具 | 用途 | 使用方法 |
|------|------|----------|
| `prompts-library` | 提示词 Excel/MD 互转 | `python main.py` |
| `my-nvim` | Neovim 配置 | 复制到 `~/.config/nvim` |
| `XHS-image-to-PDF-conversion` | 图片合并 PDF | `python pdf.py` |

## 新增外部工具

```bash
mkdir -p libs/external/工具名
echo "# 工具说明" > libs/external/工具名/README.md
```

新增时请注明来源、许可证和依赖。
