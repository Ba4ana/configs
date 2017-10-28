## Menu
* [PPA](#ppa-)  

    * [Gnome Shell](#gnome-shell-)
    * [Telegram](#telegram-) ![Gnome](https://extensions.gnome.org/static/images/favicon.b73b0c0e30d2.png)
    * [numix-gtk-theme](#numix-gtk-theme-)
    * [Cinnamon](#cinnamon-)
    * [Indicator](#indicator-)
    * [grub customizer](#grub-customizer-) ![Gnome](https://extensions.gnome.org/static/images/favicon.b73b0c0e30d2.png)
    * [Oracle Java](#oracle-java-) ![Gnome](https://extensions.gnome.org/static/images/favicon.b73b0c0e30d2.png)
    * [OBS-Studio](#obs-studio-) ![Gnome](https://extensions.gnome.org/static/images/favicon.b73b0c0e30d2.png)
* [APPS](#apps-)

    * [All Applications for Gnome In Line](#all-applications-for-gnome-in-line-)
    * [All Applications In Line](#all-applications-in-line-)
    * [Sublime Text 3](#sublime-text-3-) ![Gnome](https://extensions.gnome.org/static/images/favicon.b73b0c0e30d2.png)
    * [Nvidia Drivers](#nvidia-drivers-) ![Gnome](https://extensions.gnome.org/static/images/favicon.b73b0c0e30d2.png)
    * [NVM (Node.js)](#nvm-nodejs-) ![Gnome](https://extensions.gnome.org/static/images/favicon.b73b0c0e30d2.png)
    * [NPM applications](#npm-applications-) ![Gnome](https://extensions.gnome.org/static/images/favicon.b73b0c0e30d2.png)
    * [Jekyll](#jekyll-) ![Gnome](https://extensions.gnome.org/static/images/favicon.b73b0c0e30d2.png)
    * [Python 3.6](#python-36-) ![Gnome](https://extensions.gnome.org/static/images/favicon.b73b0c0e30d2.png)
    * [Docker](#docker-) ![Gnome](https://extensions.gnome.org/static/images/favicon.b73b0c0e30d2.png)
* [SETTINGS](#settings-)

    * [Git](#git-) ![Gnome](https://extensions.gnome.org/static/images/favicon.b73b0c0e30d2.png)
    * [Samba add local user](#samba-add-local-user-) ![Gnome](https://extensions.gnome.org/static/images/favicon.b73b0c0e30d2.png)
    * [on NumLock](#on-numlock-)
    * [Add windows-1251 encoding](#add-windows-1251-encoding-) ![Gnome](https://extensions.gnome.org/static/images/favicon.b73b0c0e30d2.png)
    * [NVM (Node.js) Settings](#nvm-nodejs-settings-) ![Gnome](https://extensions.gnome.org/static/images/favicon.b73b0c0e30d2.png)
    * [Add bash aliases](#add-bash-aliases-)
    * [Linux desktop managers](#linux-desktop-managers-)
    * [Plymouth theme](#plymouth-theme-) ![Gnome](https://extensions.gnome.org/static/images/favicon.b73b0c0e30d2.png)
    * [Preload](#preload-) ![Gnome](https://extensions.gnome.org/static/images/favicon.b73b0c0e30d2.png)
* [LOCATIONS](#locations-)

    * [Telegram](#telegram--1) ![Gnome](https://extensions.gnome.org/static/images/favicon.b73b0c0e30d2.png)
    * [Gnome extensions](#gnome-extensions-) ![Gnome](https://extensions.gnome.org/static/images/favicon.b73b0c0e30d2.png)
    * [Variables of folders in /home (~)](#variables-of-folders-in-home--) ![Gnome](https://extensions.gnome.org/static/images/favicon.b73b0c0e30d2.png)
    * [Plymouth theme](#plymouth-theme-1-) ![Gnome](https://extensions.gnome.org/static/images/favicon.b73b0c0e30d2.png)
* [All Applications](#all-applications-)

* [CheckList](#checklist-)

## PPA [⇑](#menu)

#### [Gnome Shell](#gnome-shell-1) [⇑](#menu)
```bash
sudo add-apt-repository ppa:gnome3-team/gnome3 -y
```
#### [Telegram](#telegram-2) [⇑](#menu)
```bash
sudo add-apt-repository ppa:atareao/telegram -y
```
#### [numix-gtk-theme](#numix-gtk-theme-1) [⇑](#menu)
```bash
sudo add-apt-repository ppa:numix/ppa -y
```
#### [Cinnamon](#cinnamon-1) [⇑](#menu)
```bash
sudo add-apt-repository ppa:embrosyn/cinnamon -y
```
#### [Indicator](#indicator-1) [⇑](#menu)
```bash
sudo add-apt-repository ppa:indicator-multiload/stable-daily -y
```
#### [grub customizer](#grub-customizer-1) [⇑](#menu)
```bash
sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y
```
#### [Oracle Java](#oracle-java-1) [⇑](#menu)
```bash
sudo add-apt-repository ppa:webupd8team/java -y
```
#### [OBS-Studio](#obs-studio-1) [⇑](#menu)
```bash
sudo add-apt-repository ppa:obsproject/obs-studio -y
```

---
## APPS [⇑](#menu)

#### [All Applications for Gnome](#all-applications) in line [⇑](#menu)
```bash
sudo apt install git telegram chrome-gnome-shell numix-gtk-theme numix-icon-theme numix-icon-theme-circle gnome-alsamixer xclip grub-customizer dconf-editor curl vlc gimp preload ruby-full oracle-java8-installer filezilla chkrootkit rkhunter gparted rawtherapee stellarium screenfetch obs-studio gnome-tweak-tool gdebi
```

#### [All Applications](#all-applications) in line [⇑](#menu)
```bash
sudo apt install git telegram chrome-gnome-shell numix-gtk-theme numix-icon-theme numix-icon-theme-circle gnome-alsamixer xclip indicator-multiload grub-customizer dconf-editor curl vlc gimp numlockx preload ruby-full compizconfig-settings-manager oracle-java8-installer clementine filezilla chkrootkit rkhunter gparted rawtherapee stellarium screenfetch obs-studio unity-tweak-tool wallch gdebi
```

#### Sublime Text 3 [⇑](#menu)
[official site](https://www.sublimetext.com/docs/3/linux_repositories.html#apt)
```bash
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text
```

#### Nvidia Drivers [⇑](#menu) 
```bash
sudo apt install nvidia-current
```

#### NVM (Node.js) [⇑](#menu) 
[Settings](#nvm-nodejs-settings)
```bash
sudo curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
nvm install 8
```

#### NPM applications [⇑](#menu) 
```bash
npm i -g bower browser-sync mocha gulp forever jshint pug-cli less
```

#### Jekyll [⇑](#menu) 
```bash
sudo gem install jekyll bundler
```

#### Python 3.6 [⇑](#menu)
```bash
wget https://www.python.org/ftp/python/3.6.3/Python-3.6.3.tar.xz
tar xvf Python-3.6.3.tar.xz
cd Python-3.6.3/
./configure
sudo make altinstall
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.5 1
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 2
sudo update-alternatives --config python3
```

#### Docker [⇑](#menu) 
[Install](https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/#install-docker-ce)  
[non-root user](https://docs.docker.com/engine/installation/linux/linux-postinstall/#manage-docker-as-a-non-root-user)

---
## SETTINGS [⇑](#menu)

#### Git [⇑](#menu) 
[Solved] Permission denied (publickey).
```bash
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
xclip -sel clip < ~/.ssh/id_rsa.pub
```
`Adding a new SSH key to your Git account`

#### Samba add local user [⇑](#menu)
`sudo smbpasswd -a $USER`

#### on NumLock [⇑](#menu)
```bash
echo "greeter-setup-script=/usr/bin/numlockx on" | sudo tee /usr/share/lightdm/lightdm.conf.d/50-unity-greeter.conf
```

#### Add windows-1251 encoding [⇑](#menu) 
```bash
if [[ ! -n `grep 'windows-1251' ~/.profile` ]]; then echo 'export GST_ID3_TAG_ENCODING="windows-1251"' >> ~/.profile; fi
```
#### [NVM (Node.js)](#nvm-nodejs) Settings [⇑](#menu) 
```bash
nvm list
nvm use <номер>
nvm alias default node
remove

nvm deactivate <номер>
nvm uninstall <номер>
```
#### Add bash aliases [⇑](#menu)
`Bash script`
```bash
#!/bin/bash
fileName=~/.bashrc
searchString='bash_aliases'

writeInFile() {
    echo 'if [ -f ~/.bash_aliases ]; then' >> $fileName
    echo '. ~/.bash_aliases' >> $fileName
    echo 'fi' >> $fileName
    cat $fileName
}

if [ -a $fileName ]; then
    if [ ! -n "$(grep $searchString $fileName)" ]; then
        writeInFile
    fi
else
    touch $fileName
    writeInFile
fi
```
#### Linux desktop managers [⇑](#menu)
* GNOME3
```bash
sudo dpkg-reconfigure gdm
```
* Unity
```bash
sudo dpkg-reconfigure lightdm
```

#### Plymouth theme [⇑](#menu)
`/usr/share/plymouth`
```bash
sudo update-alternatives --config default.plymouth
sudo update-initramfs -u
```

#### Preload [⇑](#menu)
```bash
sudo touch /var/lib/preload/preload.state
sudo chmod 600 /var/lib/preload/preload.state
sudo /etc/init.d/preload restart
```
Если вы хотите отредактировать настройки Preload откройте его конфигурацию данной командой:  
`sudo gedit /etc/preload.conf`  
Если нужно посмотреть логи демона воспользуйтесь командой ниже:  
`sudo tail -f /var/log/preload.log`

---
## LOCATIONS [⇑](#menu)

#### Telegram [⇑](#menu)
`/opt/telegram/Telegram`

#### Gnome extensions [⇑](#menu) 
`~/.local/share/gnome-shell`

#### Variables of folders in /home (~) [⇑](#menu)
`~/.config/user-dirs.dirs`

#### Plymouth theme [⇑](#menu)
`/usr/share/plymouth`
```bash
sudo update-alternatives --config default.plymouth
sudo update-initramfs -u
```

---
## All Applications [⇑](#menu)


#### [Sublime Text 3](#sublime-text-3) [⇑](#menu)
```bash
sudo apt install sublime-text
```
#### Git [⇑](#menu)
```bash
sudo apt install git
```
#### [Telegram](#telegram) [⇑](#menu)
```bash
sudo apt install telegram
```
#### [Gnome Shell](#gnome-shell) [⇑](#menu)
```bash
sudo apt install chrome-gnome-shell
```
#### [numix-gtk-theme](#numix-gtk-theme) [⇑](#menu)
```bash
sudo apt install numix-gtk-theme numix-icon-theme numix-icon-theme-circle
```
#### Alsamixer [⇑](#menu)
```bash
sudo apt install gnome-alsamixer
```
#### Clipboard [⇑](#menu)
```bash
sudo apt install xclip
```
#### [Cinnamon](#cinnamon) [⇑](#menu)
```bash
sudo apt install cinnamon blueberry
```
#### [Indicator](#indicator) [⇑](#menu)
```bash
sudo apt install indicator-multiload
```
#### [grub customizer](#grub-customizer) [⇑](#menu)
```bash
sudo apt install grub-customizer
```
#### dconf-editor [⇑](#menu)
```bash
sudo apt install dconf-editor
```
#### cURL [⇑](#menu)
```bash
sudo apt install curl
```
#### NumLock [⇑](#menu)
```bash
sudo apt install numlockx
```
#### Preload [⇑](#menu)
```bash
sudo apt install preload
```
#### Ruby [⇑](#menu)
```bash
sudo apt install ruby-full
```
#### Jekyll [⇑](#menu)
```bash
sudo gem install jekyll bundler
```
#### Node.js [⇑](#menu)
```bash
sudo curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
nvm install <номер>
npm i -g bower browser-sync mocha gulp forever jshint
```
#### Gimp [⇑](#menu)
```bash
sudo apt install gimp
```
#### VLC [⇑](#menu)
```bash
sudo apt install vlc
```
#### ccsm [⇑](#menu)
```bash
sudo apt install compizconfig-settings-manager
```
#### [Oracle Java](#oracle-java) [⇑](#menu)
```bash
sudo apt install oracle-java8-installer
```
#### Clemantine Media Player [⇑](#menu)
```bash
sudo apt install clemantine
```
#### FileZilla FTP-client [⇑](#menu)
```bash
sudo apt install filezilla
```
#### [OBS-Studio](#obs-studio) [⇑](#menu)
```bash
sudo apt install obs-studio
```
#### Wallpaper Change [⇑](#menu)
```bash
sudo apt install wallch
```
#### Grub Repair [⇑](#menu)
```bash
sudo add-apt-repository ppa:yannubuntu/boot-repair
sudo apt update
sudo apt install -y boot-repair && boot-repair
```

---
## CheckList [⇑](#menu)

* [x] Автомонтирование дисков ![Gnome](https://extensions.gnome.org/static/images/favicon.b73b0c0e30d2.png)
* [x] Git ![Gnome](https://extensions.gnome.org/static/images/favicon.b73b0c0e30d2.png)
* [x] GitKraken ![Gnome](https://extensions.gnome.org/static/images/favicon.b73b0c0e30d2.png)
* [x] Nodejs ![Gnome](https://extensions.gnome.org/static/images/favicon.b73b0c0e30d2.png)
    * [x] bower 
    * [x] browser-sync 
    * [x] mocha 
    * [x] gulp 
    * [x] forever 
    * [x] jshint
    * [x] pug-cli
    * [x] less
* [x] SublimeText ![Gnome](https://extensions.gnome.org/static/images/favicon.b73b0c0e30d2.png)
* [x] Browser ![Gnome](https://extensions.gnome.org/static/images/favicon.b73b0c0e30d2.png)
    * [x] Google Chrome
    * [x] Opera
* [x] Skype ![Gnome](https://extensions.gnome.org/static/images/favicon.b73b0c0e30d2.png)
* [x] Koala ![Gnome](https://extensions.gnome.org/static/images/favicon.b73b0c0e30d2.png)
* [x] TeamViewer ![Gnome](https://extensions.gnome.org/static/images/favicon.b73b0c0e30d2.png)
* [x] Gparted ![Gnome](https://extensions.gnome.org/static/images/favicon.b73b0c0e30d2.png)
* [x] VirtualBox ![Gnome](https://extensions.gnome.org/static/images/favicon.b73b0c0e30d2.png)
* [x] VLC ![Gnome](https://extensions.gnome.org/static/images/favicon.b73b0c0e30d2.png)
* [x] Gimp ![Gnome](https://extensions.gnome.org/static/images/favicon.b73b0c0e30d2.png)
* [x] Jekyll ![Gnome](https://extensions.gnome.org/static/images/favicon.b73b0c0e30d2.png)
* [x] Unity Tweak Tool
* [x] OBS-Studio ![Gnome](https://extensions.gnome.org/static/images/favicon.b73b0c0e30d2.png)
