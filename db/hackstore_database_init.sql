DROP TABLE IF EXISTS store;
CREATE TABLE store(
	store_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY, 
	description CHAR(50),
	date_created datetime NOT NULL,
	date_updated timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	creator INT(11)  REFERENCES user (id), 
	data LONGBLOB, 
	filename VARCHAR(255), 
	filesize CHAR(50), 
	filetype CHAR(50) 
);

DROP TABLE IF EXISTS users;
CREATE TABLE users(
	user_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	date_created datetime,
	date_updated timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	creator INT(11),
	username CHAR(50),
	password VARCHAR(255),
	salt VARCHAR(255),
	status CHAR(50)
);

INSERT INTO `users` (user_id, username, password, salt, status, date_created) VALUES (1,'admin','4a1750c8607d0fa237de36c6305715c223415189','c788c6ad82a157b712392ca695dfcf2eed193d7f','ACTIVE','2014-08-06 22:11:50');
