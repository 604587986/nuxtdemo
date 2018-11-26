  echo "拉取最新的代码..."  
  git pull origin master
  echo -e "\033[32m代码拉取完成...\033[0m"

  echo "开始部署..."
  rm -rf node_modules
  echo "开始安装项目依赖..."
   npm install
   npm run build
  echo -e "\033[32m文件build完成\033[0m"
  # 启动
  echo "开始重新启动..."
  pm2 delete nuxtdemo
  pm2 start npm --name "nuxtdemo" -- run start
  echo -e "\033[32m部署完成！\033[0m"