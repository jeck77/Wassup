--카테고리
insert into category (category_code, category_name) values(01,'한식');
insert into category (category_code, category_name) values(02,'중식');
insert into category (category_code, category_name) values(03,'일식');
insert into category (category_code, category_name) values(04,'양식');
insert into category (category_code, category_name) values(05,'치킨');
insert into category (category_code, category_name) values(06,'디저트');
insert into category (category_code, category_name) values(07,'주류');
insert into category (category_code, category_name) values(08,'패스트푸드');

--소메뉴 카테고리
insert into submenu (submenu_code,submenu_name) values (01,'대표메뉴');
insert into submenu (submenu_code,submenu_name) values (02,'전체메뉴');
insert into submenu (submenu_code,submenu_name) values (03,'추가메뉴');
insert into submenu (submenu_code,submenu_name) values (04,'사이드메뉴');
insert into submenu (submenu_code,submenu_name) values (05,'음료');
insert into submenu (submenu_code,submenu_name) values (06,'기타');

--회원 인서트
INSERT INTO BUYER (B_CODE, B_NAME, B_BIRTH, B_ADDR, B_ID, B_PWD, B_NICK, B_PHONE, B_ENROLL_DATE,B_ROADNAME) 
VALUES ('b'||BUYER_SEQ.NEXTVAL,'송형근','1998-06-16','경기도 고양시 덕양구 화신로 170','admin','admin','song','010-1111-1111',SYSDATE,'가로수길');
INSERT INTO BUYER (B_CODE, B_NAME, B_BIRTH, B_ADDR, B_ID, B_PWD, B_NICK, B_PHONE, B_ENROLL_DATE,B_ROADNAME) 
VALUES ('b'||BUYER_SEQ.NEXTVAL,'안정민','1996-08-23','경기도 고양시 일산동구 백석로 151','test1','pass1','뭉','010-2222-2222',SYSDATE,'백석로');
INSERT INTO BUYER (B_CODE, B_NAME, B_BIRTH, B_ADDR, B_ID, B_PWD, B_NICK, B_PHONE, B_ENROLL_DATE,B_ROADNAME) 
VALUES ('b'||BUYER_SEQ.NEXTVAL,'전소현','1996-06-28','서울특별시 광진구 화양동','test2','pass2','먼지','010-3333-3333',SYSDATE,'남대문로');
INSERT INTO BUYER (B_CODE, B_NAME, B_BIRTH, B_ADDR, B_ID, B_PWD, B_NICK, B_PHONE, B_ENROLL_DATE,B_ROADNAME) 
VALUES ('b'||BUYER_SEQ.NEXTVAL,'최지혜','1998-04-12','인천광역시 부평구 수변로93번길','test3','pass3','졔','010-4444-4444',SYSDATE,'수변로');


--05 치킨 판매자 인서트
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 05, '김바삭', '1998-06-25','서울특별시 광진구 화양동 313-6','basak','basak222','바삭바삭','553-47-00633','basakbasak','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 05, '멍먼지', '1998-06-25','서울특별시 종로구 자하문로10길 1','munzi','basak222','나는야먼지','553-47-04563','munzi치킨','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 05, '김부각', '1999-06-25','서울특별시 중구 장충단로10길 3','bugak','basak222','부각좋아','553-47-00999','부각치킨','010-1234-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 05, '김쭈압', '1990-06-25','서울특별시 중구 장충단로10길 17','jjuap','basak222','바사칸치킨','553-35-00633','바사칸치킨','010-1226-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 05, '김푸항', '1991-05-25','서울특별시 종로구 인사동10길 2','poohang','basak222','푸항치킨','533-47-00633','존맛','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 05, '박푸푸', '1998-11-25','서울특별시 강북구 솔샘로 331','ppupu','basak222','푸푸푸','555-47-00633','예예치킨','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 05, '박차차', '1993-06-25','경기도 고양시 덕양구 보광로50번길 12','chacha','basak222','차차','853-47-00633','차차치킨','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 05, '신기해', '1998-06-25','경기도 고양시 덕양구 지도로104번길 14-8','shingihae','basak222','신기하죠','553-47-00339','신기한치킨','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 05, '신도림', '1998-06-25','경기도 고양시 덕양구 마상로107번길 14-1','shindorim','basak222','신도림역','583-47-00339','신도림치킨','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 05, '이도현', '1998-06-25','경기도 고양시 덕양구 삼송로205번길 10','dohyun22','basak222','이도현','553-64-00339','우영이네','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 05, '우하하', '1998-06-25','경기도 고양시 덕양구 삼송로205번길 15','woohaha','basak222','우하하33','553-47-06339','우하하치킨','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 05, '하하하', '1998-06-25','경기도 고양시 덕양구 삼송로205번길 49-19','hahaha','basak222','하하하','553-47-06839','하하치킨','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 05, '민소희', '1998-06-25','서울특별시 광진구 아차산로70길 17-11','sohee312','basak222','소희22','553-47-05339','치킨집','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 05, '홍대영', '1998-06-25','서울특별시 광진구 아차산로70길 30-1','baseball','basak222','농구신','553-46-00339','대영이네치킨','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 05, '고우영', '1998-06-25','인천광역시 부평구 길주남로10번길 11','wowung','basak222','고우영입니다','553-47-01539','우영이치킨','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 05, '고설마', '1998-06-25','인천광역시 부평구 길주남로10번길 32','selma','basak222','설마설마','553-47-06239','설마치킨','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 05, '유치킨', '1998-06-25','서울특별시 광진구 능동로 157','chi022','basak222','유치킨','501-47-01009','유치킨','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 05, '김후야', '1998-06-25','인천광역시 부평구 열우물로50번길 10-7','hoohoo','basak222','후야입니다','553-47-01739','hoo치킨','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 05, '장독대', '1998-06-25','인천광역시 부평구 광장로30번길 3','dokdae','basak222','장독대','553-47-08839','독대치킨','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 05, '유라랑', '1998-06-25','인천광역시 부평구 광장로30번길 20','rarang022','basak222','유라랑','553-47-01009','유랑치킨','010-1244-1667',sysdate,'null','null');

-- 06 디저트 판매자 등록
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 06, '고짱짱', '1998-06-25','서울특별시 광진구 용마산로10길 5','wowung33','basak222','고우영44','653-47-66539','웅케이크','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 06, '유재석', '1998-06-25','서울특별시 광진구 용마산로10길 7','jaseok223','basak222','재석44','653-47-68839','momo카페','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 06, '박명수', '1998-06-25','서울특별시 광진구 구의로10길 7','ms223','basak222','명수44','653-47-61139','명수카페','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 06, '하동훈', '1998-06-25','인천광역시 부평구 시장로20번길 20','haha362','basak222','하하44','653-47-58839','동훈이케익','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 06, '김이박', '1998-06-25','인천광역시 부평구 시장로20번길 27','kimkim223','basak222','김이박박','653-47-38839','디저트야','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 06, '김이나', '1998-06-25','인천광역시 부평구 가재울로 129','enaena','basak222','이나이나','653-47-68139','enaCafe','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 06, '서장훈', '1998-06-25','인천광역시 부평구 가재울로 167','janghoon22','basak222','장훈장훈','653-00-68839','sweet장후니','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 06, '이도현33', '1998-06-25','인천광역시 중구 백년로10번길 8','dh333','basak222','도현33','613-47-68839','도현카페','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 06, '유재석1', '1998-06-25','인천광역시 중구 백년로10번길 18','jaseok2231','basak222','재석441','653-47-18839','재석카페','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 06, '이재석', '1998-06-25','인천광역시 중구 개항로 5','js22222','basak222','이재이재00','600-47-68839','이제카페','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 06, '맹수옹', '1998-06-25','경기도 고양시 일산동구 탄중로417번길','yungyung','basak222','옹44','653-47-61039','옹빙수','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 06, '징기스칸', '1998-06-25','경기도 고양시 일산동구 진밭로70번길 15','jing223','basak222','징지즈칸44','653-23-68839','징기즈칸빙수','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 06, '이얏호응', '1998-06-25','경기도 고양시 일산동구 진밭로70번길 48-17','hahaha00','basak222','야통이','622-47-68839','야통토스트','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 06, '막둥이', '1998-06-25','경기도 고양시 일산동구 진밭로70번길 48-53','mak1414','basak222','막둥44','653-47-33839','막둥카페','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 06, '우리리', '1998-06-25','서울특별시 광진구 아차산로21길 47','woori333','basak222','우리44','653-37-68839','우리카페','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 06, '김씨야', '1998-06-25','서울특별시 광진구 자양로23가길','kim000','basak222','김씨야44','653-47-10839','김씨야카페','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 06, '나최고', '1998-06-25','서울특별시 광진구 능동로15길','nabest223','basak222','나최고44','620-47-68839','나최고샌드위치','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 06, '주치의', '1998-06-25','서울특별시 광진구 군자로2길 9','doctor223','basak222','주치의44','643-47-68839','병원젤리','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 06, '주하나', '1998-06-25','서울특별시 광진구 군자로2길 3-1','hana223','basak222','주하나44','689-47-68839','하나뿐인케익','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 06, '장지징', '1998-06-25','서울특별시 광진구 군자로2길 18-7','jangji223','basak222','장지징44','653-47-10439','먹고싶어빙수','010-1244-1667',sysdate,'null','null');

--03 일식 판매자 등록
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '최일식', '1978-09-22','경기도 고양시 덕양구 화신로 16(행신동)','stest1','spass1','한식싫어','651-87-00621','까쓰야','010-0001-0001', sysdate, null,null);
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '최이식', '1979-09-22','경기도 고양시 덕양구 화신로 21(행신동)','stest2','spass2','애국자','651-87-00622','우동역전','010-0002-0002', sysdate, null,null);
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '최삼식', '1980-09-22','경기도 고양시 덕양구 화신로 22(행신동)','stest3','spass3','매국노','651-87-00623','우쿠우쿠','010-0003-0003', sysdate, null,null);
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '최사식', '1981-09-22','경기도 고양시 덕양구 화신로 31(행신동)','stest4','spass4','정바보','651-87-00624','타코야낏','010-0004-0004', sysdate, null,'null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '최오식', '1982-09-22','서울특별시 중구 남대문로 2(남대문로4가)','stest5','spass5','민바보','651-87-00625','오꼬노미양','010-0005-0005', sysdate, null,'null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '최육식', '1983-09-22','서울특별시 중구 남대문로 2-1(남대문로4가)','stest6','spass6','감스트','651-87-00626','오미덮밥','010-0006-0006', sysdate, null,'null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '최칠식', '1984-09-22','서울특별시 중구 남대문로 2-2(남대문로4가)','stest7','spass7','철구','651-87-00627','가라아게존 ','010-0007-0007', sysdate, null,'null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '최팔식', '1985-09-22','서울특별시 중구 남대문로 2-3(남대문로4가)','stest8','spass8','보겸','651-87-00628','일식러버','010-0008-0008', sysdate, null,'null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '최구식', '1986-09-22','서울특별시 중구 남대문로 2-3(남대문로4가)','stest9','spass9','쏘대장','651-87-00629','볶볶','010-0009-0009', sysdate, null,'null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '최십식', '1987-09-22','서울특별시 중구 남대문로 2-4(남대문로4가)','stest10','spass10','정미니','651-87-00630','텐동텐','010-0010-0010', sysdate, null,'null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '안일식', '1986-12-22','인천광역시 부평구 신트리로 10(부평동)','stest11','spass11','정미니1','651-87-00631','정민하우스','010-0011-0011', sysdate, null,'null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '안이식', '1985-11-22','인천광역시 부평구 신트리로 14(부평동)','stest12','spass12','정미니2','651-87-00632','정민이집','010-0012-0012', sysdate, null,'null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '안삼식', '1984-10-22','인천광역시 부평구 신트리로 16(부평동)','stest13','spass13','정미니3','651-87-00633','AnS','010-0013-0013', sysdate, null,'null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '안사식', '1983-09-22','인천광역시 부평구 신트리로 16-1(부평동)','stest14','spass14','정미니4','651-87-00634','lisik','010-0014-0014', sysdate, null,'null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '안오식', '1982-01-22','인천광역시 부평구 신트리로 18(부평동)','stest15','spass15','정미니5','651-87-00635','부랴부랴','010-0015-0015', sysdate, null,'null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '안육식', '1981-03-22','서울특별시 광진구 군자로 1(화양동)','stest16','spass16','정미니6','616-98-10067','메차쿠차','010-3267-1329', sysdate, null,'\img\logoImg\japan\메차쿠차.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '안칠식', '1980-04-22','서울특별시 광진구 군자로 3(화양동, 화양동복합빌딩)','stest17','spass17','정미니7','616-98-18100','아키라라멘','010-9805-0018', sysdate, null,'\img\logoImg\japan\아키라 라멘.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '안팔식', '1979-06-22','서울특별시 광진구 군자로 3-2(화양동, 성림빌라)','stest18','spass18','정미니8','616-98-67181','카츠야','010-3429-7901', sysdate, null,'\img\logoImg\japan\카츠야.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '안구식', '1978-05-22','서울특별시 광진구 군자로 3-6(화양동)','stest19','spass19','정미니9','616-98-00671','스시야','010-4683-1946', sysdate, null,'\img\logoImg\japan\스시야.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '안십식', '1977-06-22','서울특별시 광진구 군자로 3-7(화양동)','stest20','spass20','정미니10','616-98-81006','타코비','010-2154-9705', sysdate, null,'\img\logoImg\japan\타코비.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '송형근', '1998-06-16','서울특별시 광진구 군자로 3-8(화양동)','shg16','1q2w3e','형근','616-98-71810','오이시라멘','010-4195-9886', sysdate, null,'\img\logoImg\japan\오이시라멘.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '송형식', '1990-07-25','서울특별시 광진구 군자로 4(화양동)','shs07','qwe123','형식','616-98-12312','갓덴스시','010-1020-6834', sysdate, null,'\img\logoImg\japan\갓덴스시.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '안십식', '1977-06-22','서울특별시 광진구 군자로 5(화양동)','stest662','spass662','정미니13','616-98-44736','돈부리 가츠야마','010-2350-0933', sysdate, null,'\img\logoImg\japan\돈부리 가츠야마.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '안십식', '1977-06-22','서울특별시 광진구 군자로 6(화양동)','stest663','spass663','정미니14','616-98-07947','오코노미야끼맛집','010-4999-9877', sysdate, null,'\img\logoImg\japan\오코노미야끼.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '안십식', '1977-06-22','서울특별시 광진구 군자로 6-1(화양동)','stest664','spass664','정미니15','616-98-12478','홍대 타코야','010-8347-9038', sysdate, null,'\img\logoImg\japan\홍대타코야.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '안십식', '1977-06-22','서울특별시 광진구 군자로 8(화양동)','stest665','spass665','정미니16','616-98-64838','히카리우동','010-9823-0330', sysdate, null,'\img\logoImg\japan\히카리우동.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '안십식', '1977-06-22','서울특별시 광진구 군자로 8-1(화양동)','stest666','spass666','정미니17','616-98-46377','후타리','010-7625-0775', sysdate, null,'\img\logoImg\japan\후타리.png');


--07 주류 판매자 등록
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '곽일식', '1966-01-01','경기도 고양시 일산동구 백석로 8(백석동)','stest41','spass41','밤','651-87-00661','마이럽','010-0041-0041', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '곽이식', '1967-01-02','경기도 고양시 일산동구 백석로 13(백석동)','stest42','spass42','라크','651-87-00662','스쿰비스위밍','010-0042-0042', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '곽삼식', '1968-03-03','경기도 고양시 일산동구 백석로 16-3(백석동)','stest43','spass43','쿤','651-87-00663','쿠알라','010-0043-0043', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '곽사식', '1969-03-04','경기도 고양시 일산동구 백석로 24(백석동)','stest44','spass44','자하드','651-87-00664','룸프루','010-0044-0044', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '곽오식', '1970-05-05','경기도 고양시 일산동구 백석로 26(백석동, 흰돌마을3단지아파트)','stest455','spass455','세단','651-87-33665','베베33','010-0045-0045', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '곽육식', '1971-05-06','경기도 고양시 일산서구 송파로 7(가좌동)','stest46','spass46','하유리','651-87-00666','런던웨이','010-0046-0046', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '곽칠식', '1972-07-07','경기도 고양시 일산서구 송파로 9(가좌동)','stest47','spass47','라헬','651-87-00667','파리파티','010-0047-0047', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '곽팔식', '1973-07-08','경기도 고양시 일산서구 송파로 16(가좌동)','stest48','spass48','베이로드','651-87-00668','스톡홀름','010-0048-0048', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '곽구식', '1974-09-09','경기도 고양시 일산서구 송파로 88(가좌동)','stest49','spass49','카라카','651-87-00669','베를린','010-0049-0049', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '곽십식', '1975-09-10','경기도 고양시 일산서구 송파로 131(가좌동)','stest50','spass50','화이트','651-87-00670','덕배','010-0050-0050', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '부일식', '1979-02-28','서울특별시 광진구 구의로 3(구의동)','stest51','spass51','노블레스','651-87-00671','에어에어','010-0051-0051', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '부이식', '1978-02-27','서울특별시 광진구 구의로 4(구의동)','stest52','spass52','신과함께','651-87-00672','버즈','010-0052-0052', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '부삼식', '1977-04-26','서울특별시 광진구 구의로 6(구의동)','stest53','spass53','맛난인생','651-87-00673','갤럭시','010-0053-0053', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '부사식', '1976-04-25','서울특별시 광진구 구의로 7(구의동)','stest54','spass54','정구정구','651-87-00674','아이원','010-0054-0054', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '부오식', '1975-06-24','서울특별시 광진구 구의로 8(구의동)','stest55','spass55','지리가','651-87-00675','리차드','010-0055-0055', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '부육식', '1974-06-23','인천광역시 부평구 수변로 2(부개동)','stest56','spass56','안안','651-87-00676','돈키호테','010-0056-0056', sysdate, 'null','\img\logoImg\liquor\돈키호테.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '부칠식', '1973-08-22','인천광역시 부평구 수변로 3(부개동)','stest57','spass57','송송','651-87-00677','루마나','010-0057-0057', sysdate, 'null','\img\logoImg\liquor\루마나.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '부팔식', '1972-08-21','인천광역시 부평구 수변로 4-1(부개동)','stest58','spass58','만만','651-87-00678','픽시','010-0058-0058', sysdate, 'null','\img\logoImg\liquor\픽시.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '부구식', '1971-10-20','인천광역시 부평구 수변로 4-2(부개동)','stest59','spass59','전전','651-87-00679','카카오','010-0059-0059', sysdate, 'null','\img\logoImg\liquor\카카오.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '부십식', '1970-10-19','인천광역시 부평구 수변로 4-5(부개동, 성지빌라)','stest60','spass60','최최','651-87-00680','옛날포차','010-0060-0060', sysdate, 'null','\img\logoImg\liquor\옛날포차.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '김주류', '1970-10-19','인천광역시 부평구 수변로 4-14(부개동)','alcohol01','alcohol01','wnfb01','412-87-00681','라군','010-3310-1597', sysdate, 'null','\img\logoImg\liquor\라군.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '김주민', '1970-10-19','인천광역시 부평구 수변로 7-1(부개동)','alcohol02','alcohol02','wnfb02','412-87-00682','JASE','010-3310-1598', sysdate, 'null','\img\logoImg\liquor\jase.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '김주황', '1970-10-19','인천광역시 부평구 수변로 13(부개동)','alcohol03','alcohol03','wnfb03','412-87-00683','별빛퐁당','010-3310-1599', sysdate, 'null','\img\logoImg\liquor\별빛퐁당.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '김주팔', '1970-10-19','인천광역시 부평구 수변로 22(부개동)','alcohol04','alcohol04','wnfb04','412-87-00684','BmB','010-3310-1560', sysdate, 'null','\img\logoImg\liquor\BmB.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '김주기', '1970-10-19','인천광역시 부평구 수변로 39-1(부개동)','alcohol05','alcohol05','wnfb05','412-87-00685','APT201','010-3310-1561', sysdate, 'null','\img\logoImg\liquor\APT201.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '김주영', '1970-10-19','인천광역시 부평구 수변로 45-5(부개동)','alcohol06','alcohol06','wnfb06','412-87-00686','언더그라운드','010-3310-1562', sysdate, 'null','\img\logoImg\liquor\언더그라운드.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '김주영', '1970-10-19','인천광역시 부평구 수변로 62(부개동)','alcohol07','alcohol07','wnfb07','412-87-00687','홍옥','010-3310-1563', sysdate, 'null','\img\logoImg\liquor\홍옥.png');

--01 한식 판매자 등록
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 01, '김오식', '1998-06-16','경기도 고양시 일산서구 가좌동397-2','geen06','geen11','해산물시러16','853-87-22633','곱창볶음굳','010-1234-1237',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 01, '김유식', '1998-06-16','경기도 고양시 일산서구 가좌동118-27','geen07','geen11','해산물시러17','853-87-22643','떡뽁이','010-1234-1237',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 01, '김치식', '1998-06-16','경기도 고양시 일산서구 가좌동135-6스카이프라자','geen08','geen11','해산물시러18','853-87-23743','김밥천꾹','010-1234-1237',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 01, '김파식', '1998-06-16','경기도 고양시 덕양구 강매동640','geen11','geen11','해산물시러19','853-87-24643','시금치김밥','010-1234-1237',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 01, '김구식', '1998-06-16','경기도 고양시 덕양구 행주내동23-2','geen10','geen11','해산물시러20','863-87-23743','고등어꾸이','010-1234-1237',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 01, '김열식', '1998-06-16','경기도 고양시 덕양구 강매동 267-1','geen39','geen11','해산물시러21','863-87-23749','낌치찜딹','010-1234-1237',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 01, '최하식', '1998-06-16','경기도 고양시 덕양구 강매동 269-8','geen12','geen11','해산물시러22','863-87-63749','감자탕네','010-1234-1237',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 01, '최두식', '1998-06-16','경기도 고양시 덕양구 강매동215-1','geen13','geen11','해산물시러23','863-87-88749','전가네','010-1234-1237',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 01, '최세식', '1998-06-16','경기도 고양시 덕양구 강매동 212-2','geen14','geen11','해산물시러24','863-87-89849','loveFish','010-1234-1237',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 01, '최사식', '1998-06-16','경기도 고양시 덕양구 강매동131','geen15','geen11','해산물시러25','863-87-91849','떡튀쑨','010-1234-1237',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 01, '최오식', '1998-06-16','경기도 고양시 덕양구 강매동531-2','geen16','geen11','해산물시러26','863-87-91999','금가네','010-1234-1237',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 01, '최유식', '1998-06-16','경기도 고양시 덕양구 강매동88-4','geen17','geen11','해산물시러27','863-87-77699','식까','010-1234-1237',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 01, '최치식', '1998-06-16','서울특별시 광진구 자양동 97-5 뚝섬전망복합문화시설','geen18','geen11','해산물시러28','863-87-77655','비빔맛집','010-1234-1237',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 01, '최파식', '1998-06-16','서울특별시 광진구 자양동701','geen19','geen11','해산물시러29','863-87-77445','레드붐붐','010-1234-1237',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 01, '최구식', '1998-06-16','서울특별시 광진구 화양동 21-49','geen21','geen11','해산물시러30','863-87-65445','블루뿜','010-1234-1237',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 01, '김오류', '1998-06-16',' 서울특별시 중구 난계로 129(신당동)','dark01','geen11','해산물러브','813-87-11633','뼈찌찜','010-1234-1237',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 01, '김이류', '1998-06-16',' 서울특별시 중구 난계로 131(신당동)','dark02','geen11','해산물러브01','819-87-11633','도가니맛국','010-1234-1237',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 01, '김삼류', '1998-06-16',' 서울특별시 중구 난계로11길 40(황학동)','dark03','geen11','해산물러브02','848-87-11633','가리비맛집','010-1234-1237',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 01, '김사류', '1998-06-16',' 서울특별시 중구 난계로13길 29(황학동)','dark04','geen11','해산물러브03','844-87-11633','갈비탕국밥','010-1234-1237',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 01, '김일류', '1998-06-16',' 서울특별시 중구 난계로15길 60-7(황학동)','dark05','geen11','해산물러브04','877-87-11633','국밥국','010-1234-1237',sysdate,'null','null');

-- 02 중식 판매자 등록
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 02, '안일식', '1998-06-16','서울특별시 광진구 화양동18-32','gray01','gray01','마라탕조아01','963-87-65445','lovemara','010-1234-1238',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 02, '안이식', '1998-06-16','서울특별시 광진구 군자동355-14','gray02','gray01','마라탕조아02','963-87-65446','라화쿵뿌','010-1234-1238',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 02, '안세식', '1998-06-16','서울특별시 광진구 군자동361-25','gray03','gray01','마라탕조아03','963-87-65415','저세상매운맛','010-1234-1238',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 02, '안사식', '1998-06-16','서울특별시 광진구 군자동374-4광진광장','gray04','gray01','마라탕조아04','963-88-65415','ilovemara','010-1234-1238',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 02, '안오식', '1998-06-16','경기도 고양시 덕양구 강매동609-18','gray05','gray01','마라탕조아05','963-88-75415','마라샹궈구굳','010-1234-1238',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 02, '안유식', '1998-06-16','경기도 고양시 덕양구 강매동525','gray06','gray01','마라탕조아06','963-88-76315','중국집','010-1234-1238',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 02, '안칠식', '1998-06-16','경기도 고양시 덕양구 강매동222-7','gray07','gray01','마라탕조아07','963-88-76445','사천사','010-1234-1238',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 02, '안파식', '1998-06-16','인천광역시 부평구 갈산동113-3','gray08','gray01','마라탕조아08','963-88-76135','만리양','010-1234-1238',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 02, '안구식', '1998-06-16','인천광역시 부평구 갈산동111-8','gray09','gray01','마라탕조아09','963-88-76465','만리장성','010-1234-1238',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 02, '안시식', '1998-06-16','인천광역시 부평구 갈산동112-29','gray10','gray01','마라탕조아10','973-88-76465','샹하이','010-1234-1238',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 02, '전일식', '1998-06-16','인천광역시 부평구 갈산동 397-2','red01','red02','마라탕조으다01','983-88-77465','베이징','010-1334-1238',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 02, '전투식', '1998-06-16','경기도 고양시 일산서구 가좌동473-1','red02','red02','마라탕조으다02','983-88-17465','타화쿵후','010-1334-1238',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 02, '전삼식', '1998-06-16','경기도 고양시 일산서구 가좌동925','red03','red03','마라탕조으다03','983-88-18465','강하다매운닷','010-1334-1238',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 02, '전사식', '1998-06-16','경기도 고양시 일산서구 가좌동934-2','red04','red03','마라탕조으다04','983-88-18615','탕후루럽','010-1334-1238',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 02, '전오식', '1998-06-16','경기도 고양시 일산서구 가좌동944','red05','red03','마라탕조으다05','983-88-13615','럽마라','010-1334-1238',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 02, '전육식', '1998-06-16','경기도 고양시 일산서구 가좌동453-6','red06','red03','마라탕조으다06','983-88-13625','언니네마라','010-1334-1238',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 02, '전치식', '1998-06-16','경기도 고양시 일산서구 주엽동 72-1 동신파크','red07','red03','마라탕조으다07','983-88-14115','짜장맛집','010-1334-1238',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 02, '전파식', '1998-06-16','경기도 고양시 일산서구 가좌동493-23','red08','red03','마라탕조으다08','983-18-14115','제사상마라','010-1334-1238',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 02, '전팔', '1998-06-16','경기도 고양시 일산서구 가좌동43-32','red100','red0100','마라탕099','983-11-14115','lovemar','010-1334-1238',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 02, '전시식', '1998-06-16','경기도 고양시 일산서구 가좌동461-21','red10','red03','짬뽕국물','984-11-14115','짬뽕국물맛집','010-1334-1238',sysdate,'null','null');

--04 양식 판매자 등록
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 04, '송일식', '1999-01-16','경기도 부천시 중동로 2(송내동)','stest21','spass21','암메놀','651-87-00641','파스타롤린','010-0021-0021', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 04, '송이식', '1998-02-17','경기도 부천시 중동로 2-5(송내동)','stest22','spass22','아다나','651-87-00642','델리한스','010-0022-0022', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 04, '송삼식', '1997-03-18','경기도 부천시 중동로 2-7(송내동)','stest23','spass23','아테드','651-87-00643','마음2','010-0023-0023', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 04, '송사식', '1996-04-19','경기도 부천시 중동로 2-8(송내동)','stest24','spass24','콜린','651-87-00644','뿌싼해운대','010-0024-0024', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 04, '송오식', '1995-05-20','경기도 부천시 중동로 19(송내동, 래미안부천어반비스타)','stest25','spass25','하월프','651-87-00645','8번방의선물','010-0025-0025', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 04, '송육식', '1994-06-21','경기도 고양시 덕양구 행신로 6(행주내동)','stest26','spass26','제니스','651-87-00646','네빠','010-0026-0026', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 04, '송칠식', '1993-07-22','경기도 고양시 덕양구 행신로 7(행주내동)','stest27','spass27','로시파','651-87-00647','음식국가대표','010-0027-0027', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 04, '송팔식', '1992-08-23','경기도 고양시 덕양구 행신로 10(행주내동)','stest28','spass28','멜큐던','651-87-00648','배타랑','010-0028-0028', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 04, '송구식', '1991-09-24','경기도 고양시 덕양구 행신로 20(행주내동)','stest29','spass29','오세오메스','651-87-00649','먕량','010-0029-0029', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 04, '송십식', '1990-10-25','경기도 고양시 덕양구 행신로 21(행주내동)','stest30','spass30','리지리아','651-87-00650','러브액츄얼리','010-0030-0030', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 04, '전일식', '1990-12-02','인천광역시 부평구 백운로 11(십정동, 해피트리)','stest31','spass31','앨팬','651-87-00651','랄라블라','010-0031-0031', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 04, '전이식', '1991-11-03','인천광역시 부평구 백운로 14(십정동)','stest32','spass32','키메일라','651-87-00652','한유','010-0032-0032', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 04, '전삼식', '1992-10-04','인천광역시 부평구 백운로 16(십정동)','stest33','spass33','아르촐뮤','651-87-00653','무구르','010-0033-0033', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 04, '전사식', '1993-09-05','인천광역시 부평구 백운로 16-1(십정동)','stest34','spass34','모거스','651-87-00654','마이마','010-0034-0034', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 04, '전오식', '1994-08-06','인천광역시 부평구 백운로 18(십정동)','stest35','spass35','버곤','651-87-00655','심심미','010-0035-0035', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 04, '전육식', '1995-07-07','서울특별시 중구 삼일대로 362(장교동)','stest36','spass36','미테','651-87-00656','모구모','010-0036-0036', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 04, '전칠식', '1996-06-08','서울특별시 중구 세종대로16길 26(북창동)','stest37','spass37','브리고임','651-87-00657','지지','010-0037-0037', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 04, '전팔식', '1997-05-09','서울특별시 중구 퇴계로 52(회현동1가)','stest38','spass38','님로드','651-87-00658','쟈보','010-0038-0038', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 04, '전구식', '1998-04-10','서울특별시 중구 퇴계로 115(충무로1가)','stest39','spass39','카리스','651-87-00659','이이너','010-0039-0039', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 04, '전십식', '1999-03-11','서울특별시 중구 삼일대로8길 15-1(충무로2가)','stest40','spass40','사피에트','651-87-00660','베베','010-0040-0040', sysdate, 'null','null');

--08 패스트푸드 판매자 등록
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 08, '허일식', '1971-12-19','경기도 부천시 중동로 2(송내동)','stest61','spass61','니니즈','651-87-00681','맥오날드','010-0061-0061', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 08, '허이식', '1971-12-11','경기도 부천시 중동로 2-5(송내동)','stest62','spass62','부기','651-87-00682','롯다리아','010-0062-0062', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 08, '허삼식', '1973-10-13','경기도 부천시 안곡로 4(괴안동, 삼익아파트)','stest63','spass63','바래','651-87-00683','KFB','010-0063-0063', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 08, '허사식', '1973-10-17','경기도 부천시 안곡로 3(괴안동)','stest64','spass64','쿠기','651-87-00684','도미닉피자','010-0064-0064', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 08, '허오식', '1975-05-20','경기도 부천시 안곡로 4-1(괴안동)','stest65','spass65','유미','651-87-00685','교춘치킨','010-0065-0065', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 08, '허육식', '1975-05-21','서울특별시 광진구 광나루로 341(군자동)','stest66','spass66','가렌','651-87-00686','BBC','010-0066-0066', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 08, '허칠식', '1977-07-27','서울특별시 광진구 광나루로 343(군자동)','stest67','spass67','소라카','651-87-00687','BHA','010-0067-0067', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 08, '허팔식', '1977-07-10','서울특별시 광진구 광나루로 344(화양동)','stest68','spass68','람머스','651-87-00688','굽나치킨','010-0068-0068', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 08, '허구식', '1979-06-12','서울특별시 광진구 광나루로 345(군자동)','stest69','spass69','룰루','651-87-00689','치킨갈','010-0069-0069', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 08, '허십식', '1979-06-18','서울특별시 광진구 광나루로 346(화양동, 브라운스톤 화양)','stest70','spass70','카르마','651-87-00690','치구찬','010-0070-0070', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 08, '추일식', '1972-12-12','경기도 고양시 덕양구 행주산성로 5-6(행주내동)','stest71','spass71','나미','651-87-00691','버거퀸','010-0071-0071', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 08, '추이식', '1972-12-22','경기도 고양시 덕양구 행주산성로 5-10(행주내동)','stest72','spass72','쓰레쉬','651-87-00692','피자핫','010-0072-0072', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 08, '추삼식', '1974-10-04','경기도 고양시 덕양구 행주산성로 5-30(행주내동)','stest73','spass73','올라프','651-87-00693','덕화피자','010-0073-0073', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 08, '추사식', '1974-10-08','경기도 고양시 덕양구 행주산성로 5-31(행주내동)','stest74','spass74','애쉬','651-87-00694','파파준스','010-0074-0074', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 08, '추오식', '1976-05-12','경기도 고양시 덕양구 행주산성로 11(행주내동)','stest75','spass75','이즈리얼','651-87-00695','치킨나라 피자공주','010-0075-0075', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 08, '추육식', '1976-05-13','경기도 고양시 일산서구 일산로 485(일산동)','stest76','spass76','자이라','651-87-00696','명랑 핫도그','010-0076-0076', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 08, '추칠식', '1978-07-20','경기도 고양시 일산서구 일산로 486(일산동)','stest77','spass77','르블랑','651-87-00697','닭프라','010-0077-0077', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 08, '추팔식', '1978-07-25','경기도 고양시 일산서구 일산로 487(일산동, 후곡마을18단지아파트)','stest78','spass78','말자하','651-87-00698','김병만','010-0078-0078', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 08, '추구식', '1980-06-25','경기도 고양시 일산서구 일산로 488(일산동, 후곡마을13단지아파트)','stest79','spass79','세라핀','651-87-00699','나나치킨','010-0079-0079', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 08, '추십식', '1980-06-16','경기도 고양시 일산서구 일산로 502(일산동)','stest80','spass80','아리','651-87-00700','맥시나카','010-0080-0080', sysdate, 'null','null');
commit;