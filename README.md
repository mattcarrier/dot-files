# Setup

## Clone Directory

Clone this directory to: `~/src/mattcarrier/dot-files`

## Install Software

Install these in order.  Yes Matt, even though you are questioning why you didn't use homebrew, remember you will still
get burned by it, just install things without it!

### ohmyzsh

shell customization

[ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### pyenv

python version manager

[pyenv](https://github.com/pyenv/pyenv#readme)

```shell
curl https://pyenv.run | bash
```

Find, install, and configure global version

```shell
pyenv install -l
pyenv install <version>
pyenv global <version>
```

[pyenv-virtualenv](https://github.com/pyenv/pyenv-virtualenv)

```shell
$ git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv
```

### pipx

Isolated environments for python applications

[pipx](https://github.com/pypa/pipx)

```shell
pip install --user pipx
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

Find, install and configure default version.

```shell
nvm ls
nvm install <version>
nvm alias default <version>
```

### sdkman

JDK version manager

[sdkman](https://sdkman.io)

```shell
curl -s "https://get.sdkman.io" | bash
```

Find, install, and set as default a JDK:

```shell
sdk list java
sdk install java <version-jdk>
```

### docker

containerization

[Docker for Desktop Mac](https://docs.docker.com/desktop/install/mac-install/)

### iterm2

better mac terminal

[iterm2](https://iterm2.com/downloads.html)

### 1Password

password manager

[1Password](https://1password.com/downloads/mac/)

#### Setup 1Password SSH Agent

configure ssh agent to utilize keys in 1 password

[ssh-agent](https://developer.1password.com/docs/ssh/agent)

### Arc

web browser

[Arc](https://releases.arc.net/release/Arc-latest.dmg)

### Injellij IDEA

IDE

[idea](https://www.jetbrains.com/idea/download/?section=mac)

### Spotify

MUSIC!

[spotify](https://www.spotify.com/us/download/mac/)

## gitconfig

This is just for myself, if you are seeing this and are not me then feel free to take a look
at the `.gitconfig` file but the SSH key will not work for you since it is kept in my personal
1Password account.

**Matt: update the email configuration for specific company needs**

### Link gitconfig

**This will OVERWRITE your gitconfig so save a backup if needed before you run this!**

```shell
ln -sf ~/src/mattcarrier/dot-files/.gitconfig ~/.gitconfig
```

## Link zshrc

**This will OVERWRITE your zshrc so save a backup if needed before you run this!**

```shell
ln -sf ~/src/mattcarrier/dot-files/.zshrc ~/.zshrc
```

## Source zshrc

Either create a new terminal session or `source ~/.zshrc` in the existing terminal.
