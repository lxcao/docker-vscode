###
 # @Author: clingxin
 # @Date: 2021-05-12 10:16:59
 # @LastEditors: clingxin
 # @LastEditTime: 2021-05-12 17:26:28
 # @FilePath: /docker-vscode/scripts.sh
###
#pull and run redis in container
docker run -itd --name myredis -p 6379:6379 redis
#check the port in host usage for redis
lsof -i tcp:6379
#in vscode debug, select python FastAPI, create FastAPI launch.json
#in command palette, select docker Add Docker file to workspace, select python FASTAPI, and following configure
#then vscode will generate the Dockfile, requirementstxt, .dockignore and tasks.json in .vscode folder
#in command palette, select docker Add Docker compose to workspace
# add service redis in docker-compose.yml, set REDIS_HOST to redis
#this redis container only used by this app, not mapping port to outside.
#we can add it later
