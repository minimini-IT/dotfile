#dotfile
vimrc

1.githubに公開鍵登録
2.config ファイルの設定
~/.ssh 内にconfig ファイルを作成。下記を記述。

Host github
user git
Hostname github.com
Port 22
IdentityFile ~/.ssh/(秘密鍵のファイル名)

3.鍵がちゃんとしていても、ssh-addを忘れていると上記のようなエラーが出ることがあります。Macなどではssh-addは不要ですが、CentOSでは必要です。まずは「ssh-add -l」して状態を確認。読み込んでほしい秘密鍵のパスがちゃんと出てこればOKです。出てこなければ、ssh-addしましょう。

4.git clone git@github.com:minimini-IT/dotfile.git

5.ln -s dotfile/_vimrc ~/.vimrc
  ln -s dotfile/_gvimrc ~/.gvimrc

6.git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  vi ~/.vimrc
  :PluginInstall