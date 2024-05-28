Installation process:
`brew tap FelixKratz/formulae` (allow homebrew to install sketchybar)
`brew install sketchybar` install sketchybar

Copy the example configuration into your home directory and make the scripts executable:
```shell
  mkdir -p ~/.config/sketchybar/plugins
  cp /opt/homebrew/opt/sketchybar/share/sketchybar/examples/sketchybarrc ~/.config/sketchybar/sketchybarrc
  cp -r /opt/homebrew/opt/sketchybar/share/sketchybar/examples/plugins/ ~/.config/sketchybar/plugins/
  chmod +x ~/.config/sketchybar/plugins/*
```

To start felixkratz/formulae/sketchybar now and restart at login:
```shell
  brew services start felixkratz/formulae/sketchybar
...or simply:
brew services start sketchybar
```
Or, if you don't want/need a background service you can just run:
  LANG="en_US.UTF-8" /opt/homebrew/opt/sketchybar/bin/sketchybar



symlinks:
rm -rf ~/.config/sketchybar/sketchybarrc
rm -rf ~/.config/sketchybar/plugins
ln -sf ~/dotfiles/sketchybar/sketchybarrc ~/.config/sketchybar/sketchybarrc
ln -sf ~/dotfiles/sketchybar/plugins ~/.config/sketchybar/plugins

