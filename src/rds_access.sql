-- for RDS; giving access
CREATE USER 'cfg_user'@'%' IDENTIFIED BY 'cfg_project2021';
SHOW GRANTS for cfg_user;
GRANT ALL PRIVILEGES ON *.*  TO 'admin'@'localhost';
FLUSH PRIVILEGES;
