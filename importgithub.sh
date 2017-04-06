mkdir -p dump
cd dump
rm -rf *
wget https://raw.githubusercontent.com/iptomar/projectary-bd/master/projectary-bd-dump.sql
mysql -u $1 -p < projectary-bd-dump.sql
