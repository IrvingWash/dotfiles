# dotfiles

## Configs
- **cava** - audio visualizer
- **dunst** - notifications
- **fish** - shell
- **flameshot** - screenshoter
- **ghosty** - terminal emulator config, linux
- **ghosty_osx** - the same, but for mac
- **helix** - text editor that I never use
- **i3** - window manager
- **mpd** - music server... thing?
- **ncmpcpp** - frontend for mpd
- **nvim** - text editor
- **picom** - compositor
- **polybar** - status bar
- **rofi** - app launcher
- **starship** - prompt line
- **yazi** - file manager
- **zshrc** - shell, personal mac
- **zshrc_work** - the same, work mac

## Usage
The file structure in the repo is optimized for using it with [GNU Stow](https://www.gnu.org/software/stow/).
```bash
cd ./dotfiles

stow ghostty_osx
```
