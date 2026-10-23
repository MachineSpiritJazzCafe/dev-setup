# dotfiles

Monorepo for my personal configuration. Each top-level folder is an independent module.

| Module    | Target location                                  |
|-----------|--------------------------------------------------|
| `nvim/`   | `~/.config/nvim` (Windows: `%LOCALAPPDATA%\nvim`) |
| `wezterm/`| `~/.wezterm.lua`                                 |

## Installing on macOS

```sh
git clone git@github.com:MachineSpiritJazzCafe/dotfiles.git ~/dev/dotfiles
ln -sfn ~/dev/dotfiles/nvim ~/.config/nvim
ln -sfn ~/dev/dotfiles/wezterm/.wezterm.lua ~/.wezterm.lua
```

Back up any existing `~/.config/nvim` or `~/.wezterm.lua` before linking.

## Installing on Windows

```powershell
New-Item -ItemType SymbolicLink -Path "$env:LOCALAPPDATA\nvim" -Target "C:\Users\Patryk\dev\dotfiles\nvim"
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\.wezterm.lua" -Target "C:\Users\Patryk\dev\dotfiles\wezterm\.wezterm.lua"
```
