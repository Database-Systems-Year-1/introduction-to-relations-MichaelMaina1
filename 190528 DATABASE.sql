create table Branch_Supplier (branch_id int,supplier_name varchar(50),supply_type varchar(50));
insert into Branch_Supplier (branch_id,supplier_name,supply_type)
values
(2,'Hammer Mill','Paper'),
(2,'Uni-ball','Writing Utensils'),
(3,'Patriot Paper','Paper'),
(2,'J.T.Forms & Labels','Custom Forms'),
(3,'Uni-ball','Writing Utensils'),
(3,'Hammer Mill','Paper'),
(3,'Stamford Labels','Custom Forms');

create table Branch (branch_id INT PRIMARY KEY,branch_name char(9),mgr_id INT,mgr_start_date date);
insert into Branch (branch_id, branch_name, mgr_id, mgr_start_date)
values
(1, 'Corporate', 100, '2006-02-09'),
(2, 'Scranton', 102, '1992-04-06'),
(3, 'Stamford', 106, '1998-02-13');

create table Client (client_id INT PRIMARY KEY, client_name char(20), branch_id INT);
insert into Client (client_id, client_name, branch_id)
values
(400, 'Dunmore Highschool', 2),
(401, 'Lackawana Country', 2),
(402, 'FedEx', 3),
(403, 'John Daly Law, LLC', 3),
(404, 'Scranton Whitepages', 2),
(405, 'Times Newspaper', 3),
(406, 'FedEx', 2);

UPDATE Client
SET client_name = 'Amazon', branch_id = 4
WHERE client.client_id = 405;

ALTER TABLE Client
ADD client_email VARCHAR(255);

ALTER TABLE Client
ALTER COLUMN  client_email TYPE VARCHAR(320);

ALTER TABLE Client
DROP COLUMN client_email;

DROP TABLE Branch_Supplier;

SELECT * FROM client;

SELECT * FROM branch;
