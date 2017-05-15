# Hexo-Blog-Creator
## 使用方法：
运行src下的setup脚本，你有可能需要设置权限：在Linux、Unix上：

```bash
  sudo chmod 775 setup.sh
```

Follow脚本的步骤设置必要参数就可以了。因为本作使用了hexo和next，可以根据他们对应的配置页进行深入配置。链接在下面

## blog命令：
需要同样设置src文件夹下的blog文件775权限，然后把它配置到系统命令中去。
这样就可以通过terminal快速开始写博客和发布了。
blog的主要功能：

```bash
blog命令可以快速创建并发布博客。命令格式:
------------------------------
usage: blog [-c] [-d] [-g] [-n <blog_title>] [-s]
------------------------------

解释一下用法：
blog -c 清除工作区已经构建的页面
blog -d 将博客部署到服务器
blog -g 在本地工作区构建页面
blog -h 显示帮助文档
blog -n <blog_title> 创建一个新的博客markdown文件，文件名中不支持空格^_^，并打开
blog -o 打开所有博客所在文件夹
blog -s 在本地运行服务器，验证本地构建
```

## 版权声明：
本作品主要使用了Hexo神器和next主题，主要就是在这之上做了一个简化脚本。
大家可以任意传播，自由使用和修改。
Hexo 主页：https://hexo.io/docs/configuration.html
next 主页：http://theme-next.iissnan.com/getting-started.html
