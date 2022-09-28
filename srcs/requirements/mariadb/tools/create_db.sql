CREATE DATABASE wordpress character set utf8 collate utf8_bin;

GRANT ALL ON *.* TO 'root'@'%' IDENTIFIED BY 'inception42';
GRANT ALL ON wordpress.* to 'inception'@'localhost' IDENTIFIED BY 'inception42';

FLUSH PRIVILEGES;


