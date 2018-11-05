. /u03/env/ORCL.env
which sqlplus
sqlplus system/passwd  <<EOF
WHENEVER SQLERROR EXIT SQL.SQLCODE;
WHENEVER SQLERROR EXIT SQL.SQLCODE;
select sysdate+1 from dual;
SELECT username FROM dba_users WHERE username='RAGHU';
DROP table RAGHU.name;
EOF
export VAR1=`echo $?`
export VAR1=`echo $?`
exit $VAR1
