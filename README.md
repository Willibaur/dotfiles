# dotfiles

This is a guide for setting environment and dotfiles for a machine using Arch Linux (Antergos).

## Web Development packages

-   [ ] atom
-   [ ] docker
-   [ ] dropbox
-   [ ] firefox-developer-edition
-   [ ] eslint
-   [ ] flameshot
-   [ ] gimp
-   [ ] heroku-cli
-   [ ] inkscape
-   [ ] keepassxc
-   [ ] libreoffice
-   [ ] mysql-clients
-   [ ] mysql-workbench
-   [ ] nginx
-   [ ] ngrok
-   [ ] oh-my-zsh
-   [ ] peek
-   [ ] pencil
-   [ ] slack
-   [ ] tidy-html5
-   [ ] tig
-   [ ] tmux
-   [ ] vim
-   [ ] yarn
-   [ ] zsh
-   [ ] zsh-autosuggestions
-   [ ] zsh-syntax-highlighting


### Display manager

Change default Display Manager DM from lightdm to gdm

```sh
sudo systemctl disable lightdm
pacman -S gdm
sudo systemctl enable gdm
```


### zsh

Change you shell to **zsh** by default.

```sh
chsh -s `which zsh`
```


### Git

Create **ssh** key for [Github](https://github.com/Willibaur) and set global configuration.

```sh
ssh-keygen -t rsa -b 4096 -C "user@mail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
git config --global user.name "username"
git config --global user.email "user@mail.com"
git config --global core.editor vim
git config --global core.excludesfile ~/.gitignore_global
git config --global push.default current

```


### asdf

**asdf** is Version Package Manager to unify all your languages versions in one place, please double check which is the latest version [here](https://github.com/asdf-vm/asdf).

```sh
git clone git@github.com:asdf-vm/asdf.git ~/.asdf --branch v0.4.2
```

Now you will need to install plugins required as per your need, **Ruby** and **NodeJS** will be installed now

```sh
asdf plugin-add ruby
asdf plugin-add nodejs
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
```


# Dotfiles

Now you have access to your Github account, so you can clone this **dotfiles** repository.

```sh
git clone git@github.com:Willibaur/dotfiles.git ~/dotfiles
```


## .zshrc

```sh
rm -rf  ~/.zshrc
ln -fsn ~/dotfiles/.zshrc ~/.zshrc
```


## .tmux and .tmuxinator

```sh
ln -fsn ~/dotfiles/.tmux.conf  ~/.tmux.conf
ln -fsn ~/dotfiles/tmuxinator ~/.tmuxinator
```


## .gitignore_global

```sh
ln -fsn ~/dotfiles/.gitignore_global ~/.gitignore_global
```


## .asdf

```sh
ln -fsn ~/dotfiles/asdf/.default-gems ~/.default-gems
ln -fsn ~/dotfiles/asdf/.asdfrc ~/.asdfrc
```


## Gnome extensions

```sh
ln -fsn ~/dotfiles/gnome/gnome_shell_extensions_conf.txt ~/gnome_shell_extensions_conf.txt
ln -fsn ~/dotfiles/gnome/gnome_shell_extensions_id.txt ~/gnome_shell_extensions_id.txt
```


# Ruby

If you want to install ruby versions do:

```sh
asdf install ruby 2.5.0
```


### Known Ruby 2.3.X installation issues

Ruby 2.3.X versions have known issues when installing in Arch due to openssl issues, 2.3.x
versions do not support it only 2.4.X versions do that.

For a clean and successfull installation, execute the following:

```sh
CC=gcc PKG_CONFIG_PATH=/usr/lib/openssl-1.0/pkgconfig RUBY_EXTRA_CONFIGURE_OPTIONS="--with-openssl-dir=/usr/lib/openssl-1.0" asdf install ruby 2.3.X
```


# Docker

With docker you can have a clean and isolated installation of different packages in you machine,
by doing this you don't pollute your whole system, in this particular case you will install
**mysql** and **redis**.


## Setting up docker

To avoid having to introduce **sudo** password every time you execute a docker command, add
yourself as a user in the docker group

```sh
sudo groupadd docker
sudo gpasswd -a $USER docker
newgrp docker
```

Now you can enable **docker service**

```sh
docker ps
systemctl enable docker
systemctl start docker
systemctl status docker
```

If everything is OK now you should have a message in your terminal saying that docker service is
**up** and **running** in your machine.


## mysql

You can create a directory dedicated to store your local databases.

```sh
mkdir ~/container-volumes
```

Install **mysql** dokcker image and instruct it to use your **container-volumes** directory to be
used to store your data.

```sh
docker run -d --name mysql -p 3306:3306 -e MYSQL_ALLOW_EMPTY_PASSWORD=yes -v /home/USERNAME/container-volumes/mysql/datadir:/var/lib/mysql mysql:5.6
```

Docker will complain about your **sql-client**, so you need to install **mysql-client** which will
connect your host to the mysql container, in many ocassions you will be presented with different
options to be used as a client, you can select **mariadb-clients**.

```sh
pacman -S mysql-clients
```


## Redis

Redis is another Docker image for dealing with queue tasks.

```sh
docker run -d --name redis -p 6379:6379 redis
```
