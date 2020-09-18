# 实现
 使用docker-compose 部署nodejs + mysql项目
### Koa2-blog （原项目地址）
https://github.com/wclimb/Koa2-blog

### docker-compose简介
负责对docker容器集群的快速编排
![dockerCompose](https://github.com/lydiafork/koa-blog/raw/master/images/WechatIMG81.jpeg)

### 项目框架
![架构](https://github.com/lydiafork/koa-blog/raw/master/images/WechatIMG82.jpeg)

### 坑点记录
1. web容器 exited with code 0

Container Support
With the drop-in replacement command for node, called pm2-runtime, run your Node.js application in a hardened production environment. Using it is seamless:
```
RUN npm install pm2 -g
CMD [ "pm2-runtime", "npm", "--", "start" ]
```
