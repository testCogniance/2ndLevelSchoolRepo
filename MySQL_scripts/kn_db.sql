create table user(id int auto_increment not null, login_name varchar(64), password varchar(64),is_Admin boolean not null, customer_id int, created_date date, updated_date date, primary key(id),unique(login_name));

create table user_roles(user_id int not null,role_id int not null,foreign key(user_id) references user (id));

insert into user values(null,'root','root',true,1,'2012-10-30','2012-10-30');

insert into user_roles values(1,1);

create table role(id int auto_increment not null, description varchar(255), created_date date, updated_date date, primary key(id));

alter table user_roles add foreign key(role_id) references role(id);

insert into role values(null,'admin','2012-10-30','2012-10-30');

create table customer(id int auto_increment not null, name varchar(64), customer_type_id int, contact_id int, address varchar(255), country_code int, email varchar(255), city varchar(255), postal_code int, primary_code int, secondary_phone int not null, fax int not null, company_id int not null, agency_id int not null, branch_id int not null, created_date date, updated_date date, unique (name, company_id, agency_id, branch_id), primary key (id));

insert into customer values(null, 'customer', 'good_customer', 11, 'Ukraine', 11111, 'customer@gmail.com', 'Kiev', 39600, 095111111, 095222222, 25676332, 12, 12, 12, '2012-10-30','2012-10-30');

alter table user add foreign key(customer_id) references customer(id);

describe user;

describe customer;

describe role;

describe user_roles;

select * from user;

select * from customer;

select * from role;

select * from user_roles;
