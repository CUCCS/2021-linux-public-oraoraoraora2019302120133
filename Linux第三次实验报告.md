### Linux第三次实验报告

#### 实验目的

熟悉asciinema如何使用

#### 实验环境

cmd、vituralbox（ubuntu 20.04）、asciinema

#### 实验内容

确保本地已经完成**asciinema auth**，并在asciinema成功关联了本地账号和在线账号

上传本人亲自动手完成的**vimtutor**操作全程录像

在自己的github仓库上新建markdown格式纯文本文件附上asciinema的分享URL

**提醒** 避免在终端操作录像过程中暴漏**密码、个人隐私**等任何机密数据

#### 实验步骤

1.首先是用cmd远程链接虚拟机

在cmd中输入

```cmd
ssh frog@192.168.56.103
```

输入密码以后成功远程登录

2.在cmd中输入

```
asciinema auth
```

3.开始做实验

#### 实验结果

命令篇

[3](https://asciinema.org/a/408394
))

[4-1](https://asciinema.org/a/409555)

[4-2](https://asciinema.org/a/409556)

[4-3、4-4](https://asciinema.org/a/409558)

[5](https://asciinema.org/a/409560)

[6](https://asciinema.org/a/409561)

[7](https://asciinema.org/a/409562)

实战篇

[1](https://asciinema.org/a/409563)

[2](https://asciinema.org/a/409564)

[3](https://asciinema.org/a/409565)

[4](https://asciinema.org/a/409566)

[56789](https://asciinema.org/a/409567)

#### 实验中遇到的问题与解决方法

1.当我用命令提示符远程登录虚拟机时，显示超时

```cmd
ssh frog@192.168.56.103
```

> 发现是执行之前的命令时把虚拟机自己关了，所以再把虚拟机打开再次链接即可
