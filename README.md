## Menu
* [PPA](#ppa-)  
      
    * [Docker](#docker-)
    * [Node.js](#nodejs-)
    * [numix-gtk-theme](#numix-gtk-theme-)
    * [OBS-Studio](#obs-studio-)
    * [Oracle Java](#oracle-java-)
    * [Sublime Text](#sublime-text-)
    * [Telegram](#telegram-)
    * [grub customizer](#grub-customizer-)
    
* [APPS](#apps-)

    * [All Applications In Line](#all-applications-in-line-)    
    * [NVM (Node.js)](#nvm-nodejs-)
    * [Ruby apps](#ruby-apps-)
    * [Nvidia Drivers](#nvidia-drivers-)
    * [Grub Repair](#grub-repair-)
    
* [SETTINGS](#settings-)

    * [Git](#git-)
    * [Samba add local user](#samba-add-local-user-)
    * [Add windows-1251 encoding](#add-windows-1251-encoding-)
    * [NVM (Node.js) Settings](#nvm-nodejs-settings-)
    * [Add bash aliases](#add-bash-aliases-)
    * [Linux desktop managers](#linux-desktop-managers-)
    * [Plymouth theme](#plymouth-theme-)
    * [Preload](#preload-)
    
* [LOCATIONS](#locations-)

    * [Telegram](#telegram--1)
    * [Gnome extensions](#gnome-extensions-)
    * [Variables of folders in /home (~)](#variables-of-folders-in-home--)
    * [Plymouth theme](#plymouth-theme--1)
    

## PPA [⇑](#menu)

#### Docker [⇑](#menu)
[Install](https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/#install-docker-ce)  
```bash
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
    
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
```
[non-root user](https://docs.docker.com/engine/installation/linux/linux-postinstall/#manage-docker-as-a-non-root-user)
```bash
sudo groupadd docker
sudo usermod -aG docker $USER
```
#### Node.js [⇑](#menu)
```bash
sudo apt-get install \
    curl
    
sudo curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
```
#### numix-gtk-theme [⇑](#menu)
```bash
sudo add-apt-repository ppa:numix/ppa -y
```
#### OBS-Studio [⇑](#menu)
```bash
sudo add-apt-repository ppa:obsproject/obs-studio -y
```
#### Oracle Java [⇑](#menu)
```bash
sudo add-apt-repository ppa:webupd8team/java -y
```
#### Sublime Text [⇑](#menu)
[official site](https://www.sublimetext.com/docs/3/linux_repositories.html#apt)
```bash
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
```
#### Telegram [⇑](#menu)
```bash
sudo add-apt-repository ppa:atareao/telegram -y
```
#### grub customizer [⇑](#menu)
```bash
sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y
```

---
## APPS [⇑](#menu)

#### All Applications in line [⇑](#menu)
```bash
sudo apt install \
      arc-theme \
      chkrootkit \
      chrome-gnome-shell \
      curl \
      dconf-editor \
      docker-ce \
      filezilla \
      gdebi \
      gimp \
      git \
      gnome-alsamixer \
      gnome-tweak-tool \
      gparted \
      grub-customizer \
      numix-icon-theme \
      numix-icon-theme-circle \
      obs-studio \
      oracle-java8-installer \
      pinta \
      preload \
      rawtherapee \
      rkhunter \
      ruby-full \
      screenfetch \
      stellarium \
      sublime-text \
      telegram \
      virtualenv \
      vlc \
      xclip \
```

#### NVM (Node.js) [⇑](#menu) 
```bash
nvm install 8
npm i -g \
      bower \
      browser-sync \
      create-react-app \
      eslint \
      forever \
      gulp \
      jshint \
      less \
      mocha \
      pug-cli \
```

#### Ruby apps [⇑](#menu) 
```bash
sudo gem install \
      bundler \
      jekyll \
      lolcat \
```

#### Nvidia Drivers [⇑](#menu) 
```bash
sudo apt install nvidia-current
```

#### Grub Repair [⇑](#menu)
```bash
sudo add-apt-repository ppa:yannubuntu/boot-repair
sudo apt update
sudo apt install -y boot-repair && boot-repair
```
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

#### Add windows-1251 encoding [⇑](#menu) 
```bash
if [[ ! -n `grep 'windows-1251' ~/.profile` ]]; then echo 'export GST_ID3_TAG_ENCODING="windows-1251"' >> ~/.profile; fi
```
#### NVM (Node.js) Settings [⇑](#menu) 
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
> Если вы хотите отредактировать настройки Preload откройте его конфигурацию данной командой:  
> `sudo gedit /etc/preload.conf`  
> Если нужно посмотреть логи демона воспользуйтесь командой ниже:  
> `sudo tail -f /var/log/preload.log`

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
