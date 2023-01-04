create database unikr;
use unikr;
create table sample(
	id varchar(50),
    pw varchar(50)
);
insert into sample values('admin', '1234');
insert into sample values('ahj', '1234');
select * from sample;
commit;

create table user(
	uno bigint primary key auto_increment comment 'PK',
    id varchar(50) not null comment '아이디',
    pw varchar(200) not null comment '비밀번호',
    name varchar(50) not null comment '이름',
    tel varchar(20) not null comment '전화번호',
    addr varchar(100) not null comment '주소',
    email varchar(50) not null comment '메일'
);
drop table user;
delete from user;
select * from user;
select * from user where id = 'admin' and pw = '$2a$10$S.MXksz99lqRIYjqM6fEsOqnqseqCw0QiC2YPHvsOcsjgmCSF3nzy';

create table board(
	bno int primary key auto_increment comment 'PK',
    title varchar(200) not null comment '공지사항 제목',
    content varchar(1000) not null comment '내용',
    credate datetime default now() comment '작성일',
    visited int default 0 comment '읽은 횟수'
);

desc board;
insert into board(title, content) values('「인천통일+센터 청년 서포터즈」선발 최종 합격자 공고', '통일부 「XX통일+센터 XX 서포터즈」에 지원해 주신 모든 분들께 감사드립니다. 최종 합격자를 아래와 같이 공고합니다.

1. 최종 합격자 명단

김 ○ 석
김 ○ 름
박 ○ 환
송 ○ 원
○ 최종 합격자는 통일부 홈페이지 및 인천통일+센터 블로그 공고 외에 별도 연락


2. 향후 일정
○ 정기모임 및 발대식 등 추후 서포터즈 일정을 개별 공지할 예정입니다.
○ 기타 궁금한 사항은 통일부 인천통일+센터(☎00-000-0000)로 문의하시기 바랍니다.');
insert into board(title, content) values('test', 'test');
insert into board(title, content) values('test', 'test');
select * from board;
commit;