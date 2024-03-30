__Update and install ansible&neovim__
```
pacman -Syu --noconfirm && \
pacman -S ansible neovim git sudo --noconfirm && \
sudo groupadd users && \
sudo useradd caleb -m

sudo -u caleb -i  

git clone https://github.com/ctheil/ansible ~/home/ansible

<!-- sudo passwd -u caleb -->
<!-- // enter password & confirm -->
as root: passwd
then change /etc/sudoers (Uncomment ALL line and line above)

// update /etc/sudoers
sudo sed -i 's/# Defaults targetpw/Defaults targetpw/' /etc/sudoers
sudo sed -i 's/# ALL ALL=(/ALL ALL =(/' /etc/sudoers
```

# BUG: 
fatal: [localhost]: FAILED! => {"changed": false, "msg": "invalid key specified: /home/caleb/.ssh/id_ed25519.pub"}

## Start:
`pacman -S sudo --noconfirm`
`sudo pacman -Syu --noconfirm`
`sudo pacman -S git ansible --noconfirm`

`sudo pacman -S zsh --noconfirm`

`sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

```
$ nvim ~/.zshrc
change plugins=(git) -> plugins=(git zsh-autosuggestions zsh-syntax-highlighting vi-mode)
```

*git clone zsh-autosuggestions*
`sudo pacman -S zsh-autosuggestions --noconfirm`

*git clone zsh-syntax-highlighting*

`sudo pacman -S zsh-syntax-highlighting --noconfirm`


