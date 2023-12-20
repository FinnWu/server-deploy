dnf update -y

# 安装docker
sudo dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo
sudo dnf install docker-ce -y


# 安装docker-compose
sudo systemctl start docker
sudo systemctl enable docker
sudo dnf install -y curl
sudo curl -L "https://github.com/docker/compose/releases/download/v2.20.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# 安装git
dnf install git -y

# 安装vim编辑器
dnf install vim -y

## 安装Nginx
sudo dnf install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx

# 安装证书工具
sudo dnf install epel-release -y
sudo dnf install certbot python3-certbot-nginx -y
# sudo certbot --nginx