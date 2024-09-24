# SRIC-FMS
SRIC-files-management-system

-----

# 0.项目开发部署

## 0.1 项目配置

### 0.1.1 前端配置

此项目提供了线路切换功能

运行项目前 需在 /SRIC-FMS-web/src/main.ts 中 配置

```
const VLANurl = 虚拟局域网地址

const LANurl = 局域网地址

const NETurl = 公网地址
```

配置结束后 即可在系统中 进行线路切换

若不需要线路切换 可将对应的逻辑删除

还需在 /SRIC-FMS-web/vue.config.js 中配置前端端口

------

### 0.1.2 后端配置

后端需在 /SRIC-FMS-api/src/main/resporces/application.properties 中进行配置

```
server.port 配置后端 api 端口

spring.datasource.url 配置 mysql 的地址,端口与数据库名称

spring.datasource.username 配置 mysql 数据库访问用户名

spring.datasource.password 配置 mysql 数据库访问密码

spring.data.redis.host 配置 redis 地址

spring.data.redis.port 配置 redis 端口

spring.mail.host 配置邮箱服务

spring.mail.username 配置邮箱地址

spring.mail.password 配置邮箱服务的授权密码

filesPath 配置系统储存文件位置
```

> 注意 filesPath 的配置需要精确并确保磁盘空间足够 系统所操作的所有文件都会储存在这个位置

------

## 0.2 项目开发环境

建议的项目开发环境：

```
Node.js (需要npm下载器)

vsCode (便于前端代码编辑和查看)

intellij idea (后端java)

--|maven (引入到idea 用于依赖引入)

mysql

redis
```

> **注意**  请尽量选择兼容的软件版本或更新的版本

```
Node.js 20.17.0 (LTS)

mysql 8.0.36

JDK corretto-17.0.10
```

若无法运行项目 请尝试更换版本

------

### 0.2.1 前端环境

前端项目位于目录 /SRIC-FMS-web

在 /front 打开终端

在终端中输入

```

npm install

```

以下载必要的依赖

> 注意 你可以在 package.json 中查看本项目所使用的项目依赖

------

在终端中输入

```

npm run serve

```

以在本地开发环境运行项目

------

如果需要将项目编译,在终端中输入

```

npm run serve

```

待编译完成后,编译文件将会输出在 /SRIC-FMS-web/dist 目录中

------

### 0.2.2 后端环境

后端文件位于目录 /SRIC-FMS-api

使用 maven 更新 /SRIC-FMS-api/pom.xml 以更新项目依赖

配置 jdk 后 运行 /SRIC-FMS-api/src/main/java/com/spring/springboot/SpringbootApplication.java 以在开发环境启动服务

------

### 0.2.3 数据库支持

可以使用本地 或 在线数据库

创建数据库并运行查询 /SRIC-FMS-database/sric_fms.sql

数据库查询文件包含部分数据 适当删除和修改以正常使用

------
