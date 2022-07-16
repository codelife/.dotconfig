## 安装brew

**建议更换镜像源方式**
```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
#如果慢使用以下方法
/bin/bash -c "$(curl -fsSL https://cdn.jsdelivr.net/gh/ineo6/homebrew-install/install.sh)"
```

更换为清华大学源
```
git -C "$(brew --repo)" remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git

git -C "$(brew --repo homebrew/core)" remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git

git -C "$(brew --repo homebrew/cask)" remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-cask.git

brew update
```

设置环境变量需要注意终端Shell的类型: 
```shell
echo $SHELL
chsh -s $(which zsh)
echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles/bottles' >> ~/.zshrc
source ~/.zshrc
```

## 安装iTerm2
```shell
brew install --cask iterm2
#install colorscheme for iterm2
git clone git@github.com:mbadolato/iTerm2-Color-Schemes.git
cd iTerm2-Color-Schemes && tools/import-scheme.sh schemes/*
```

## 调整shell为zsh
```
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

cd ~/.oh-my-zsh/
lib 提供了核心功能的脚本库

tools 提供安装、升级等功能的快捷工具

plugins 自带插件的存在放位置

templates 自带模板的存在放位置

themes  自带主题文件的存在放位置

custom 个性化配置目录，自安装的插件和主题可放这里

**设置shell的配置文件`~/.zshrc` 更改配置切勿修改～/.bashrc

## 自动更新zsh，不提示更新
```
echo "DISABLE_UPDATE_PROMPT=true" >> ~/.zshrc
echo 'HIST_STAMPS="yyyy-mm-dd"' >> ~/.zshrc
```

## install powerlevel10k
``` shell
git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

## install fig shell autocmpeletion
``` shell
brew install --cask fig
```

## install python
```shell
brew install python3
```

### 修改pip的源，加速
```
修改配置文件: ~/.pip/pip.conf
[global]
index-url = https://pypi.tuna.tsinghua.edu.cn/simple

[install]
trusted-host=mirrors.aliyun.com
```

## install python extends & neovim & tool

```shell
brew install ansible redis mysql@5.7 neovim docker git nginx coreutils lua luarocks
brew install Ack ripgrep wget ripgrep the_silver_searcher universal-ctags fzf thefuck autojump 
pip3 install virtualenv virtualenvwrapper pylint flake8 pyflakes black isort autopep8 ipython ipython-autoimport pynvim mccabe rich sqlfluff 
pip3 install glances ranger-fm typeshed pysnooper Fabric3 django-comment-migrate jsonpath
ipython profile create
mkdir ~/.virtualenvs
mkdir ~/Projects
```

## 添加python配置文件

```shell
cat << EOF >> ~/.zshrc 
export WORKON_HOME=~/.virtualenvs
export PROJECT_HOME=~/Projects
VIRTUALENVWRAPPER_PYTHON=/opt/homebrew/bin/python3
source /usr/local/bin/virtualenvwrapper.sh
alias vim="/opt/homebrew/bin/nvim"
alias python3="ipython"
EOF
```

## python 自动加载和丰富的颜色显示
ipython profile create 
然后把下面几行加到新生成profile文件中
```
c.InteractiveShellApp.exec_lines = []
c.InteractiveShellApp.exec_lines.append("try:\n    %load_ext ipython_autoimport\nexcept ImportError: pass")
c.InteractiveShellApp.exec_lines.append("%load_ext autoreload")
c.InteractiveShellApp.exec_lines.append("%autoreload 2")
c.InteractiveShellApp.exec_lines.append("from rich import pretty")
c.InteractiveShellApp.exec_lines.append("pretty.install()")
c.InteractiveShellApp.exec_lines.append("import json")
c.InteractiveShellApp.exec_lines.append("import arrow")
c.InteractiveShell.editor = 'vim'
```

## virtualenv usage

```shell
mkvirtualenv abc;
cpvirtualenv abc abc1; 
lsvirtualenv;  
lssitepackages
allvirtualenv pip3 install jedi
```

## 修改键盘按键映射
~/.config/karabiner/karabiner.json

## 安装nerd-font现实图标. 然后修改iterm中的字体non-ASCII text为nerd-font
```
brew tap homebrew/cask-fonts
brew search nerd-font
brew install --cask font-fira-code-nerd-font
brew install --cask font-victor-mono-nerd-font
brew install --cask font-iosevka-nerd-font-mono
brew install --cask font-hack-nerd-font
```

## 安装字体,更换iterm字体
```
Anonymous Pro 
Courier Prime 
Hack Nerd Font 
Hack Nerd Font Mono 
Inconsolata
Roboto Mono
```

## nodejs支持
```shell
brew install node
brew install npm
# npm加速
npm config set registry https://registry.npm.taobao.org
npm config set disturl https://npm.taobao.org/dist
npm install -g neovim
npm install --global prettier
npm install -g bash-language-server
npm install -g sql-formatter
npm install -g node-sql-parser
npm install -g webpack
npm install -g vue-cli
npm install -g htmlhint
npm install -g yarn
npm install -g eslint_d
npm i eslint eslint-plugin-vue -D
```
