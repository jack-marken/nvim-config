# On WSL Ubuntu 24.04.3 LTS

## Install Neovim

- Go to [https://github.com/neovim/neovim/releases/]
- Copy the link of the latest stable release
  - Example: [https://github.com/neovim/neovim/releases/download/v0.11.4/nvim-linux-x86_64.appimage]

```bash
curl -LO [link]
mkdir -p ~/Applications
mv nvim-linux.x86_64.appimage ~/Applications/nvim
chmod +x nvim ~/Applications/nvim
mkdir -p ~/.local/bin
ln -s ~/Applications/nvim ~/.local/bin/nvim
```

Add `~/.local/bin/` to the $PATH

```bash
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

Neovim should now run with the command `nvim`

## Add configurations from this repo

```bash
mkdir -p ~/.config
git clone https://github.com/jack-marken/nvim-config nvim
```

Run the `nvim` command and press `q` to skip past the error message.
Let Packer install all of the relevant packages.
Quit Neovim with `:wq`.

All configurations should work upon running `nvim` again.

## Other installs

### Install 'c' compilers for TreeSitter

```bash
sudo apt install build-essential
```

### Install ripgrep for Telescope

```bash
sudo apt install ripgrep
```

### NPM development

```bash
npm install -g @vue/language-server
```
