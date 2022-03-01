drop table homeuser01;
drop sequence homeuser01_seq;
create table homeuser01(
	num number primary key,
	id varchar2(30) unique not null,
	pw varchar2(30) not null,
	name varchar2(30) not null,
	age number(3)
);
create sequence homeuser01_seq;
--
insert into homeuser01 values (homeuser01_seq.nextval,'user01','1234','홍길동',41);
insert into homeuser01 values (homeuser01_seq.nextval,'user02','1234','김길동',21);
insert into homeuser01 values (homeuser01_seq.nextval,'user03','1234','박길동',36);
commit;
--
select * from homeuser01;