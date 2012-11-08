create table kn_country(Country varchar(255), Capital varchar(255), Area bigint, Population bigint);
describe kn_country;
insert into kn_country(Country, Capital, Area, Population) values ('Ukraine', 'Kiev', 603628, 45888000);
insert into kn_country(Country, Capital, Area, Population) values ('USA', 'Washington, D.C.', 9826675, 314636000);
insert into kn_country(Country, Capital, Area, Population) values ('Germany', 'Berlin', 357021, 81799600);
insert into kn_country(Country, Capital, Area, Population) values ('France', 'Paris', 674843, 65350000);
insert into kn_country(Country, Capital, Area, Population) values ('Austria', 'Vienna', 83855, 8414638);
select * from kn_country;
