# Sapi [![License](https://img.shields.io/:license-apache-blue.svg)](https://opensource.org/licenses/Apache-2.0) 

# Sapi项目介绍
  Sapi是一个集成了各种服务组件的框架，各种组件之间尽量做到相互独立，每个单独的模块直接有相应的配置项，建立子服务
的时候通过配置连接各个配置项进行项目集成。
# 框架设计思考
  在工作中，用过很多框架，很多语言的都有用过和自研过，在用go的微服务框架的时候，发现了很多问题，比如对于初学者学习
成本高，调用和整合相对复杂，对于业务的集成度很低，对于想快速开发的程序员或者初学者门槛比较高，不知道如何快速搭建
项目。我就想着为这些人集成常用业务组件封装成为微服务框架，大家要用的时候，直接只需要生成子服务，然后像常用web框架
一样，写业务代码，不要管其他组件的集成和实现，只需要调用api，完成业务功能。
# 实现了的功能
  * 注册服务
  * 配置服务
  * 集成了gin，grpc，（以后可以扩展更多的web框架和rpc框架）
  * 链路追踪（功能实现不全）
  * oauth2的客户端和服务端
  * 数据模型
  * 消息订阅与发布和延时队列
  * 生成子服务工具
# 框架愿景
  完善的后台管理，包含了资源中心，任务中心，配置中心，网关中心，监控中心，服务中心。
  * 资源中心：集成各种云服务接口和添加自建的云服务管理。
  * 任务中心：管理各种任务，定时任务，延迟任务等。
  * 配置中心：管理子服务的配置文件。
  * 网关中心： 管理api接口，进行限流，熔断等等管理。
  * 监控中心： 管理服务的所有状态。
  * 服务中心： 管理服务[上传，开启，卸载，停止]。
# 感谢
  非常感谢micro,jupiter,oauth2,oauth2-server等开发团队和优秀的开源项目，因为我借鉴了很多他们的优点以及相关代码。
# 微信进群讨论
  ![Sapi讨论小组.png](https://i.loli.net/2020/09/02/ZT7LbIriQzNPdoK.png)
## Quick Start
  查看cmd目录的hello子服务项目，其他样例可以查看example文件目录。
  1. 编译sapi工具
 ```shell
 go build cmd/sapi/sapi.go
 ```
     
  2.生成子服务项目:
   ```shell
  cmd/sapi/sapi -build=test -path=E:\GoWork\src\sapi\cmd
  ```
  (sapi一定要和sapi.cache同目录)
## License
  Sapi is Apache 2.0 licensed.