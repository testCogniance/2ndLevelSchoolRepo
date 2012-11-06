
CREATE TABLE users (
 id int(11) NOT NULL AUTO_INCREMENT,
 login varchar(64) DEFAULT NULL,
 pass varchar(64) DEFAULT NULL,
 date date DEFAULT NULL,
 PRIMARY KEY (id),
 UNIQUE login (login)
);
INSERT INTO users VALUES ('Anatoliy','Omelchenko','2012-12-31'),
('Andrew','Parmon','2012-12-31'),
('Dmytro','Protsenko','2012-12-31'),
('Elena','Kolyshkina','2012-12-31'),
('Iana','Sitsinska','2012-12-31'),
('Igor','Shumeyko','2012-12-31'),
('Ilona','Bachynskaya','2012-12-31'),
('Julia','Cherchun','2012-12-31'),
('Kateryna','Tretiak','2012-12-31'),
('Maxim','Kriuchko','2012-12-31'),
('Natalia','Semidotska','2012-12-31'),
('Roman','Atamanchuk','2012-12-31'),
('Sofia','Kostiuchenko','2012-12-31'),
('Taras','Kazydub','2012-12-31'),
('Zhanna','Vasilevskaya','2012-12-31');

CREATE TABLE users_status (
 users_id int(11) NOT NULL,
 status_id int(11) NOT NULL,
 login varchar(64) NOT NULL,
 FOREIGN KEY (users_id) REFERENCES users (id)
);

INSERT INTO users_status VALUES (1,1,''),(1,1,'344'),(16,1,'344');

CREATE TABLE users_title (
 users_id int(11) NOT NULL,
 title_id int(11) NOT NULL,
 FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
);
