INSERT INTO ORDER_TBL VALUES(ORDER_SEQ.NEXTVAL,'admin',RECEIPT_SEQ.NEXTVAL,21,'������',5000,3,'�ֹ�','�������','s101','lovemara','���ְ� ���ּ���~',SYSDATE);
INSERT INTO ORDER_TBL VALUES(ORDER_SEQ.NEXTVAL,'admin',RECEIPT_SEQ.CURRVAL,22,'�ұ���',4000,2,'�ֹ�','�������','s101','lovemara','���ְ� ���ּ���~',SYSDATE);
INSERT INTO ORDER_TBL VALUES(ORDER_SEQ.NEXTVAL,'admin',RECEIPT_SEQ.CURRVAL,23,'���󼧱�',7000,1,'�ֹ�','�������','s101','lovemara','���ְ� ���ּ���~',SYSDATE);

INSERT INTO ORDER_TBL VALUES(ORDER_SEQ.NEXTVAL,'admin',RECEIPT_SEQ.NEXTVAL,21,'������',5000,4,'����','�������','s101','lovemara','���ְ� �ض�',SYSDATE);
INSERT INTO ORDER_TBL VALUES(ORDER_SEQ.NEXTVAL,'admin',RECEIPT_SEQ.CURRVAL,22,'�ұ���',4000,1,'����','�������','s101','lovemara','���ְ� �ض�',SYSDATE);
INSERT INTO ORDER_TBL VALUES(ORDER_SEQ.NEXTVAL,'admin',RECEIPT_SEQ.CURRVAL,23,'���󼧱�',7000,1,'����','�������','s101','lovemara','���ְ� �ض�',SYSDATE);

INSERT INTO ORDER_TBL VALUES(ORDER_SEQ.NEXTVAL,'test2',RECEIPT_SEQ.NEXTVAL,21,'������',5000,3,'�Ϸ�','�������','s101','lovemara','������ �Ѥ�',SYSDATE);
INSERT INTO ORDER_TBL VALUES(ORDER_SEQ.NEXTVAL,'test2',RECEIPT_SEQ.CURRVAL,22,'�ұ���',4000,2,'�Ϸ�','�������','s101','lovemara','������ �Ѥ�',SYSDATE);
INSERT INTO ORDER_TBL VALUES(ORDER_SEQ.NEXTVAL,'test2',RECEIPT_SEQ.CURRVAL,23,'���󼧱�',7000,1,'�Ϸ�','�������','s101','lovemara','������ �Ѥ�',SYSDATE);

INSERT INTO ORDER_TBL VALUES(ORDER_SEQ.NEXTVAL,'admin',RECEIPT_SEQ.NEXTVAL,4,'��Һ���',5000,3,'�ֹ�','�������','s81','��â������','���ְ� ���ּ���~',SYSDATE);
INSERT INTO ORDER_TBL VALUES(ORDER_SEQ.NEXTVAL,'admin',RECEIPT_SEQ.CURRVAL,5,'�Ұ�â',4000,2,'�ֹ�','�������','s81','��â������','���ְ� ���ּ���~',SYSDATE);
INSERT INTO ORDER_TBL VALUES(ORDER_SEQ.NEXTVAL,'admin',RECEIPT_SEQ.CURRVAL,6,'������',7000,1,'�ֹ�','�������','s81','��â������','���ְ� ���ּ���~',SYSDATE);

INSERT INTO ORDER_TBL VALUES(ORDER_SEQ.NEXTVAL,'test1',RECEIPT_SEQ.NEXTVAL,1,'��â',7000,3,'�ֹ�','�������','s81','��â������','���ְ� ���ּ���~',SYSDATE);
INSERT INTO ORDER_TBL VALUES(ORDER_SEQ.NEXTVAL,'test1',RECEIPT_SEQ.CURRVAL,2,'��â',9000,2,'�ֹ�','�������','s81','��â������','���ְ� ���ּ���~',SYSDATE);
INSERT INTO ORDER_TBL VALUES(ORDER_SEQ.NEXTVAL,'test1',RECEIPT_SEQ.CURRVAL,3,'��â',9000,1,'�ֹ�','�������','s81','��â������','���ְ� ���ּ���~',SYSDATE);

INSERT INTO LASTORDER VALUES(LASTORDER_SEQ.NEXTVAL, 10, 20, '���� ���ġŲ', 7000, 's1', 5, '���� ���ġŲ�Դϴ�.', '���� ���ġŲ', null, null, 2);
INSERT INTO LASTORDER VALUES(LASTORDER_SEQ.NEXTVAL, 10, 20, '����ġŲ', 7000, 's1', 5, '����ġŲ�Դϴ�.', '����ġŲ', null, null, 2);

commit;
