export DEBIAN_FRONTEND=noninteractive
sudo apt-get update
sudo apt-get -o Dpkg::Options::="--force-confold" -o Dpkg::Options::="--force-confdef" upgrade -q -y --allow-downgrades --allow-remove-essential --allow-change-held-packages
sudo apt-get -o Dpkg::Options::="--force-confold" -o Dpkg::Options::="--force-confdef" dist-upgrade -q -y --allow-downgrades --allow-remove-essential --allow-change-held-packages
sudo apt-get autoremove 
sudo apt-get autoclean


sudo apt install -y python-pip htop vim software-properties-common apt-transport-https ca-certificates curl software-properties-common build-essential python-all

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt-get update
sudo apt -y install docker-ce ansible


curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" > kubernetes.list 
sudo mv  kubernetes.list /etc/apt/sources.list.d

sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl
sudo apt-mark hold kubelet kubeadm kubectl
