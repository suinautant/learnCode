USE ExerciseDB;

drop table student;

CREATE TABLE IF NOT EXISTS Student(
   num int NOT NULL,
   depart  VARCHAR(20),
   name VARCHAR(30), 
   address VARCHAR(50), 
   phone VARCHAR(20),  
   PRIMARY KEY (num)
);

INSERT INTO STUDENT (num, depart, name, address, phone) VALUES (2018100001, '����ϰ�', 'ȫ���', '�����','010-9002-1234');
INSERT INTO STUDENT (num, depart, name, address, phone) VALUES (2018100002, '����ϰ�', 'ȫ�浿', '��⵵','010-2009-4321');
INSERT INTO STUDENT (num, depart, name, address, phone) VALUES (2018200001, '�����', '������', '��õ��','010-3918-0007');
INSERT INTO STUDENT (num, depart, name, address, phone) VALUES (2018200002, '�����', '��ٿ�', '�����','010-3002-0101');

select * from student;