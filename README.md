# Learn Vim

# Why?

So you can have street cred. 
Duh! Why _`else`_?
(_you don't **really** want to get your work done faster, do you?_)


# What? 

The text editor you can use _anywhere_.

## Anywhere?

Yes, built-into Mac is the `vi` command/program.
So in your terminal you can run `vi myfile.rs` and start editing immediately without downloading anything.
But _way_ more importantly, `vi` is available on most `Linux/Unix` _servers_.
So if you are attempting to update a config file on a server without a GUI,
knowing how to use `vi`/`vim` is _very_ useful.

Who still uses servers? 
Aren't those like, "old school", 
isn't everything "Serverless" 
and "Edge Functions" now?
Yes, running on infrastructure you don't _understand_
with high vendor-lockin and latency 
is always an `<option>` ...
But sooner or later you will need 
to go lower-level and edit a config file.
Be it on a Raspberry Pi, Firewall
or 
[legacy Oracle System](https://docs.oracle.com/cd/E19253-01/806-7612/editorvi-43/index.html) 
that 
you need to integrate with
because you're building a 
FinTech / Healthcare / EdTech startup ...

Trust us, being _proficient_ at `Vi`/`Vim` will pay off. 



# How?

Most `Linux`/`Unix` Operating Systems 
have `vi` already included/installed by default.
But if yours does not, 
then installation is usually pretty straightforward and quick.s


## Installation



### Mac

```
brew install macvim
```

## Linux/Unix

see: https://www.vim.org/git.php
(_most Linux already have Vim, check your distro_)


### Windows? 

GOTO: https://www.vim.org/download.php

## Vundle Plugin Manager


First:
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
Then add the following to your `.vimrc` file:

```
set nocompatible              " be iMproved, required by Vundle
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
:
" These are two plugins that will be installed/managed by Vundle:
Plugin 'slashmili/alchemist.vim'
Plugin 'scrooloose/nerdtree'

" All of Plugins must be added before the following line
call vundle#end()            " required
```

Finally restart Vim and run the following command: `:PluginInstall`

When you edit a `README.md` you should see something like this:

![Vim-showing-nerdtree](https://user-images.githubusercontent.com/194400/51445633-7bc11380-1cff-11e9-92c8-010ea17249dd.png)


## NERDTree

NERDTree is a directory/filesystem navigator.
see: https://github.com/scrooloose/nerdtree

It's already installed above in the Vundle section.
If you want to map a keyboard shortcut, go with **`F6`** as it's available.

Add the following line to your `.vimrc` file:

```
nmap <F6> :NERDTreeToggle<CR> " Keyboard shortcut https://vi.stackexchange.com/a/9968
```


+ Keyboard shortcut: 
https://vi.stackexchange.com/questions/9967/how-do-i-open-and-close-nerdtree-toggle-nerdtree-view-using-a-single-keystroke/9968

### Creating a New File or Directory using NERDTree

First, bring up NERDTree and navigate to the directory where you want to create the new file. 
Press `m` to bring up the NERDTree Filesystem Menu. 
This menu allows you to create, rename, and delete files and directories. 
Type `a` to add a child node and then simply enter the filename. 
You’re done! 
To create a directory follow the same steps but append a `/` to the filename.

> Thanks to @soofaloofa for summarising this in
https://sookocheff.com/post/vim/creating-a-new-file-or-directoryin-vim-using-nerdtree/ ❤️


<!-- temp comment out 
installation
====
A barbones install script is include that assumes this repo is cloned at ~/vim.
-->

# Useful Links 

+ How to install NERDTree (_or any other Vim plugin_) using Vundle:
https://vi.stackexchange.com/questions/5335/how-to-install-nerdtree-with-vundle


# `Helix`

`Helix` is a "post-modern" modal text editor 
that picks up where `Vim` left off.
See:
[helix-editor.com](https://helix-editor.com/)
and
[github.com/helix-editor/helix](https://github.com/helix-editor/helix)

It _includes_ many of the most popular features
that are _plugins_ in the `Vim` ecosystem 
such as a file-picker, fuzzy searching, language servers and themes.
It's a "batteries included" alternative to `Vim` with _many_ enhancements.
It's built with `Rust` and under active development.


## Install

If you already have the `Rust` toolchain on your computer, 
you can install `Helix` with:
```sh
git clone https://github.com/helix-editor/helix
cd helix
cargo install --locked --path helix-term
```


see:
[github.com/helix-editor/helix#installation](https://github.com/helix-editor/helix#installation)

### `macOS`

```sh
brew install helix
```

Once installed,
in any terminal window,
start `Helix` by issuing the command:

```sh
hx .
```

