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

NetWork配置图


![dns](https://raw.githubusercontent.com/wangvps/v2op/main/png/Screenshot_2022-10-11-21-49-25-466_com.android.chrome.jpg)


### 使用github repo拉取构建并部署

此种方法是为了方便随时修改配置，northflank支持h2也就是grpc的端口映射，因此我们可以将其修改为grpc的传输模式

1. Fork [此项目](https://github.com/wangvps/v2op)

2. 修改在configure.sh中的默认配置(可以保持原样)

3. 与上述教程一样创建service,构建类型选择第一种，如图:

![service](https://raw.githubusercontent.com/wangvps/v2op/main/png/IMG_20221011_221546.jpg)


4. 配置NetWork,如图:

![network](https://raw.githubusercontent.com/wangvps/v2op/main/png/Screenshot_2022-10-11-18-28-12-325_com.android.chrome.jpg)

5. 部署成功后访问分配域名路径，查看是否有Bad Request字样，如出现，则部署成功

## 默认客户端配置

address:分配域名

port:443

uuid:2112b632-fb6c-4781-bb42-d4d310aa532f

NetWork:ws

Host:分配域名

路径:/laowang

tls:Done

顺便说一句,northflank给予用户免费配额的service的权限也很大

所以不要随意滥用，且用且珍惜，可以参考heroku的经历，heroku决定11月末取消免费配额，强如heroku都取消了免费配额，滥用程度可见一斑，珍惜吧，northflank没有那么雄厚的资本。





