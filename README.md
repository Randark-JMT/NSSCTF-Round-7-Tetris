# NSSCTF Round#7 Tetris

套娃？不不不，不是俄罗斯套娃，而是俄罗斯方块

## 题目考点
- 基于`Rust`和`Webassembly`所编写的web小游戏
  
## 解题流程
[视频讲解 - Bilibili](https://www.bilibili.com/video/BV1Ps4y1x7gw/)

本题有两种解题思路：

1. 通过`Cheat Engine`这类内存修改工具，定位储存游戏分数的变量，直接改分
2. 直接扫描内存中的字符串，即可得到flag
3. 对`wasm`程序中判断游戏胜利的条件进行patch


## 参考资料
- [xuu / wasm-tetris 原项目](https://github.com/xuu/wasm-tetris)
- [rustwasm / wasm-pack 项目技术栈](https://github.com/rustwasm/wasm-pack/)
- [anvie / litcrypt.rs 加密静态字符串的Rust宏](https://github.com/anvie/litcrypt.rs)

## 环境部署
项目已给出`Dockerfile`，直接执行`docker build`即可构建镜像。

本项目支持动态flag(`$FLAG`传入)，部署容器可使用`CTFd`，或参考`./docker/docker-compose.yml`