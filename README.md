# conkyrc

A configuration for conky with Lua syntax(new syntax in 1.10 and later versions).

## 来源丨Source

魔改自：[https://github.com/9527tech/conkyrc](https://github.com/9527tech/conkyrc "https://github.com/9527tech/conkyrc")

---
Modify from:
[https://github.com/9527tech/conkyrc](https://github.com/9527tech/conkyrc "https://github.com/9527tech/conkyrc")

## 使用丨Usage

以 `Arch Linux` 为例

- 安装 `aur/conky-lua 1.10.6-1` 或 `aur/conky-lua-nv 1.10.8-1`

- `git clone https://github.com/milkysilk/conkyrc.git`

- `cd conkyrc`

- `./install.sh`

现在，你可以在终端运行使用 `source ~/.xprofile` 或重新登录桌面环境来展示这个conky样式，如下图所示

---
Take `Arch Linux` as an example

- install `aur/conky-lua 1.10.6-1` 或 `aur/conky-lua-nv 1.10.8-1`

- `git clone https://github.com/milkysilk/conkyrc.git`

- `cd conkyrc`

- `./install.sh`

Now, you can run `source ～/.xprofile` in terminal or re-login desktop environment to display this conky style as shown in the following screenshot

## 截图丨Screenshot

![Screenshot_from_2018-09-03_12-54-33.png](https://raw.githubusercontent.com/milkysilk/conkyrc/master/Screenshot/Screenshot_from_2018-09-03_12-54-33.png "Screenshot_from_2018-09-03_12-54-33.png")

## 局限丨Limit

在此环境下测试（正常运行）：

Test under this environment(run normally):

```shell
OS: Arch Linux x86_64
Host: HP Pavilion Notebook
Kernel: 4.18.5-arch1-1-ARCH
Packages: 1023 (pacman)
Shell: zsh 5.5.1
Resolution: 1920x1080
DE: GNOME 3.28.3
WM: GNOME Shell
CPU: Intel i5-6300HQ (4) @ 3.200GHz
GPU: Intel HD Graphics 530
GPU: NVIDIA GeForce GTX 960M
Memory: 3282MiB / 7870MiB
```

四线程CPU的机子应该没问题，嗯，，，

Four thread CPU computer should be OK, hum...