drop table home01;
drop sequence home01_seq;
--
create table home01(
	num number primary key,
	id varchar2(30),
	nalja date,
	sub varchar2(30),
	content varchar2(2000)
);
create sequence home01_seq;
--
insert into home01 values (home01_seq.nextval,'user1',sysdate,'테스트1','테스트');
insert into home01 values (home01_seq.nextval,'user2',sysdate,'테스트2','테스트');
insert into home01 values (home01_seq.nextval,'user1',sysdate,'테스트3','테스트');
insert into home01 values (home01_seq.nextval,'user2',sysdate,'테스트4','테스트');
insert into home01 values (home01_seq.nextval,'user3',sysdate,'테스트5','테스트');
commit;
--
select * from home01;