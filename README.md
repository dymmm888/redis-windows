
# 这是一个非官方版本的 Redis for Windows X64 系统

## 免责声明

由于windows和linux在功能上存在诸多差异，目前还存在未知的问题/bug，特别是在某些场景下存在无法正常工作的bug。如果您下载安装，则默认接受以下协议：

不承担损害赔偿责任

在任何情况下，本软件的作者均不对因使用或无法使用而引起的任何损害（包括但不限于业务利润损失、业务中断、业务信息丢失或任何其他金钱损失）承担责任使用本产品，即使本软件的作者已被告知此类损害的可能性。
  
## 支持的 Windows 版本

- Windows Vista x64
- Windows Server 2008 x64
- Windows Server 2012 x64
- Windows Server 2016/2019 x64  
- Windows 7 x64
- Windows 10/11 x64


## 默认配置

	save ""
	
	maxmemory 256mb
	
	appendonly no
	
	maxmemory-policy allkeys-lru

- 如果你想修改参数，建议你编辑 redis.conf 文件

## 将 Redis 作为服务运行

### 以管理员身份运行 install_redis.cmd

您还可以使用以下命令管理 redis 服务:


安装服务
------------------------

成功安装后，将显示成功消息并退出 Redis。

此命令不会启动服务。

安装命令:

sc create redis binPath="D:\redis\7.0.4\bin\redis-service.exe" start=auto

卸载服务
------------------------

这将从注册表中删除 Redis 服务配置信息。成功卸载后，将显示成功消息并退出 Redis。

该命令不停止服务。

卸载命令:

sc delete redis

启动服务
--------------------

这将启动 Redis 服务。成功启动后，将显示成功消息，Redis 将开始运行。

启动命令:

net start redis

停止服务
--------------------

这将停止 Redis 服务。成功终止后，将显示一条成功消息，并且 Redis 将退出。

停止命令:

net stop redis
