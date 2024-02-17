# 使用官方的Ubuntu镜像作为基础镜像
FROM ubuntu:latest

# 更新Ubuntu的软件源
RUN apt-get update

# 安装supervisor
RUN apt-get install -y supervisor

# 创建supervisor配置文件目录
RUN mkdir -p /var/log/supervisor

# 复制supervisord.conf文件到容器（在Dockerfile同级目录下）
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# 当容器启动时，运行supervisord
CMD ["/usr/bin/supervisord"]
