#!/usr/bin/env bash

# 激活虚拟环境，兼容Windows和Linux/Mac环境
if [ -f ".venv/Scripts/activate" ]; then
    # Windows环境
    . .venv/Scripts/activate
elif [ -f ".venv/bin/activate" ]; then
    # Linux/Mac环境
    . .venv/bin/activate
else
    echo "⚠️  无法找到虚拟环境激活脚本，尝试直接运行"
fi

# 使用pip安装依赖
if pip install .; then
    echo "✅  依赖安装成功"
else
    echo "⚠️  依赖安装失败，尝试继续运行"
fi

# 运行Python服务器
python server.py
