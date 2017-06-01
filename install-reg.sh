#!/bin/bash
	# instaling postgreSQL 

sudo apt-get update
sudo apt-get install -y postgresql postgresql-contrib

	#adding user to Linux vm

sudo useradd -m -p 22446688 -s /bin/bash user

# install nginx with ssl 

cd nginx-ssl/
chmod +x bootstrap.sh 
./bootstrap.sh 


# install redis 

sudo apt-get update
sudo apt-get install -y  build-essential tcl
cd /tmp
curl -O http://download.redis.io/redis-stable.tar.gz
tar xzvf redis-stable.tar.gz
cd redis-stable
make
sudo make install


#configure db and user pri...
##      sudo su - postgres  
##      createuser user
##      createdb -O user database  
##             exit

	#test user and access    for Test 
	#sudo su - user 
	#psql -d databese -U user
	#\q
	#exit
#done part



