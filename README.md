# 启航电商OMS系统

## 一、项目概述

启航电商OMS系统是一套为中小电商企业构建的一套简单实用的电商系统，本项目采用前后端分离方式，后端采用Java SpringBoot Duboo微服务架构开发，前端采用Vue3+ts开发。

启航电商OMS系支持是自有仓库发货和供应商一件代发两种发货方式。主体功能包括：供应商管理、网店商品管理（库存同步）、网店订单管理、订单发货（仓库发货、供应商发货）等，基本上覆盖了电商网店管理日常业务，适合轻量级管理。


支持几乎所有流行第三方电商平台订单、售后、发货等接口对接，包括：淘宝、京东、拼多多、抖店、快手小店、小红书等。


## 二、技术框架
### 2.1 主体框架
+ Java 17
+ SpringBoot3.x
+ Dubbo3.x
+ Seata

### 2.2 中间件
+ Nacos2.2.0
+ Redis7.0.4
+ MySql8.x
+ Minio

### 2.3 前端
+ vue3
+ element-plus
+ ts

## 三、项目结构
+ `vue3`：前端web项目，端口3000，采用vue3+ts+element-plus开发
+ `api`：后端api接口项目，端口8080
+ `service`：公共service接口项目
+ `service-sys`：系统相关dubbo service，包括用户、权限、菜单等
+ `service-goods`：商品相关dubbo service
+ `service-shop`：店铺相关dubbo service
+ `service-sale`：销售相关dubbo service
+ `service-tao`：淘宝接口相关dubbo service
+ `service-pdd`：拼多多接口相关dubbo service
+ `service-dou`：抖店接口相关dubbo service



## 欢迎交流



💖 如果觉得有用记得点 Star⭐


欢迎一起交流！



## 捐献作者
作者为兼职做开源,平时还需要工作,如果帮到了您可以请作者吃个盒饭(目前还希望接收大家的捐献可以搭建一个演示环境！)


<img src="./weixinzhifu.jpg" width="300px" />
<img src="./zhifubao.jpg" width="300px" />
