#! /bin/bash

read -p "大爷，感谢使用这个脚本，为了能运行这个脚本我需要npm,请问你有吗？(y or n)：" has_npm

if [ $has_npm == "n" ]
then
    read -p "我需要homebrew，你有吗？(y or n)" has_brew
    if [ $has_brew == "y" ]
    then
        brew install node
    else
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    fi
fi

if [ $? -eq 1 ]
then
    echo "出错了，爷。。。byebye"
    exit 1
fi

#安装hexo：
npm install hexo-cli -g
read -p "来一个blog的安装路径？(求爷给个绝对路径，否则我傻逼了不负责)：" home_path
hexo init $home_path

#获得当前目录：
cd `dirname $0`
#安装next themes：
cp -rp ./next ${home_path}/themes/next

#安装预配置文件：
cp -f ./_config.yml ${home_path}/_config.yml
cp -rp ./about ${home_path}/source/about
cp -rp ./categories ${home_path}/source/categories
cp -rp ./tags ${home_path}/source/tags

#修改blog命令参数：
sed -i.bak "s/HOME_PATH/${home_path//\//\\/}/g" blog

#安装全局搜索插件：
cd ${home_path}
npm install
npm install hexo-generator-searchdb --save
npm install hexo-deployer-git --save

cat << END
爷，基本搞定了，您还需要做以下事情：
1、修改_config.yml博客的名字、描述、作者名、头像等；
2、修改_config.yml的url和deploy下面的git地址；
3、如果您对博客的样子不满意，请自己对着网站摸……索：
hexo：https://hexo.io/docs/configuration.html
next：http://theme-next.iissnan.com/getting-started.html

4、我提供了一个快捷命令blog，你可以把他配到.bash_profile里，就可以愉快的玩耍啦！
祝爷愉快哦~~
END

