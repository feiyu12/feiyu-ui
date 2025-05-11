# 确保脚本抛出遇到的错误
###
 # @FileDescription: 
 # @Author: czh
 # @Date: 2025-04-30 14:00:19
 # @LastEditors: czh
 # @LastEditTime: 2025-05-11 15:05:00
 # @FilePath: \feiyu-ui\deploy.sh
### 
set -e

# 生成静态文件
npm run docs:build

# 进入生成的文件夹
cd docs/.vitepress/dist

git init
git add -A
git commit -m 'deploy'

# 如果发布到 https://<USERNAME>.github.io/<REPO>
git push -f https://github.com/feiyu12/feiyu-ui.git master:gh-pages

cd -
