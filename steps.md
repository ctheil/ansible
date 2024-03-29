__Update and install ansible&neovim__
```
pacman -Syu --noconfirm && \
pacman -S ansible neovim git --noconfirm && \
git clone https://github.com/ctheil/ansible /home
```
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


