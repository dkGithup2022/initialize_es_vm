
sudo yum -y update
sudo yum -y install vim java-11-openjdk java-11-openjdk-devel

cat <<EOF | sudo tee /etc/yum.repos.d/elasticsearch.repo
[elasticsearch-7.x]
name=Elasticsearch repository for 7.x packages
baseurl=https://artifacts.elastic.co/packages/oss-7.x/yum
gpgcheck=1
gpgkey=https://artifacts.elastic.co/GPG-KEY-elasticsearch
enabled=1
autorefresh=1
type=rpm-md
EOF

sudo yum clean all
sudo yum makecache

sudo yum -y install elasticsearch-oss

 rpm -qi elasticsearch-oss
