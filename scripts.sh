###
 # @Author: clingxin
 # @Date: 2021-05-12 10:16:59
 # @LastEditors: clingxin
 # @LastEditTime: 2021-05-12 10:17:54
 # @FilePath: /docker-vscode/scripts.sh
###
#pull and run redis in container
docker run -itd --name myredis -p 6379:6379 redis
#check the port in host usage for redis
lsof -i tcp:6379