#!/bin/sh

SOURCE="$0"
while [ -h "$SOURCE" ]; do
  DIR="$(cd -P "$(dirname "$SOURCE")" >/dev/null 2>&1 && pwd)"
  SOURCE="$(readlink "$SOURCE")"
  [ "$(echo "$SOURCE" | cut -c1)" = "/" ] || SOURCE="$DIR/$SOURCE"
done
SCRIPT_DIR="$(cd -P "$(dirname "$SOURCE")" >/dev/null 2>&1 && pwd)"


# ZSH
if [ -e "$HOME/.zshrc" ] || [ -L "$HOME/.zshrc" ]; then
  rm -rf "$HOME/.zshrc"
fi
ln -s "$SCRIPT_DIR/files/_zshrc" "$HOME/.zshrc"


# XORG xinitrc
if [ -e "$HOME/.xinitrc" ] || [ -L "$HOME/.xinitrc" ]; then
  rm -rf "$HOME/.xinitrc"
fi
ln -s "$SCRIPT_DIR/files/_xinitrc" "$HOME/.xinitrc"


# XORG Xresources
if [ -e "$HOME/.Xresources" ] || [ -L "$HOME/.Xresources" ]; then
  rm -rf "$HOME/.Xresources"
fi
ln -s "$SCRIPT_DIR/files/_Xresources" "$HOME/.Xresources"


# i3
if [ -e "$HOME/.config/i3" ] || [ -L "$HOME/.config/i3" ]; then
  rm -rf "$HOME/.config/i3"
fi
ln -s "$SCRIPT_DIR/files/i3" "$HOME/.config/i3"


# polybar
if [ -e "$HOME/.config/polybar" ] || [ -L "$HOME/.config/polybar" ]; then
  rm -rf "$HOME/.config/polybar"
fi
ln -s "$SCRIPT_DIR/files/polybar" "$HOME/.config/polybar"


# tmux
if [ -e "$HOME/.config/tmux" ] || [ -L "$HOME/.config/tmux" ]; then
  rm -rf "$HOME/.config/tmux"
fi
ln -s "$SCRIPT_DIR/files/tmux" "$HOME/.config/tmux"


# alacritty
if [ -e "$HOME/.config/alacritty" ] || [ -L "$HOME/.config/alacritty" ]; then
  rm -rf "$HOME/.config/alacritty"
fi
ln -s "$SCRIPT_DIR/files/alacritty" "$HOME/.config/alacritty"


# lazygit
if [ -e "$HOME/.config/lazygit" ] || [ -L "$HOME/.config/lazygit" ]; then
  rm -rf "$HOME/.config/lazygit"
fi
ln -s "$SCRIPT_DIR/files/lazygit" "$HOME/.config/lazygit"
