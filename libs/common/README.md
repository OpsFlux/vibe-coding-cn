# 🔧 通用功能模块 (Common)

存放项目内部共享的通用代码，包括数据模型和工具函数。

## 目录结构

```
common/
├── __init__.py
├── models/          # 数据模型定义
│   └── __init__.py
└── utils/           # 工具函数
    └── backups/     # 备份工具
```

## 子模块

- `models/` - Pydantic 模型、数据类等
- `utils/` - 文件处理、格式转换等工具函数
- `utils/backups/` - 备份相关工具

## 使用

```python
from libs.common.models import YourModel
from libs.common.utils import your_function
```
