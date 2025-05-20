#!/bin/bash

echo "🔧 正在全局安装 commitizen 和 git-cz ..."
npm install -g commitizen git-cz

echo "✅ 安装完成！"

# 设置全局 czrc 文件
CZRC_PATH="$HOME/.czrc"

echo "📝 写入全局配置到 $CZRC_PATH ..."

cat << EOF > "$CZRC_PATH"
{
  "path": "git-cz",
  "useEmoji": true
}
EOF

echo "✅ 全局 Commitizen 配置完成！"
echo "🎉 现在你可以在任何项目里使用 'cz' 命令进行 emoji 提交了！"
echo ""
echo "📌 示例："
echo "    cz"

