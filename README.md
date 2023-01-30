# NSSCTF Round#7 Tetris

套娃？不不不，不是俄罗斯套娃，而是俄罗斯方块

## 题目考点
- 基于`Rust`和`Webassembly`所编写的web小游戏
  
## 解题流程


## 参考资料
- [xuu / wasm-tetris 原项目](https://github.com/xuu/wasm-tetris)

## 环境部署
项目已给出`Dockerfile`，直接执行`docker build`即可构建镜像。

本项目支持动态flag(`$FLAG`传入)，部署容器可使用`CTFd`，或参考`./docker/docker-compose.yml`