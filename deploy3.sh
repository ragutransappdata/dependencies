. /u03/env/ORCL.env
which sqlplus
sqlplus system/passwd  <<EOF
WHENEVER SQLERROR EXIT SQL.SQLCODE;
select sysdate+1 from dual;
create table SYSTEM.NAME (Name varchar2(100));
INSERT into SYSTEM.name values ('ABC');
INSERT into SYSTEM.name values ('ABC');
INSERT into SYSTEM.name values ('ABC');
EOF
export VAR1=`echo $?`
exit $VAR1
