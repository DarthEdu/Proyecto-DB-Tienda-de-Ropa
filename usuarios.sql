-- usuario 1
create user "usuario1"@"localhost" identified by "123456";
grant all privileges on proyecto. * to  "usuario1"@"localhost";
flush privileges;

-- usuario 2
create user "usuario2"@"localhost" identified by "123";
grant SELECT, UPDATE on proyecto. * to  "usuario2"@"localhost";
flush privileges;

-- usuario 3
create user "usuario3"@"localhost" identified by "000";
grant SELECT, UPDATE, DELETE, INSERT on proyecto. * to  "usuario3"@"localhost";
flush privileges;

-- usuario 4
create user "usuario4"@"localhost" identified by "122928";
grant SELECT, INSERT on proyecto. * to  "usuario4"@"localhost";
flush privileges;

-- usuario 5
create user "usuario5"@"localhost" identified by "000";
grant INSERT on proyecto. * to  "usuario5"@"localhost";
flush privileges;

-- usuario 6
create user "usuario6"@"localhost" identified by "10200";
grant all privileges on proyecto. * to  "usuario6"@"localhost";
flush privileges;

-- usuario 7
create user "usuario7"@"localhost" identified by "102";
grant all privileges on proyecto. * to  "usuario7"@"localhost";
flush privileges;



-- usuario 8
create user "usuario8"@"localhost" identified by "abcdef";
grant SELECT on proyecto.* to "usuario8"@"localhost";
flush privileges;

-- usuario 9
create user "usuario9"@"localhost" identified by "password123";
grant SELECT, UPDATE, DELETE on proyecto.* to "usuario9"@"localhost";
flush privileges;

-- usuario 10
create user "usuario10"@"localhost" identified by "securepass";
grant INSERT, UPDATE on proyecto.* to "usuario10"@"localhost";
flush privileges;

-- usuario 11
create user "usuario11"@"localhost" identified by "mypassword";
grant SELECT, INSERT, UPDATE on proyecto.* to "usuario11"@"localhost";
flush privileges;

-- usuario 12
create user "usuario12"@"localhost" identified by "mypassword12";
grant SELECT, INSERT, DELETE on proyecto.* to "usuario12"@"localhost";
flush privileges;

-- usuario 13
create user "usuario13"@"localhost" identified by "pass123";
grant SELECT, INSERT, DELETE, UPDATE on proyecto.* to "usuario13"@"localhost";
flush privileges;

-- usuario 14
create user "usuario14"@"localhost" identified by "123456789";
grant all privileges on proyecto.* to "usuario14"@"localhost";
flush privileges;

-- Ver todos los usuarios creados
select user, host from mysql.user;




