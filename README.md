# Setup

## Change System Settings

Just listing important changes here:
- TouchID
- Desktop & Dock
  - Position Right
  - Change size and magnification
- Appearance
  - Dark Setting
- Trackpad
  - Turn off natural scroll
  - Tap to click

## Install Prerequisite Applications

Install in order.

### Arc

web browser

[Arc](https://releases.arc.net/release/Arc-latest.dmg)

### iterm2

better mac terminal

[iterm2](https://iterm2.com/downloads.html)

#### XCode Developer Tools

THe iterm2 installation should ask to install the XCode Developer Tools, if not follow
the steps below.

```
If you are not able to install the XCode CLI using terminal command

sudo xcode-select --install
Just download the command line tool from Apple developer website (below link)

https://developer.apple.com/download/more/

And install it manually.
```

### 1Password

password manager

[1Password](https://1password.com/downloads/mac/)

#### Login to Arc

Now that 1Password is installed, go back and login to arc and turn on sync

#### Setup 1Password SSH Agent

configure ssh agent to utilize keys in 1 password

[ssh-agent](https://developer.1password.com/docs/ssh/agent)

## Clone Repository

Clone this repository to: `~/src/mattcarrier/dot-files`

## Install Software

Install these in order.

### gitconfig

This is just for myself, if you are seeing this and are not me then feel free to take a look
at the `.gitconfig` file but the SSH key will not work for you since it is kept in my personal
1Password account.

#### Set gitconfig

**This will OVERWRITE your gitconfig so save a backup if needed before you run this!**

```shell
cp ~/src/mattcarrier/dot-files/.gitconfig ~/.gitconfig
```

**Matt: update the email configuration for specific company needs. Make sure to add any new emails to your git
profile to allow git signing verification.**

### sdkman

JDK version manager

[sdkman](https://sdkman.io)

```shell
curl -s "https://get.sdkman.io" | bash
```
Follow instructions to add sdk to your current terminal session (linking zshrc later will add the omz plugin)

Find, install, and set as default a JDK:

```shell
sdk list java
sdk install java <version-jdk>
```

### Injellij IDEA

IDE

[idea](https://www.jetbrains.com/idea/download/?section=mac)

### homebrew

I'm not a huge fan of homebrew (will link blog post when I finally create one), but this is needed for some essential
software when building python.

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### pyenv

python version manager

[pyenv](https://github.com/pyenv/pyenv#readme)

```shell
brew install openssl readline sqlite3 xz zlib tcl-tk
curl https://pyenv.run | bash
```

Follow instructions to add pyenv to your current terminal session (linking zshrc later will add the omz plugin)

Find, install, and configure global version

```shell
pyenv install -l
pyenv install <version>
pyenv global <version>
```

[pyenv-virtualenv](https://github.com/pyenv/pyenv-virtualenv)

This may not be necessary, check if pyenv-virtualenv is already preset in pyenv plugins first.

```shell
$ git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv
```

### pipx

Isolated environments for python applications

[pipx](https://github.com/pypa/pipx)

```shell
pip install --user pipx
```

Add ~/.local/bin to PATH for current session (linking zshrc later will add this permanently).

```shell
export PATH=~/.local/bin:$PATH
```

### pypoetry

Python build tool

[pypoetry](https://python-poetry.org/)

```shell
pipx install poetry
```

### nvm

node version manager

[nvm](https://github.com/nvm-sh/nvm)

```shell
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
```

Follow instructions to add nvm to your current terminal session (linking zshrc later will add the omz plugin)

Find, install and configure default version.

```shell
nvm ls
nvm install <version>
```

### docker

containerization

[Docker for Desktop Mac](https://docs.docker.com/desktop/install/mac-install/)

### ohmyzsh

shell customization

[ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Copy zshrc

**This will OVERWRITE your zshrc so save a backup if needed before you run this!**

```shell
cp ~/src/mattcarrier/dot-files/.zshrc ~/.zshrc
```

**Update anything specific for the company in ~/.zshrc**

## Source zshrc

Either create a new terminal session or `source ~/.zshrc` in the existing terminal.
