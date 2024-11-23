# 使用 Node.js 基础镜像  
FROM node:alpine  

# 创建工作目录  
WORKDIR /app  

# 复制静态文件到容器中  
COPY . .  

# 安装 http-server  
RUN npm install -g http-server  

# 暴露 HTTP 端口  
EXPOSE 80  

# 启动 http-server  
CMD ["http-server", "-p", "8080", "-o"]
