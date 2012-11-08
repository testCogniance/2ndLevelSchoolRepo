CREATE TABLE 
	Customer(
			customer_id int not null auto_increment, 
			name varchar(25), 
			customer_type_id int, 
			contact_id int, 
			address varchar(255), 
			iso_country_code int(3), 
			email varchar(255), 
			city varchar(255), 
			postal_code varchar(10), 
			primary_phone int, 
			secondary_phone int not null, 
			fax int not null, 
			company_id int not null, 
			agency_id int not null, 
			branch_id int not null, 
			created_date date, 
			updated_date date, 
			UNIQUE (name, company_id, agency_id, branch_id), 
			PRIMARY KEY (customer_id)
	);

INSERT INTO Customer values(null, 'Nelson Santos', 'Owner', 123, '40 Morningside Ave', 840, 'nsantos@email.com', 'New York', '10026', 340233642834, 340233452834, 4573498, 1, 1, 1, '2012-11-1','2012-11-1'),
(null, 'Steve Cas', 'Manager', 153, '300 W 109th St', 840, 'scas@email.com', 'New York', '10026', 340233642835, 340233642836, 38475848, 2, 2, 2, '2012-11-2','2012-11-2'),
(null, 'Les St Louis', 'Manager', 187, '453 Montclair Ave', 840, 'lslouis@email.com', 'Pompton Lakes', '07442', 340233642838, 340233642837, 237468, 3, 3, 3, '2012-11-3','2012-11-3'),
(null, 'Desiree Reid', 'Owner', 23, '2298 W 21st St', 840, 'dreid@email.com', 'Los Angeles', '90018', 340233642839, 340233642810, 3847932, 4, 4, 4, '2012-11-4','2012-11-4'),
(null, 'Norm White', 'Manager', 46, '9 Rathbone Pl', 824, 'nwhite@email.com', 'London', 'W1T 1HW', 340233642811, 340233642812, 3459349, 5, 5, 5, '2012-11-5','2012-11-5');

CREATE TABLE 
	User(
			user_id int not null auto_increment, 
			login_name varchar(25), 
			password varchar(20),
			is_Admin boolean not null,
			customer_id int, 
			created_date date, 
			updated_date date, 
			UNIQUE(login_name), 
			PRIMARY KEY(user_id), 
			FOREIGN KEY(customer_id) REFERENCES Customer(customer_id)
	);

INSERT INTO User values(null, 'nsantos', 'root', true, 1, '2012-11-1', '2012-11-1'),
(null, 'scas', 'qwyteu1', false, 2, '2012-11-2', '2012-11-2'),
(null, 'lslouis', 'jhhjqrw22', false, 3, '2012-11-3', '2012-11-3'),
(null, 'dreid', 'ajhdjh3', true, 4, '2012-11-4', '2012-11-4'),
(null, 'nwhite', 'ajksh333', false, 5, '2012-11-5', '2012-11-5');

CREATE TABLE 
	Role(
			role_id int auto_increment, 
			descrip varchar(255), 
			created_date date, 
			updated_date date, 
			PRIMARY KEY(role_id)
	);

INSERT INTO Role values(null, 'admin', '2012-11-1', '2012-11-1'),
(null, 'user', '2012-11-2', '2012-11-2');

CREATE TABLE 
	User_roles(
			user_id int not null, 
			role_id int not null, 
			FOREIGN KEY(user_id) REFERENCES User(user_id), 
			FOREIGN KEY(role_id) REFERENCES Role(role_id)
	);

INSERT INTO User_roles values(1,1),
(2,2),
(3,2),
(4,1),
(5,2);