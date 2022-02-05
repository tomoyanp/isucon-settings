# /bin/bash
git config --global user.email "tomoyanpy@gmail.com"
git config --global user.name "tomoyanp"

# alpのインストール
wget https://github.com/tkuchiki/alp/releases/download/v0.3.1/alp_linux_amd64.zip
unzip alp_linux_amd64.zip
sudo mv alp /usr/local/bin/

# dstatのインストール
sudo apt install dstat

# pt-query-digestのインストール
wget https://repo.percona.com/apt/percona-release_latest.$(lsb_release -sc)_all.deb
sudo dpkg -i percona-release_latest.$(lsb_release -sc)_all.deb
sudo apt update
sudo apt install percona-toolkit
