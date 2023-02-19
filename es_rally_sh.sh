
yum -y install zlib-devel bzip2 bzip2-devel readline-devel sqlite sqlite-devel mysql-devel

yum groupinstall "Development Tools"

curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash

echo '# pyenv path' >> ~/.bashrc
echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc

source ~/.bashrc


pyenv install 3.8.13
pyenv global 3.8.13

sudo yum install pbzip2

python3 -m pip install --user --upgrade pip
python3 -m pip install --user esrally
