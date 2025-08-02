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


# tmux
if [ -e "$HOME/.config/tmux" ] || [ -L "$HOME/.config/tmux" ]; then
  rm -rf "$HOME/.config/tmux"
fi
ln -s "$SCRIPT_DIR/files/tmux" "$HOME/.config/tmux"


# lazygit
if [ -e "$HOME/.config/lazygit" ] || [ -L "$HOME/.config/lazygit" ]; then
  rm -rf "$HOME/.config/lazygit"
fi
ln -s "$SCRIPT_DIR/files/lazygit" "$HOME/.config/lazygit"
