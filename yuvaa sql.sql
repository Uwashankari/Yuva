create database bank;
use bank;
create table employees(e_id int,
e_salary int check (e_salary>8000),
e_name varchar(20) not null,
branch_name varchar(20) not null,
branch_id varchar(10) primary key,
e_age int check(e_age>21));

insert into employees values(100,9000,"suji","chennai","EE01",25),
(101,13000,"shabana","chennai","EE02",25),
(103,15000,"aryan","bangalore","EE03",35),
(102,35000,"kathir","coimbatore","EE04",34),
(104,19000,"arun","bangalore","EE05",33),
(107,52000,"vishnu","coimbatore","EE06",45),
(110,41000,"vishal","chennai","EE07",26),
(113,9000,"vikram","bangalore","EE08",35),
(114,29000,"jasmine","bangalore","EE09",33),
(108,10000,"kaviya","coimbatore","EE10",25);
select*from employees;

create table customer(cus_accNo int not null,
cus_pin int ,
cus_name varchar(20) not null,
balance_amount int,
acc_type varchar(20),
cus_panNo varchar(20) primary key,
cus_contactNo varchar(10),
cus_address varchar(50) default "not mention",
branch_id varchar(20));
select*from customer;

insert into customer values(123456,1111,"vel",10000,"savings_account","vel123","1234567890","salem","EE01"),
(2324345,2222,"yuva",25000,"primary_account","yuva123","9087654329","attur","EE08"),
(12345786,3333,"krish",10500,"savings_account","kris123","1235676789","coimbatore","EE05"),
(1234586,4444,"karthiga",50000,"savings_account","kar123","1234564891","erode","EE09"),
(6789456,5555,"parvathi",45100,"primary_account","par123","4564567456","namakkal","EE02"),
(12334576,7777,"shalini",34567,"primary_account","sha123","0012456753","dharmapuri","EE10"),
(345356,7891,"suriya",56000,"savings_account","suri123","7896878345","hosur","EE03"),
(0098456,7896,"Hari",23000,"primary_account","hari123","3412345967","namakkal","EE07"),
(123789,6722,"nivetha",100000,"savings_account","nivi123","1278789378","belur","EE06"),
(1789456,1110,"ramu",10900,"primary_account","ram123","8649994567","trichy","EE04"),
(5768456,1001,"shobika",76000,"primary_account","shobi123","1234562000","hosur","EE10"),
(1987456,2345,"harini",46300,"savings_account","har123","1275348090","raasipuram","EE10"),
(789156,8999,"selvi",23000,"primary_account","sel123","5678567754","salem","EE09"),
(907656,7890,"naresh",76000,"savings_account","nar123","1234000591","salem","EE08"),
(178966,1234,"priya",16000,"primary_account","pri123","7834780567","attur","EE02");

select*from customer;

use bank;

select customer.cus_accNo, customer.cus_pin, customer.cus_name, customer.balance_amount, customer.acc_type, customer.cus_panNo, 
customer.cus_contactNo, customer.cus_address, employees.e_id, employees.e_salary, employees.e_name, employees.branch_name, employees.e_age
from customer
inner join employees
on employees.branch_id=customer.branch_id;
select*from customer order by branch_id

