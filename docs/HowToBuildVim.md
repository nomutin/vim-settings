# How to build latest Vim from source

## Why build from source?

`sudo`権限が無い環境で`vim`のバージョンが`denops`の要件(`>9.0.1499`)や`ddc.vim`の要件(`9.0.1276`)に満たない場合

## Requirements

おそらく以下が使えれば大丈夫

- `make`
- `wget`
- `git`

## `ncurces`のビルド

TUI を作成するための API を提供するライブラリ.

1. 作業ディレクトリの作成

```sh
mkdir Downloads
cd Downloads
```

2. インストール

```sh
wget https://ftp.gnu.org/pub/gnu/ncurses/ncurses-6.2.tar.gz
tar -xvf ncurses-6.2.tar.gz
cd ncurses-6.2
```

3. ビルド

```sh
./configure --prefix=$HOME/local/ncurses --with-shared
make
make install
```

## `vim`のビルド

1. インストール

```sh
cd ~/Downloads
git clone https://github.com/vim/vim.git
cd vim
```

2. ビルド

```sh
make distclean
LDFLAGS="-L$HOME/local/ncurses/lib" CPPFLAGS="-I$HOME/local/ncurses/include" ./configure --prefix=$HOME/local/vim --with-tlib=ncurses --with-features=huge --enable-multibyte
make
make install
```

3. PATH を通す

```sh
echo 'export PATH=$HOME/local/vim/bin:$PATH' >> ~/.bashrc
source ~/.bashrc
```
