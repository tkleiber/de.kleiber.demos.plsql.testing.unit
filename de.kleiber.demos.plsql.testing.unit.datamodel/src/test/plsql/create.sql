PROMPT create user &1
create user &1 identified by &2 quota unlimited on users;
grant connect, resource to &1;
exit 0;