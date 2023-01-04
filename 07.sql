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
insert into board(title, content) values('무주택 전후납북피해자 대상 기관추천 특별공급 안내(남양주진접2지구)', '한국토지주택공사에서 우리부에 <남양주진접2 공공주택지구 내 A7블록 공공분양 기관추천 특별공급> 대상자를 아래와 같이 요청하였습니다. 청약을 희망하시는 분께서는 신청기한까지 첨부된 ‘국민주택 등 특별분양 신청서’ 및 관련서류를 통일부 이산가족과로 제출하여 주시기 바랍니다. 다만, 경쟁자가 있는 경우 ‘국민주택 등 특별분양 배점 기준표’의 기준에 따라 최종 추천자를 선정하게 됨을 알려드립니다.

 □ 신청 기한 및 방법

  o 신청 기한 : 2023. 1. 24.(화)까지(우편 소인 기준)

  o 제출 방법 : 우편 제출 * 도장 등 확인 필요, 원본 서류 제출

   - 주소 : 【우 03171】서울특별시 종로구 세종대로 209 정부서울청사 817호

  o 문의 : ☎02-2100-5917(통일부 이산가족과)

  □ 신청자격

  o 입주자모집공고예정일(2022.12.30(금)) 현재 성년자인(서울특별시, 경기도, 인천광역시 거주자) 무주택세대구성원 전원(배우자가 세대 분리된 경우 배우자 및 배우자가 속한 등본의 직계존비속까지 포함)이 [주택 및 분양권 등] 각 목의 모든 요건을 갖춘 세대(「주택공급에 관한 규칙」 제35조제1항제27의2호에 해당하는 자는 제외)로서, 해당기관에서 정한 우선순위 기준에 따라 한국토지주택공사에서 추천한 자');
insert into board(title, content) values('', '');
insert into board(title, content) values('무주택 전후납북피해자 대상 기관추천 특별공급 안내(인천 주안 더샵 아르테)', '포스코건설에서 우리부에 「인천주안 더샵 아르테」 기관추천 특별공급 대상자를 아래와 같이 요청하였습니다. 청약을 희망하시는 분께서는 신청기한까지 첨부된 ‘국민주택 등 특별분양 신청서’ 및 관련서류를 통일부 이산가족과로 제출하여 주시기 바랍니다. 다만, 경쟁자가 있는 경우 ‘국민주택 등 특별분양 배점 기준표’의 기준에 따라 최종 추천자를 선정하게 됨을 알려드립니다.

 □ 신청 기한 및 방법

  o 신청 기한 : 2023. 1. 25.(수)까지(우편 소인 기준)

  o 제출 방법 : 우편 제출 * 도장 등 확인 필요, 원본 서류 제출

   - 주소 : 【우 03171】서울특별시 종로구 세종대로 209 정부서울청사 817호

  o 문의 : ☎02-2100-5917(통일부 이산가족과)

  □ 신청자격

  o 입주자모집공고예정일(2023.1.27.(금) 예정) 현재 성년자인(서울특별시, 경기도, 인천광역시 거주자) 무주택세대구성원 전원(배우자가 세대 분리된 경우 배우자 및 배우자가 속한 등본의 직계존비속까지 포함)이 [주택 및 분양권 등] 각 목의 모든 요건을 갖춘 세대(「주택공급에 관한 규칙」 제35조제1항제27의2호에 해당하는 자는 제외)로서, 해당기관에서 정한 우선순위 기준에 따라 포스코건설에서 추천한 자');
insert into board(title, content) values('23. 1학기「대학생을 위한 통일 특강 및 강좌」선정결과 발표', '1. 2023년 1학기「대학생을 위한 통일 특강 및 강좌 사업」공모에 참여해 주신 각 대학교에 진심으로 감사드립니다.

2. 2023년 1학기「대학생을 위한 통일 특강 및 강좌 사업」최종 선정 대학(총 23개 대학)을 다음과 같이 알려드립니다.

구분	선정 대학(23개교)
특강(9개교)	강릉원주대, 고려대(세종), 공주교대, 대구대, 동국대, 동아대, 성신여대, 청주대, 춘천교대
강좌(14개교)	경희대, 공주대, 나사렛대, 대구가톨릭대, 대전대, 동국대, 동서대, 연세대(미래), 원광대, 진주교대, 창원대, 한라대, 한양대, 호남대
* 2023년 2학기 참여대학 모집은 2023년 5월 경 실시할 예정이며, 특강 8개교, 강좌 13개교 대학을 선정할 예정이니 많은 관심 바랍니다.');
select * from board;
commit;

create table qna(
	qno int primary key auto_increment comment 'PK',
    title varchar(200) not null comment '제목',
    content varchar(1000) not null comment '내용',
	author varchar(50) not null comment '작성자',
    credate datetime default now() comment '작성날짜',
    visited int default 0 comment '읽은 횟수',
    lev int default 0 comment '0:질문 1: 답변',
    pos int comment '어떤 글의 답변인지 찾기위해 사용'
);
drop table qna;
desc qna;
(select a.qno+1 from(select max(qno) qno from qna where lev=0)a);
(select max(pos)+1 from qna group by pos);
insert into qna(title, content, author, lev, pos) values('질문 테스트제목', '질문 테스트 내용', 'ahj', 0, 1);
insert into qna(title, content, author, lev, pos) values('질문 테스트제목2', '질문 테스트 내용2', 'ahj', 1, 1);
insert into qna(title, content, author, lev, pos) values('질문 테스트제목3', '질문 테스트 내용3', 'ahj', 0, (select a.qno+1 from(select max(qno) qno from qna where lev=0)a));

select * from qna;
select * from qna where lev = 0;
delete from qna;
commit;