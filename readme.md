如题。
最近AI画画似乎非常火的样子，因此在这里搭建一个后端并提供一个lua脚本，可供使用。
请注意后端是非异步运行的，如果遇到绘画时间过长，可能是同时请求太多，可以尝试换个时间。
后端使用了理论上比较好的Anything V3.0模型，使用V100进行推理。
感谢国家超级计算广州中心天河·启明集群提供的算力支撑。
感谢 [@简律纯](https://forum.kokona.tech/u/HsiangNianian) 合作编写脚本。
这里只实现了最简单的功能，其余参数可以修改脚本调节，默认屏蔽R18。
请合理使用。
