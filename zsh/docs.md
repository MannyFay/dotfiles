## ZSH Dotfiles Documentation

### Setup
Link the .zshrc file for your operating system into your home directory:
```shell
rm -f $HOME/.zshrc
ln -s $HOME/personal/github/dotfiles/zsh/.zshrc-deb $HOME/.zshrc

rm -f $HOME/.zshrc
ln -s $HOME/personal/github/dotfiles/zsh/.zshrc-macos $HOME/.zshrc
```

Link OH-MY-ZSH theme:
```shell
rm -f $HOME/.oh-my-zsh/themes/mannydark.zsh-theme
ln -s $HOME/personal/github/dotfiles/zsh/mannydark.zsh-theme $HOME/.oh-my-zsh/themes/mannydark.zsh-theme

rm -f $HOME/.oh-my-zsh/themes/mannydark-oneline.zsh-theme
ln -s $HOME/personal/github/dotfiles/zsh/mannydark-oneline.zsh-theme $HOME/.oh-my-zsh/themes/mannydark-oneline.zsh-theme
```
Set the theme in the .zshrc file:
```shell
ZSH_THEME="mannydark"
```

