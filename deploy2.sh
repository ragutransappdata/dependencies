. /u03/env/ORCL.env
which sqlplus
sqlplus system/passwd  <<EOF
WHENEVER SQLERROR EXIT SQL.SQLCODE;
select sysdate+1 from dual;
SELECT username FROM dba_users WHERE username='SYSTEM';
DROP table SYSTEM.name;
EOF
export VAR1=`echo $?`
exit $VAR1
