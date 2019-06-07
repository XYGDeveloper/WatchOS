# WatchOS developer

APPLEWATCH背景

前言

苹果从2014年推出AppleWatch设备至今已经三个年头，笔者作为国内第一批AppleWatch的用户（购买的是2014年3月份预定的第一代苹果手表）以及第一批WatchOS系统开发人员（2014年五年开发第一款AppWatch应用），最近重新系统整理了WatchOS系统的技术大纲，特此写一个WatchOS系统系列文章分享一下。

本系列主要以WatchOS4.0系统为准（预计在2017年9月份发布），也会穿插一些从WatchOS1.0时代到4.0之间的一些变化。

1.1 简介

1.1.1 什么是AppWatch？

Apple Watch 是苹果公司于2014年9月公布的一款智能手表 。
有Apple Watch、Apple Watch Sport 和Apple Watch Edition 三种风格不同的系列。
目前系列非常多，但是主要区别在于表带（运动塑胶，帆布，金属，皮革，黄金等）

AppWatch手表至今已经发布两代硬件，第一代叫做AppWatch，第二代叫做Watch Series。
Apple Watch 采用人造蓝宝石水晶屏幕与Force Touch触摸技术，有多种颜色可供选择。
1.2 AppWatch功能

1.2.1 官方介绍

苹果官方的简短视频介绍 http://www.apple.com/cn/watch/more-to-love/
苹果的营销部分介绍AppWatch的功能更加的专业。

苹果官方的网页介绍 http://www.apple.com/cn/watch/
1.2.2 主要功能简介

Apple Watch拥有各种各样的个性化表盘，令你随心改变、自定义的设置。在自定义的表盘上，可以增加天气、下一个活动等实用信息。可以显示用户的心跳信息。Apple Watch与iPhone 配合使用，同全球标准时间的误差不超过 50 毫秒。
收到通知时，Taptic Engine 立刻就会通过 Tap来提醒你。
Apple Watch可以通过 Digital Touch 向其他 Apple Watch 用户发送 Sketch、Tap和心跳等。
WatchKit：WatchKit SDK 让开发人员能为Apple Watch 量身打造出全新的各种App体验。
手表内置UBER。并且手表可以直接解锁房间门，Passbook作为登机牌，可以远程看视频、图像等。
中国应用：微信、微博、支付宝、美拍、携程等，不过适配Apple Watch 之一的支付宝钱包仅保留了余额宝、付款码、汇率换算三个功能。而其他应用也将相应去繁为简，只保留更为适合穿戴设备的功能。

