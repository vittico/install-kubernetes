sudo name=$1 bash -c 'echo $name > /etc/hostname'
sudo name=$1 bash -c 'echo 127.0.0.1 localhost > /etc/hosts'
sudo name=$1 bash -c 'echo 127.0.0.2 $name >> /etc/hosts'
