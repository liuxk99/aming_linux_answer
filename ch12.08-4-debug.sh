#!/bin/bash
# (4) 为了更好地调试 shell 脚本，我们可以加哪个选项来观察 shell 脚本的执行过程？

set -x       # 启用调试模式
echo "foo"
set +x       # 禁用调试模式

echo "bar"