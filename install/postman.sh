cd /tmp
wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz
sudo tar -xf postman.tar.gz -C /opt
sudo ln -s /opt/Postman/Postman /usr/bin/postman
rm postman.tar.gz
cd -
