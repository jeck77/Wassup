--ī�װ�
insert into category (category_code, category_name) values(01,'�ѽ�');
insert into category (category_code, category_name) values(02,'�߽�');
insert into category (category_code, category_name) values(03,'�Ͻ�');
insert into category (category_code, category_name) values(04,'���');
insert into category (category_code, category_name) values(05,'ġŲ');
insert into category (category_code, category_name) values(06,'����Ʈ');
insert into category (category_code, category_name) values(07,'�ַ�');
insert into category (category_code, category_name) values(08,'�н�ƮǪ��');

--�Ҹ޴� ī�װ�
insert into submenu (submenu_code,submenu_name) values (01,'��ǥ�޴�');
insert into submenu (submenu_code,submenu_name) values (02,'��ü�޴�');
insert into submenu (submenu_code,submenu_name) values (03,'�߰��޴�');
insert into submenu (submenu_code,submenu_name) values (04,'���̵�޴�');
insert into submenu (submenu_code,submenu_name) values (05,'����');
insert into submenu (submenu_code,submenu_name) values (06,'��Ÿ');

--ȸ�� �μ�Ʈ
INSERT INTO BUYER (B_CODE, B_NAME, B_BIRTH, B_ADDR, B_ID, B_PWD, B_NICK, B_PHONE, B_ENROLL_DATE,B_ROADNAME) 
VALUES ('b'||BUYER_SEQ.NEXTVAL,'������','1998-06-16','��⵵ ���� ���籸 ȭ�ŷ� 170','admin','admin','song','010-1111-1111',SYSDATE,'���μ���');
INSERT INTO BUYER (B_CODE, B_NAME, B_BIRTH, B_ADDR, B_ID, B_PWD, B_NICK, B_PHONE, B_ENROLL_DATE,B_ROADNAME) 
VALUES ('b'||BUYER_SEQ.NEXTVAL,'������','1996-08-23','��⵵ ���� �ϻ굿�� �鼮�� 151','test1','pass1','��','010-2222-2222',SYSDATE,'�鼮��');
INSERT INTO BUYER (B_CODE, B_NAME, B_BIRTH, B_ADDR, B_ID, B_PWD, B_NICK, B_PHONE, B_ENROLL_DATE,B_ROADNAME) 
VALUES ('b'||BUYER_SEQ.NEXTVAL,'������','1996-06-28','����Ư���� ������ ȭ�絿','test2','pass2','����','010-3333-3333',SYSDATE,'���빮��');
INSERT INTO BUYER (B_CODE, B_NAME, B_BIRTH, B_ADDR, B_ID, B_PWD, B_NICK, B_PHONE, B_ENROLL_DATE,B_ROADNAME) 
VALUES ('b'||BUYER_SEQ.NEXTVAL,'������','1998-04-12','��õ������ ���� ������93����','test3','pass3','��','010-4444-4444',SYSDATE,'������');


--05 ġŲ �Ǹ��� �μ�Ʈ
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 05, '��ٻ�', '1998-06-25','����Ư���� ������ ȭ�絿 313-6','basak','basak222','�ٻ�ٻ�','553-47-00633','basakbasak','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 05, '�۸���', '1998-06-25','����Ư���� ���α� ���Ϲ���10�� 1','munzi','basak222','���¾߸���','553-47-04563','munziġŲ','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 05, '��ΰ�', '1999-06-25','����Ư���� �߱� ����ܷ�10�� 3','bugak','basak222','�ΰ�����','553-47-00999','�ΰ�ġŲ','010-1234-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 05, '���޾�', '1990-06-25','����Ư���� �߱� ����ܷ�10�� 17','jjuap','basak222','�ٻ�ĭġŲ','553-35-00633','�ٻ�ĭġŲ','010-1226-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 05, '��Ǫ��', '1991-05-25','����Ư���� ���α� �λ絿10�� 2','poohang','basak222','Ǫ��ġŲ','533-47-00633','����','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 05, '��ǪǪ', '1998-11-25','����Ư���� ���ϱ� �ֻ��� 331','ppupu','basak222','ǪǪǪ','555-47-00633','����ġŲ','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 05, '������', '1993-06-25','��⵵ ���� ���籸 ������50���� 12','chacha','basak222','����','853-47-00633','����ġŲ','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 05, '�ű���', '1998-06-25','��⵵ ���� ���籸 ������104���� 14-8','shingihae','basak222','�ű�����','553-47-00339','�ű���ġŲ','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 05, '�ŵ���', '1998-06-25','��⵵ ���� ���籸 �����107���� 14-1','shindorim','basak222','�ŵ�����','583-47-00339','�ŵ���ġŲ','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 05, '�̵���', '1998-06-25','��⵵ ���� ���籸 ��۷�205���� 10','dohyun22','basak222','�̵���','553-64-00339','�쿵�̳�','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 05, '������', '1998-06-25','��⵵ ���� ���籸 ��۷�205���� 15','woohaha','basak222','������33','553-47-06339','������ġŲ','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 05, '������', '1998-06-25','��⵵ ���� ���籸 ��۷�205���� 49-19','hahaha','basak222','������','553-47-06839','����ġŲ','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 05, '�μ���', '1998-06-25','����Ư���� ������ �������70�� 17-11','sohee312','basak222','����22','553-47-05339','ġŲ��','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 05, 'ȫ�뿵', '1998-06-25','����Ư���� ������ �������70�� 30-1','baseball','basak222','�󱸽�','553-46-00339','�뿵�̳�ġŲ','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 05, '��쿵', '1998-06-25','��õ������ ���� ���ֳ���10���� 11','wowung','basak222','��쿵�Դϴ�','553-47-01539','�쿵��ġŲ','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 05, '����', '1998-06-25','��õ������ ���� ���ֳ���10���� 32','selma','basak222','��������','553-47-06239','����ġŲ','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 05, '��ġŲ', '1998-06-25','����Ư���� ������ �ɵ��� 157','chi022','basak222','��ġŲ','501-47-01009','��ġŲ','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 05, '���ľ�', '1998-06-25','��õ������ ���� ���칰��50���� 10-7','hoohoo','basak222','�ľ��Դϴ�','553-47-01739','hooġŲ','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 05, '�嵶��', '1998-06-25','��õ������ ���� �����30���� 3','dokdae','basak222','�嵶��','553-47-08839','����ġŲ','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 05, '�����', '1998-06-25','��õ������ ���� �����30���� 20','rarang022','basak222','�����','553-47-01009','����ġŲ','010-1244-1667',sysdate,'null','null');

-- 06 ����Ʈ �Ǹ��� ���
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 06, '��¯¯', '1998-06-25','����Ư���� ������ �븶���10�� 5','wowung33','basak222','��쿵44','653-47-66539','������ũ','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 06, '���缮', '1998-06-25','����Ư���� ������ �븶���10�� 7','jaseok223','basak222','�缮44','653-47-68839','momoī��','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 06, '�ڸ��', '1998-06-25','����Ư���� ������ ���Ƿ�10�� 7','ms223','basak222','���44','653-47-61139','���ī��','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 06, '�ϵ���', '1998-06-25','��õ������ ���� �����20���� 20','haha362','basak222','����44','653-47-58839','����������','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 06, '���̹�', '1998-06-25','��õ������ ���� �����20���� 27','kimkim223','basak222','���̹ڹ�','653-47-38839','����Ʈ��','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 06, '���̳�', '1998-06-25','��õ������ ���� ������ 129','enaena','basak222','�̳��̳�','653-47-68139','enaCafe','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 06, '������', '1998-06-25','��õ������ ���� ������ 167','janghoon22','basak222','��������','653-00-68839','sweet���Ĵ�','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 06, '�̵���33', '1998-06-25','��õ������ �߱� ����10���� 8','dh333','basak222','����33','613-47-68839','����ī��','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 06, '���缮1', '1998-06-25','��õ������ �߱� ����10���� 18','jaseok2231','basak222','�缮441','653-47-18839','�缮ī��','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 06, '���缮', '1998-06-25','��õ������ �߱� ���׷� 5','js22222','basak222','��������00','600-47-68839','����ī��','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 06, '�ͼ���', '1998-06-25','��⵵ ���� �ϻ굿�� ź�߷�417����','yungyung','basak222','��44','653-47-61039','�˺���','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 06, '¡�⽺ĭ', '1998-06-25','��⵵ ���� �ϻ굿�� �����70���� 15','jing223','basak222','¡����ĭ44','653-23-68839','¡����ĭ����','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 06, '�̾�ȣ��', '1998-06-25','��⵵ ���� �ϻ굿�� �����70���� 48-17','hahaha00','basak222','������','622-47-68839','�����佺Ʈ','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 06, '������', '1998-06-25','��⵵ ���� �ϻ굿�� �����70���� 48-53','mak1414','basak222','����44','653-47-33839','����ī��','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 06, '�츮��', '1998-06-25','����Ư���� ������ �������21�� 47','woori333','basak222','�츮44','653-37-68839','�츮ī��','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 06, '�达��', '1998-06-25','����Ư���� ������ �ھ��23����','kim000','basak222','�达��44','653-47-10839','�达��ī��','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 06, '���ְ�', '1998-06-25','����Ư���� ������ �ɵ���15��','nabest223','basak222','���ְ�44','620-47-68839','���ְ������ġ','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 06, '��ġ��', '1998-06-25','����Ư���� ������ ���ڷ�2�� 9','doctor223','basak222','��ġ��44','643-47-68839','��������','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 06, '���ϳ�', '1998-06-25','����Ư���� ������ ���ڷ�2�� 3-1','hana223','basak222','���ϳ�44','689-47-68839','�ϳ���������','010-1244-1667',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 06, '����¡', '1998-06-25','����Ư���� ������ ���ڷ�2�� 18-7','jangji223','basak222','����¡44','653-47-10439','�԰�;����','010-1244-1667',sysdate,'null','null');

--03 �Ͻ� �Ǹ��� ���
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '���Ͻ�', '1978-09-22','��⵵ ���� ���籸 ȭ�ŷ� 16(��ŵ�)','stest1','spass1','�ѽĽȾ�','651-87-00621','���','010-0001-0001', sysdate, null,null);
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '���̽�', '1979-09-22','��⵵ ���� ���籸 ȭ�ŷ� 21(��ŵ�)','stest2','spass2','�ֱ���','651-87-00622','�쵿����','010-0002-0002', sysdate, null,null);
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '�ֻ��', '1980-09-22','��⵵ ���� ���籸 ȭ�ŷ� 22(��ŵ�)','stest3','spass3','�ű���','651-87-00623','�������','010-0003-0003', sysdate, null,null);
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '�ֻ��', '1981-09-22','��⵵ ���� ���籸 ȭ�ŷ� 31(��ŵ�)','stest4','spass4','���ٺ�','651-87-00624','Ÿ�ھ߳�','010-0004-0004', sysdate, null,'null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '�ֿ���', '1982-09-22','����Ư���� �߱� ���빮�� 2(���빮��4��)','stest5','spass5','�ιٺ�','651-87-00625','������̾�','010-0005-0005', sysdate, null,'null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '������', '1983-09-22','����Ư���� �߱� ���빮�� 2-1(���빮��4��)','stest6','spass6','����Ʈ','651-87-00626','���̵���','010-0006-0006', sysdate, null,'null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '��ĥ��', '1984-09-22','����Ư���� �߱� ���빮�� 2-2(���빮��4��)','stest7','spass7','ö��','651-87-00627','����ư��� ','010-0007-0007', sysdate, null,'null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '���Ƚ�', '1985-09-22','����Ư���� �߱� ���빮�� 2-3(���빮��4��)','stest8','spass8','����','651-87-00628','�Ͻķ���','010-0008-0008', sysdate, null,'null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '�ֱ���', '1986-09-22','����Ư���� �߱� ���빮�� 2-3(���빮��4��)','stest9','spass9','�����','651-87-00629','����','010-0009-0009', sysdate, null,'null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '�ֽʽ�', '1987-09-22','����Ư���� �߱� ���빮�� 2-4(���빮��4��)','stest10','spass10','���̴�','651-87-00630','�ٵ���','010-0010-0010', sysdate, null,'null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '���Ͻ�', '1986-12-22','��õ������ ���� ��Ʈ���� 10(����)','stest11','spass11','���̴�1','651-87-00631','�����Ͽ콺','010-0011-0011', sysdate, null,'null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '���̽�', '1985-11-22','��õ������ ���� ��Ʈ���� 14(����)','stest12','spass12','���̴�2','651-87-00632','��������','010-0012-0012', sysdate, null,'null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '�Ȼ��', '1984-10-22','��õ������ ���� ��Ʈ���� 16(����)','stest13','spass13','���̴�3','651-87-00633','AnS','010-0013-0013', sysdate, null,'null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '�Ȼ��', '1983-09-22','��õ������ ���� ��Ʈ���� 16-1(����)','stest14','spass14','���̴�4','651-87-00634','lisik','010-0014-0014', sysdate, null,'null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '�ȿ���', '1982-01-22','��õ������ ���� ��Ʈ���� 18(����)','stest15','spass15','���̴�5','651-87-00635','�η��η�','010-0015-0015', sysdate, null,'null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '������', '1981-03-22','����Ư���� ������ ���ڷ� 1(ȭ�絿)','stest16','spass16','���̴�6','616-98-10067','��������','010-3267-1329', sysdate, null,'\img\logoImg\japan\��������.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '��ĥ��', '1980-04-22','����Ư���� ������ ���ڷ� 3(ȭ�絿, ȭ�絿���պ���)','stest17','spass17','���̴�7','616-98-18100','��Ű����','010-9805-0018', sysdate, null,'\img\logoImg\japan\��Ű�� ���.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '���Ƚ�', '1979-06-22','����Ư���� ������ ���ڷ� 3-2(ȭ�絿, ��������)','stest18','spass18','���̴�8','616-98-67181','ī����','010-3429-7901', sysdate, null,'\img\logoImg\japan\ī����.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '�ȱ���', '1978-05-22','����Ư���� ������ ���ڷ� 3-6(ȭ�絿)','stest19','spass19','���̴�9','616-98-00671','���þ�','010-4683-1946', sysdate, null,'\img\logoImg\japan\���þ�.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '�Ƚʽ�', '1977-06-22','����Ư���� ������ ���ڷ� 3-7(ȭ�絿)','stest20','spass20','���̴�10','616-98-81006','Ÿ�ں�','010-2154-9705', sysdate, null,'\img\logoImg\japan\Ÿ�ں�.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '������', '1998-06-16','����Ư���� ������ ���ڷ� 3-8(ȭ�絿)','shg16','1q2w3e','����','616-98-71810','���̽ö��','010-4195-9886', sysdate, null,'\img\logoImg\japan\���̽ö��.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '������', '1990-07-25','����Ư���� ������ ���ڷ� 4(ȭ�絿)','shs07','qwe123','����','616-98-12312','��������','010-1020-6834', sysdate, null,'\img\logoImg\japan\��������.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '�Ƚʽ�', '1977-06-22','����Ư���� ������ ���ڷ� 5(ȭ�絿)','stest662','spass662','���̴�13','616-98-44736','���θ� �����߸�','010-2350-0933', sysdate, null,'\img\logoImg\japan\���θ� �����߸�.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '�Ƚʽ�', '1977-06-22','����Ư���� ������ ���ڷ� 6(ȭ�絿)','stest663','spass663','���̴�14','616-98-07947','���ڳ�̾߳�����','010-4999-9877', sysdate, null,'\img\logoImg\japan\���ڳ�̾߳�.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '�Ƚʽ�', '1977-06-22','����Ư���� ������ ���ڷ� 6-1(ȭ�絿)','stest664','spass664','���̴�15','616-98-12478','ȫ�� Ÿ�ھ�','010-8347-9038', sysdate, null,'\img\logoImg\japan\ȫ��Ÿ�ھ�.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '�Ƚʽ�', '1977-06-22','����Ư���� ������ ���ڷ� 8(ȭ�絿)','stest665','spass665','���̴�16','616-98-64838','��ī���쵿','010-9823-0330', sysdate, null,'\img\logoImg\japan\��ī���쵿.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 03, '�Ƚʽ�', '1977-06-22','����Ư���� ������ ���ڷ� 8-1(ȭ�絿)','stest666','spass666','���̴�17','616-98-46377','��Ÿ��','010-7625-0775', sysdate, null,'\img\logoImg\japan\��Ÿ��.png');


--07 �ַ� �Ǹ��� ���
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '���Ͻ�', '1966-01-01','��⵵ ���� �ϻ굿�� �鼮�� 8(�鼮��)','stest41','spass41','��','651-87-00661','���̷�','010-0041-0041', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '���̽�', '1967-01-02','��⵵ ���� �ϻ굿�� �鼮�� 13(�鼮��)','stest42','spass42','��ũ','651-87-00662','���������','010-0042-0042', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '�����', '1968-03-03','��⵵ ���� �ϻ굿�� �鼮�� 16-3(�鼮��)','stest43','spass43','��','651-87-00663','��˶�','010-0043-0043', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '�����', '1969-03-04','��⵵ ���� �ϻ굿�� �鼮�� 24(�鼮��)','stest44','spass44','���ϵ�','651-87-00664','������','010-0044-0044', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '������', '1970-05-05','��⵵ ���� �ϻ굿�� �鼮�� 26(�鼮��, �򵹸���3��������Ʈ)','stest455','spass455','����','651-87-33665','����33','010-0045-0045', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '������', '1971-05-06','��⵵ ���� �ϻ꼭�� ���ķ� 7(���µ�)','stest46','spass46','������','651-87-00666','��������','010-0046-0046', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '��ĥ��', '1972-07-07','��⵵ ���� �ϻ꼭�� ���ķ� 9(���µ�)','stest47','spass47','����','651-87-00667','�ĸ���Ƽ','010-0047-0047', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '���Ƚ�', '1973-07-08','��⵵ ���� �ϻ꼭�� ���ķ� 16(���µ�)','stest48','spass48','���̷ε�','651-87-00668','����Ȧ��','010-0048-0048', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '������', '1974-09-09','��⵵ ���� �ϻ꼭�� ���ķ� 88(���µ�)','stest49','spass49','ī��ī','651-87-00669','������','010-0049-0049', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '���ʽ�', '1975-09-10','��⵵ ���� �ϻ꼭�� ���ķ� 131(���µ�)','stest50','spass50','ȭ��Ʈ','651-87-00670','����','010-0050-0050', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '���Ͻ�', '1979-02-28','����Ư���� ������ ���Ƿ� 3(���ǵ�)','stest51','spass51','�����','651-87-00671','�����','010-0051-0051', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '���̽�', '1978-02-27','����Ư���� ������ ���Ƿ� 4(���ǵ�)','stest52','spass52','�Ű��Բ�','651-87-00672','����','010-0052-0052', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '�λ��', '1977-04-26','����Ư���� ������ ���Ƿ� 6(���ǵ�)','stest53','spass53','�����λ�','651-87-00673','������','010-0053-0053', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '�λ��', '1976-04-25','����Ư���� ������ ���Ƿ� 7(���ǵ�)','stest54','spass54','��������','651-87-00674','���̿�','010-0054-0054', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '�ο���', '1975-06-24','����Ư���� ������ ���Ƿ� 8(���ǵ�)','stest55','spass55','������','651-87-00675','������','010-0055-0055', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '������', '1974-06-23','��õ������ ���� ������ 2(�ΰ���)','stest56','spass56','�Ⱦ�','651-87-00676','��Űȣ��','010-0056-0056', sysdate, 'null','\img\logoImg\liquor\��Űȣ��.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '��ĥ��', '1973-08-22','��õ������ ���� ������ 3(�ΰ���)','stest57','spass57','�ۼ�','651-87-00677','�縶��','010-0057-0057', sysdate, 'null','\img\logoImg\liquor\�縶��.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '���Ƚ�', '1972-08-21','��õ������ ���� ������ 4-1(�ΰ���)','stest58','spass58','����','651-87-00678','�Ƚ�','010-0058-0058', sysdate, 'null','\img\logoImg\liquor\�Ƚ�.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '�α���', '1971-10-20','��õ������ ���� ������ 4-2(�ΰ���)','stest59','spass59','����','651-87-00679','īī��','010-0059-0059', sysdate, 'null','\img\logoImg\liquor\īī��.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '�νʽ�', '1970-10-19','��õ������ ���� ������ 4-5(�ΰ���, ��������)','stest60','spass60','����','651-87-00680','��������','010-0060-0060', sysdate, 'null','\img\logoImg\liquor\��������.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '���ַ�', '1970-10-19','��õ������ ���� ������ 4-14(�ΰ���)','alcohol01','alcohol01','wnfb01','412-87-00681','��','010-3310-1597', sysdate, 'null','\img\logoImg\liquor\��.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '���ֹ�', '1970-10-19','��õ������ ���� ������ 7-1(�ΰ���)','alcohol02','alcohol02','wnfb02','412-87-00682','JASE','010-3310-1598', sysdate, 'null','\img\logoImg\liquor\jase.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '����Ȳ', '1970-10-19','��õ������ ���� ������ 13(�ΰ���)','alcohol03','alcohol03','wnfb03','412-87-00683','��������','010-3310-1599', sysdate, 'null','\img\logoImg\liquor\��������.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '������', '1970-10-19','��õ������ ���� ������ 22(�ΰ���)','alcohol04','alcohol04','wnfb04','412-87-00684','BmB','010-3310-1560', sysdate, 'null','\img\logoImg\liquor\BmB.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '���ֱ�', '1970-10-19','��õ������ ���� ������ 39-1(�ΰ���)','alcohol05','alcohol05','wnfb05','412-87-00685','APT201','010-3310-1561', sysdate, 'null','\img\logoImg\liquor\APT201.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '���ֿ�', '1970-10-19','��õ������ ���� ������ 45-5(�ΰ���)','alcohol06','alcohol06','wnfb06','412-87-00686','����׶���','010-3310-1562', sysdate, 'null','\img\logoImg\liquor\����׶���.png');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 07, '���ֿ�', '1970-10-19','��õ������ ���� ������ 62(�ΰ���)','alcohol07','alcohol07','wnfb07','412-87-00687','ȫ��','010-3310-1563', sysdate, 'null','\img\logoImg\liquor\ȫ��.png');

--01 �ѽ� �Ǹ��� ���
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 01, '�����', '1998-06-16','��⵵ ���� �ϻ꼭�� ���µ�397-2','geen06','geen11','�ػ깰�÷�16','853-87-22633','��â������','010-1234-1237',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 01, '������', '1998-06-16','��⵵ ���� �ϻ꼭�� ���µ�118-27','geen07','geen11','�ػ깰�÷�17','853-87-22643','������','010-1234-1237',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 01, '��ġ��', '1998-06-16','��⵵ ���� �ϻ꼭�� ���µ�135-6��ī��������','geen08','geen11','�ػ깰�÷�18','853-87-23743','���õ��','010-1234-1237',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 01, '���Ľ�', '1998-06-16','��⵵ ���� ���籸 ���ŵ�640','geen11','geen11','�ػ깰�÷�19','853-87-24643','�ñ�ġ���','010-1234-1237',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 01, '�豸��', '1998-06-16','��⵵ ���� ���籸 ���ֳ���23-2','geen10','geen11','�ػ깰�÷�20','863-87-23743','�������','010-1234-1237',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 01, '�迭��', '1998-06-16','��⵵ ���� ���籸 ���ŵ� 267-1','geen39','geen11','�ػ깰�÷�21','863-87-23749','��ġ��R','010-1234-1237',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 01, '���Ͻ�', '1998-06-16','��⵵ ���� ���籸 ���ŵ� 269-8','geen12','geen11','�ػ깰�÷�22','863-87-63749','��������','010-1234-1237',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 01, '�ֵν�', '1998-06-16','��⵵ ���� ���籸 ���ŵ�215-1','geen13','geen11','�ػ깰�÷�23','863-87-88749','������','010-1234-1237',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 01, '�ּ���', '1998-06-16','��⵵ ���� ���籸 ���ŵ� 212-2','geen14','geen11','�ػ깰�÷�24','863-87-89849','loveFish','010-1234-1237',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 01, '�ֻ��', '1998-06-16','��⵵ ���� ���籸 ���ŵ�131','geen15','geen11','�ػ깰�÷�25','863-87-91849','��Ƣ��','010-1234-1237',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 01, '�ֿ���', '1998-06-16','��⵵ ���� ���籸 ���ŵ�531-2','geen16','geen11','�ػ깰�÷�26','863-87-91999','�ݰ���','010-1234-1237',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 01, '������', '1998-06-16','��⵵ ���� ���籸 ���ŵ�88-4','geen17','geen11','�ػ깰�÷�27','863-87-77699','�ı�','010-1234-1237',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 01, '��ġ��', '1998-06-16','����Ư���� ������ �ھ絿 97-5 �Ҽ��������չ�ȭ�ü�','geen18','geen11','�ػ깰�÷�28','863-87-77655','�������','010-1234-1237',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 01, '���Ľ�', '1998-06-16','����Ư���� ������ �ھ絿701','geen19','geen11','�ػ깰�÷�29','863-87-77445','����պ�','010-1234-1237',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 01, '�ֱ���', '1998-06-16','����Ư���� ������ ȭ�絿 21-49','geen21','geen11','�ػ깰�÷�30','863-87-65445','����','010-1234-1237',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 01, '�����', '1998-06-16',' ����Ư���� �߱� ����� 129(�Ŵ絿)','dark01','geen11','�ػ깰����','813-87-11633','������','010-1234-1237',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 01, '���̷�', '1998-06-16',' ����Ư���� �߱� ����� 131(�Ŵ絿)','dark02','geen11','�ػ깰����01','819-87-11633','�����ϸ���','010-1234-1237',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 01, '����', '1998-06-16',' ����Ư���� �߱� �����11�� 40(Ȳ�е�)','dark03','geen11','�ػ깰����02','848-87-11633','���������','010-1234-1237',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 01, '����', '1998-06-16',' ����Ư���� �߱� �����13�� 29(Ȳ�е�)','dark04','geen11','�ػ깰����03','844-87-11633','����������','010-1234-1237',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 01, '���Ϸ�', '1998-06-16',' ����Ư���� �߱� �����15�� 60-7(Ȳ�е�)','dark05','geen11','�ػ깰����04','877-87-11633','���䱹','010-1234-1237',sysdate,'null','null');

-- 02 �߽� �Ǹ��� ���
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 02, '���Ͻ�', '1998-06-16','����Ư���� ������ ȭ�絿18-32','gray01','gray01','����������01','963-87-65445','lovemara','010-1234-1238',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 02, '���̽�', '1998-06-16','����Ư���� ������ ���ڵ�355-14','gray02','gray01','����������02','963-87-65446','��ȭ����','010-1234-1238',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 02, '�ȼ���', '1998-06-16','����Ư���� ������ ���ڵ�361-25','gray03','gray01','����������03','963-87-65415','������ſ��','010-1234-1238',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 02, '�Ȼ��', '1998-06-16','����Ư���� ������ ���ڵ�374-4��������','gray04','gray01','����������04','963-88-65415','ilovemara','010-1234-1238',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 02, '�ȿ���', '1998-06-16','��⵵ ���� ���籸 ���ŵ�609-18','gray05','gray01','����������05','963-88-75415','���󼧱ű���','010-1234-1238',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 02, '������', '1998-06-16','��⵵ ���� ���籸 ���ŵ�525','gray06','gray01','����������06','963-88-76315','�߱���','010-1234-1238',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 02, '��ĥ��', '1998-06-16','��⵵ ���� ���籸 ���ŵ�222-7','gray07','gray01','����������07','963-88-76445','��õ��','010-1234-1238',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 02, '���Ľ�', '1998-06-16','��õ������ ���� ���굿113-3','gray08','gray01','����������08','963-88-76135','������','010-1234-1238',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 02, '�ȱ���', '1998-06-16','��õ������ ���� ���굿111-8','gray09','gray01','����������09','963-88-76465','�����强','010-1234-1238',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 02, '�Ƚý�', '1998-06-16','��õ������ ���� ���굿112-29','gray10','gray01','����������10','973-88-76465','������','010-1234-1238',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 02, '���Ͻ�', '1998-06-16','��õ������ ���� ���굿 397-2','red01','red02','������������01','983-88-77465','����¡','010-1334-1238',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 02, '������', '1998-06-16','��⵵ ���� �ϻ꼭�� ���µ�473-1','red02','red02','������������02','983-88-17465','Ÿȭ����','010-1334-1238',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 02, '�����', '1998-06-16','��⵵ ���� �ϻ꼭�� ���µ�925','red03','red03','������������03','983-88-18465','���ϴٸſ��','010-1334-1238',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 02, '�����', '1998-06-16','��⵵ ���� �ϻ꼭�� ���µ�934-2','red04','red03','������������04','983-88-18615','���ķ練','010-1334-1238',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 02, '������', '1998-06-16','��⵵ ���� �ϻ꼭�� ���µ�944','red05','red03','������������05','983-88-13615','������','010-1334-1238',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 02, '������', '1998-06-16','��⵵ ���� �ϻ꼭�� ���µ�453-6','red06','red03','������������06','983-88-13625','��ϳ׸���','010-1334-1238',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 02, '��ġ��', '1998-06-16','��⵵ ���� �ϻ꼭�� �ֿ��� 72-1 ������ũ','red07','red03','������������07','983-88-14115','¥�����','010-1334-1238',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 02, '���Ľ�', '1998-06-16','��⵵ ���� �ϻ꼭�� ���µ�493-23','red08','red03','������������08','983-18-14115','����󸶶�','010-1334-1238',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 02, '����', '1998-06-16','��⵵ ���� �ϻ꼭�� ���µ�43-32','red100','red0100','������099','983-11-14115','lovemar','010-1334-1238',sysdate,'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name,
s_phone, s_enroll_date, logo_photo, logo_photo_path) values ('s'||SELLER_SEQ.NEXTVAL, 02, '���ý�', '1998-06-16','��⵵ ���� �ϻ꼭�� ���µ�461-21','red10','red03','«�ͱ���','984-11-14115','«�ͱ�������','010-1334-1238',sysdate,'null','null');

--04 ��� �Ǹ��� ���
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 04, '���Ͻ�', '1999-01-16','��⵵ ��õ�� �ߵ��� 2(�۳���)','stest21','spass21','�ϸ޳�','651-87-00641','�Ľ�Ÿ�Ѹ�','010-0021-0021', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 04, '���̽�', '1998-02-17','��⵵ ��õ�� �ߵ��� 2-5(�۳���)','stest22','spass22','�ƴٳ�','651-87-00642','�����ѽ�','010-0022-0022', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 04, '�ۻ��', '1997-03-18','��⵵ ��õ�� �ߵ��� 2-7(�۳���)','stest23','spass23','���׵�','651-87-00643','����2','010-0023-0023', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 04, '�ۻ��', '1996-04-19','��⵵ ��õ�� �ߵ��� 2-8(�۳���)','stest24','spass24','�ݸ�','651-87-00644','�ѽ��ؿ��','010-0024-0024', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 04, '�ۿ���', '1995-05-20','��⵵ ��õ�� �ߵ��� 19(�۳���, ���̾Ⱥ�õ��ݺ�Ÿ)','stest25','spass25','�Ͽ���','651-87-00645','8�����Ǽ���','010-0025-0025', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 04, '������', '1994-06-21','��⵵ ���� ���籸 ��ŷ� 6(���ֳ���)','stest26','spass26','���Ͻ�','651-87-00646','�׺�','010-0026-0026', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 04, '��ĥ��', '1993-07-22','��⵵ ���� ���籸 ��ŷ� 7(���ֳ���)','stest27','spass27','�ν���','651-87-00647','���ı�����ǥ','010-0027-0027', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 04, '���Ƚ�', '1992-08-23','��⵵ ���� ���籸 ��ŷ� 10(���ֳ���)','stest28','spass28','��ť��','651-87-00648','��Ÿ��','010-0028-0028', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 04, '�۱���', '1991-09-24','��⵵ ���� ���籸 ��ŷ� 20(���ֳ���)','stest29','spass29','�������޽�','651-87-00649','�ҷ�','010-0029-0029', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 04, '�۽ʽ�', '1990-10-25','��⵵ ���� ���籸 ��ŷ� 21(���ֳ���)','stest30','spass30','��������','651-87-00650','��������','010-0030-0030', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 04, '���Ͻ�', '1990-12-02','��õ������ ���� ���� 11(������, ����Ʈ��)','stest31','spass31','����','651-87-00651','������','010-0031-0031', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 04, '���̽�', '1991-11-03','��õ������ ���� ���� 14(������)','stest32','spass32','Ű���϶�','651-87-00652','����','010-0032-0032', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 04, '�����', '1992-10-04','��õ������ ���� ���� 16(������)','stest33','spass33','�Ƹ��͹�','651-87-00653','������','010-0033-0033', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 04, '�����', '1993-09-05','��õ������ ���� ���� 16-1(������)','stest34','spass34','��Ž�','651-87-00654','���̸�','010-0034-0034', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 04, '������', '1994-08-06','��õ������ ���� ���� 18(������)','stest35','spass35','����','651-87-00655','�ɽɹ�','010-0035-0035', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 04, '������', '1995-07-07','����Ư���� �߱� ���ϴ�� 362(�屳��)','stest36','spass36','����','651-87-00656','�𱸸�','010-0036-0036', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 04, '��ĥ��', '1996-06-08','����Ư���� �߱� �������16�� 26(��â��)','stest37','spass37','�긮����','651-87-00657','����','010-0037-0037', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 04, '���Ƚ�', '1997-05-09','����Ư���� �߱� ���� 52(ȸ����1��)','stest38','spass38','�Էε�','651-87-00658','��','010-0038-0038', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 04, '������', '1998-04-10','����Ư���� �߱� ���� 115(�湫��1��)','stest39','spass39','ī����','651-87-00659','���̳�','010-0039-0039', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 04, '���ʽ�', '1999-03-11','����Ư���� �߱� ���ϴ��8�� 15-1(�湫��2��)','stest40','spass40','���ǿ�Ʈ','651-87-00660','����','010-0040-0040', sysdate, 'null','null');

--08 �н�ƮǪ�� �Ǹ��� ���
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 08, '���Ͻ�', '1971-12-19','��⵵ ��õ�� �ߵ��� 2(�۳���)','stest61','spass61','�ϴ���','651-87-00681','�ƿ�����','010-0061-0061', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 08, '���̽�', '1971-12-11','��⵵ ��õ�� �ߵ��� 2-5(�۳���)','stest62','spass62','�α�','651-87-00682','�Դٸ���','010-0062-0062', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 08, '����', '1973-10-13','��⵵ ��õ�� �Ȱ�� 4(���ȵ�, ���;���Ʈ)','stest63','spass63','�ٷ�','651-87-00683','KFB','010-0063-0063', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 08, '����', '1973-10-17','��⵵ ��õ�� �Ȱ�� 3(���ȵ�)','stest64','spass64','���','651-87-00684','���̴�����','010-0064-0064', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 08, '�����', '1975-05-20','��⵵ ��õ�� �Ȱ�� 4-1(���ȵ�)','stest65','spass65','����','651-87-00685','����ġŲ','010-0065-0065', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 08, '������', '1975-05-21','����Ư���� ������ ������� 341(���ڵ�)','stest66','spass66','����','651-87-00686','BBC','010-0066-0066', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 08, '��ĥ��', '1977-07-27','����Ư���� ������ ������� 343(���ڵ�)','stest67','spass67','�Ҷ�ī','651-87-00687','BHA','010-0067-0067', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 08, '���Ƚ�', '1977-07-10','����Ư���� ������ ������� 344(ȭ�絿)','stest68','spass68','���ӽ�','651-87-00688','����ġŲ','010-0068-0068', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 08, '�㱸��', '1979-06-12','����Ư���� ������ ������� 345(���ڵ�)','stest69','spass69','���','651-87-00689','ġŲ��','010-0069-0069', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 08, '��ʽ�', '1979-06-18','����Ư���� ������ ������� 346(ȭ�絿, ����� ȭ��)','stest70','spass70','ī����','651-87-00690','ġ����','010-0070-0070', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 08, '���Ͻ�', '1972-12-12','��⵵ ���� ���籸 ���ֻ꼺�� 5-6(���ֳ���)','stest71','spass71','����','651-87-00691','������','010-0071-0071', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 08, '���̽�', '1972-12-22','��⵵ ���� ���籸 ���ֻ꼺�� 5-10(���ֳ���)','stest72','spass72','������','651-87-00692','������','010-0072-0072', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 08, '�߻��', '1974-10-04','��⵵ ���� ���籸 ���ֻ꼺�� 5-30(���ֳ���)','stest73','spass73','�ö���','651-87-00693','��ȭ����','010-0073-0073', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 08, '�߻��', '1974-10-08','��⵵ ���� ���籸 ���ֻ꼺�� 5-31(���ֳ���)','stest74','spass74','�ֽ�','651-87-00694','�����ؽ�','010-0074-0074', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 08, '�߿���', '1976-05-12','��⵵ ���� ���籸 ���ֻ꼺�� 11(���ֳ���)','stest75','spass75','�����','651-87-00695','ġŲ���� ���ڰ���','010-0075-0075', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 08, '������', '1976-05-13','��⵵ ���� �ϻ꼭�� �ϻ�� 485(�ϻ굿)','stest76','spass76','���̶�','651-87-00696','��� �ֵ���','010-0076-0076', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 08, '��ĥ��', '1978-07-20','��⵵ ���� �ϻ꼭�� �ϻ�� 486(�ϻ굿)','stest77','spass77','�����','651-87-00697','������','010-0077-0077', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 08, '���Ƚ�', '1978-07-25','��⵵ ���� �ϻ꼭�� �ϻ�� 487(�ϻ굿, �İ��18��������Ʈ)','stest78','spass78','������','651-87-00698','�躴��','010-0078-0078', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 08, '�߱���', '1980-06-25','��⵵ ���� �ϻ꼭�� �ϻ�� 488(�ϻ굿, �İ��13��������Ʈ)','stest79','spass79','������','651-87-00699','����ġŲ','010-0079-0079', sysdate, 'null','null');
insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date, logo_photo, logo_photo_path)
values ('s'||SELLER_SEQ.NEXTVAL, 08, '�߽ʽ�', '1980-06-16','��⵵ ���� �ϻ꼭�� �ϻ�� 502(�ϻ굿)','stest80','spass80','�Ƹ�','651-87-00700','�ƽó�ī','010-0080-0080', sysdate, 'null','null');
commit;