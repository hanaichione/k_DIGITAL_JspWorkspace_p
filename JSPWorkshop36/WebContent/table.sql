create table myproduct
( prodId varchar2(10) primary key,   --��ǰ ���̵�
  prodName varchar2(20) not null,    --��ǰ��
  price number(6) not null,          --����  
  quantity number(2) not null        --����
 );
  
  insert into myproduct values ( 'P1' , '�����' , 1000, 1);
  insert into myproduct values ( 'P2' , 'TV' , 2000, 2);
  insert into myproduct values ( 'P3' , '��Ź��' , 700, 2);
  insert into myproduct values ( 'P4' , '��Ʈ��' , 900, 1);
  commit;
