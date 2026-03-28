# chezmoi
Dotfiles managed with [chezmoi](https://www.chezmoi.io/)


Install homebrew:
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```


Install chezmoi
```
brew install chezmoi
```

Clone this repo
```
chezmoi init https://github.com/Maxim-Filimonov/config.git
chezmoi apply
```

## GitHub Codespaces

This repository is compatible with [GitHub Codespaces dotfiles](https://docs.github.com/en/codespaces/setting-your-user-preferences/personalizing-github-codespaces-for-your-account#dotfiles). To use it, select this repository in your [personal Codespaces settings](https://github.com/settings/codespaces) under **Dotfiles**. When a new codespace is created, the `install.sh` script will automatically install chezmoi and apply your dotfiles.
