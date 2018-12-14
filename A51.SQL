create table books
(
ISBN varchar(10),
Title varchar(10),
Author varchar(10),
Publisher varchar(10),
primary key(ISBN)
);

create table student1
(
usn varchar(10),
name varchar(10),
sem int,
dept varchar(3),
primary key(usn)
);

create table borrow
(
ISBN varchar(10),
usn varchar(10),
dates varchar(10),
foreign key(ISBN) references books(ISBN),
foreign key(usn) references student1(usn)
);

Insert into books 
values('001','T1','A1','P1');
Insert into books 
values('002','T2','A2','P2');
Insert into books 
values('003','T3','A3','P3');
Insert into books 
values('004','T4','A4','P4');

 Insert into student1 
 values('111','aaa','3','ISE')
 Insert into student1 
 values('222','bbb','4','CSE')
 Insert into student1 
 values('333','ccc','3','CSE')
 Insert into student1 
 values('444','ddd','4','ISE')
 Insert into student1 
 values('555','eee','4','ISE')

 Insert into borrow 
 values('001','222','1/2/13')
 Insert into borrow 
 values('002','333','2/2/13')
 Insert into borrow 
 values('003','111','3/2/13')
 Insert into borrow 
 values('005','444','4/2/13')
 Insert into borrow 
 values('003','555','5/2/13')

select NAME 
from student1
 where USN=(select USN from borrow where ISBN='001');

select NAME from student1
 where USN=(select USN from borrow where ISBN=(select ISBN from books where TITLE='T2'));

select count(ISBN) from borrow
 group by USN;

