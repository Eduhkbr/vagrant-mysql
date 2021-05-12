sudo apt-get update
sudo apt -y install mysql-server-5.7
mysql < /vagrant/mysql/user.sql
cat /vagrant/mysql/mysqld.cnf > /etc/mysql/mysql.conf.d/mysqld.cnf
sed -i "s/bind-address.*/bind-address = 0.0.0.0/" /etc/mysql/mysql.conf.d/mysqld.cnf
service mysql restart