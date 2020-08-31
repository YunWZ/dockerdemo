# Docker image for springboot application
# VERSION 0.0.1
# Author: bolingcavalry

### 基础镜像，使用alpine操作系统，openjkd使用8u201
FROM docker.mirrors.ustc.edu.cn/library/openjdk:8u265-jdk-nanoserver-1809

MAINTAINER  YUNWZ <VERDGUN@GMAIL.COM>
#系统编码
#ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

#声明一个挂载点，容器内此路径会对应宿主机的某个文件夹
#VOLUME /tmp

WORKDIR c:\\app
#应用构建成功后的jar文件被复制到镜像内，名字也改成了app.jar
COPY target/dockerdemo-0.0.1-SNAPSHOT.jar c:/app/app.jar

#启动容器时的进程
#CMD ["java","-jar c:\\app.jar"]
ENTRYPOINT ["java", "-jar", "c:\\app\\app.jar"]
#暴露8080端口
EXPOSE 8080