create table profile(
email varchar(255) primary key,
phonenumber number,
name_person varchar(40),
password varchar(255)
);

INSERT INTO profile VALUES ('karandeep.singh@vitstudent.ac.in',    '9090262977', 'Karandeep Singh',  'KARAN@12345' );
INSERT INTO profile VALUES ('Yashkumar.verma2019@vitstudent.ac.in','7008788033', 'Yash Kumar verma', 'yashvr142'   );
INSERT INTO profile VALUES ('Priyanshu.raj2019@vitstudent.ac.in',  '9090725477', 'Priyanshu Raj',    'priyanshu123');
INSERT INTO profile VALUES ('Priyanshu.raj@gmail.com',             '9090725477', 'Priyanshu Raj',    'priyanshu@12');

-- LOGIN table and sample values
create table login(
loginemail varchar(255) primary key references profile(email),
password varchar(255)
);
INSERT INTO login VALUES ('karandeep.singh@vitstudent.ac.in',     'KARAN@12345' );
INSERT INTO login VALUES ('Yashkumar.verma2019@vitstudent.ac.in', 'yashvr142'   );
INSERT INTO login VALUES ('Priyanshu.raj2019@vitstudent.ac.in',   'priyanshu123');
INSERT INTO login VALUES ('Priyanshu.raj@gmail.com',              'priyanshu@12');
-- issue table and sample values
create table issue(
issueemail varchar(255) primary key references profile(email),
problem varchar(500),
solution varchar(500)
);
INSERT INTO issue VALUES('karandeep.singh@vitstudent.ac.in','the navigation button is not working','change to submit type button');
-- Create table traind and sample values
create table trains(
trainnumber int primary key,
trainname varchar(50),
arrives varchar(6),
departs varchar(6)
);
INSERT INTO trains VALUES(12757,'Tpty Cbe  Express','17:00','17:02');


-- train review table and sample values
create table review(
review_train_number int references trains(trainnumber),
rating int,
coment varchar(255)
);
INSERT INTO review VALUES(12757,5,'clean washrooms are provided');
INSERT INTO review VALUES(12757,5,'clean washrooms are provided');

-- Create table e food and sample values
create table E_food(
station_code varchar(5) Primary key,
station_name varchar(50)
);
INSERT INTO E_food VALUES('ADI','Ahmedabad Junction');
INSERT INTO E_food VALUES('BPL','Bhopal Junction');
INSERT INTO E_food VALUES('BSP','Bilaspur Junction');

-- Traveler details table with sample values
create table traveller_details(
trainnum int references trains(trainnumber),
emailtraveller varchar(255) references profile(email),
Destination varchar(255),
Boarding varchar(255),
dateoftravel date,
seat_nimber number(2),
car_number varchar(5),
PRIMARY KEY (trainnum, emailtraveller)
);

INSERT INTO traveller_details VALUES(12757,'karandeep.singh@vitstudent.ac.in','rourkela','Katpadi','24-AUG-2020',36,'B2');
INSERT INTO traveller_details VALUES(12757,'Yashkumar.verma2019@vitstudent.ac.in','Ranchi','Katpadi','24-AUG-2020',35,'B2');

