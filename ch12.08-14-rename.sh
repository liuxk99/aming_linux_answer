#!/bin/bash
# 编写一个 shell 脚本，在一个目录下的所有文件（不含目录）的文件名后面加“.bak”。

dir=/tmp/test.d
mkdir ${dir} -p; cd ${dir}
touch test{0..5}.txt
# 遍历当前目录下的所有文件
for file in *; do
    # 判断是否为文件
    if [ -f "$file" ]; then
        # 为文件名加上“.bak”
        mv "$file" "$file.bak"
    fi
done