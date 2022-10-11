# 如何在容器中部署v2ray+ws+tls(Docker)

## 关于项目

本教程基于项目[v2ray-openshift](https://github.com/bclswl0827/v2ray-openshift)，仅供参考。而且一般的容器厂商不允许搭建任何代理程序,此种行为属于滥用行为，如损失任何个人 利益，后果自负，本教程不负任何责任

## 部署方法

### 使用Docker直接部署

我们使用[northflank](https://northflank.com)来演示部署过程。

1. 打开[northflank](https://northflank.com)门户并注册账 号

2. 点击加号，选择新建"service",选择"Free project",并选择地区

3. 在部署类型中选择第三个，并在拉取项目中输入

```vb
dokcer.io/wxr666/v2ray-openshift:latest
```
4. 打开network界面，并设置端口映射为

```shell
   port:6899
   protocol :http
```

并将网络端口公布与公网上

[test]: ./png/





