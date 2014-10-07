DROP TABLE IF EXISTS file;
CREATE TABLE file(
	file_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	description VARCHAR(255),
	data LONGBLOB, 
	filename VARCHAR(255),
	date_created datetime NOT NULL,
	date_updated timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	creator INT(11)  REFERENCES users (user_id)
);

DROP TABLE IF EXISTS file_info;
CREATE TABLE file_info(
	file_info_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	info_type INT(11) REFERENCES info_type (info_type_id),
	number_info int(11),
	string_info VARCHAR(255),
	text_info TEXT,
	bool_info BOOL,
	blob_info TINYINT(1),
	date_created datetime NOT NULL,
	date_updated timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	creator INT(11)  REFERENCES users (user_id)
);

DROP TABLE IF EXISTS info_type;
CREATE TABLE info_type(
	info_type_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	description VARCHAR(255),
	date_created datetime NOT NULL,
	date_updated timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	creator INT(11)  REFERENCES users (user_id)
);

DROP TABLE IF EXISTS users;
CREATE TABLE users(
	user_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	username CHAR(50),
	passwd VARCHAR(255),
	salt VARCHAR(255),
	status CHAR(50),
	date_created datetime NOT NULL,
	date_updated timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	creator INT(11)
);