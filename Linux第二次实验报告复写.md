### Linux第二次实验报告

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

在gitbash中输入

```cmd
ssh frog@192.168.56.103
```

输入密码以后成功远程登录

2.打开asciinema并登录后

打开installation，复制ubuntu的代码

```ubuntu
sudo apt-add-repository ppa:zanchey/asciinema
sudo apt-get update
sudo apt-get install asciinema
```

3.打开gitbash 

输入

```cmd
apt policy asciinema
```

4.输入

```
asciinema auth
```

错误显示“command ‘asciinema’ not found“

再次输入

```cmd
sudo apt install asciinema
```

在输入密码后成功得到下载界面

[下载界面](https://asciinema.org/connect/90990040-7468-494e-abd1-a4d19beca10e)

5.熟练运用asciinema rec、vimtutor、exit等命令

#### 实验结果

[第一节](https://asciinema.org/a/408327)

[第二节]( https://asciinema.org/a/408333
)

[第三节](  https://asciinema.org/a/408343

[第四节]( https://asciinema.org/a/408347)

[第五节](https://asciinema.org/a/408362
)

[第六节]( https://asciinema.org/a/408373
)

[第七节]( https://asciinema.org/a/408394
)

#### 实验中遇到的问题与解决方法

1.当我用命令提示符远程登录虚拟机时，输入代码时不停报错

```cmd
ssh frog@frog192.168.56.103
```

> Could not resolve hostname

发现时代码输错了，使用gitbash再次输入命令

```cmd
ssh frog@192.168.56.103
```

输入密码后成功登录