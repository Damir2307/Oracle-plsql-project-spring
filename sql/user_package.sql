create or replace PACKAGE user_actions AS 
PROCEDURE registration(u_firstname in varchar2,u_lastname in varchar2,u_email in varchar2,u_password in varchar2,u_phone in varchar2);
END user_actions;

create or replace PACKAGE BODY user_actions AS  -- body
Procedure registration (u_firstname in varchar2,u_lastname in varchar2,u_email in varchar2,u_password in varchar2,u_phone in varchar2)
IS
BEGIN
    INSERT INTO users(id,firstname,lastname,email,password,phone) values (USERS_SEQ.nextval,u_firstname,u_lastname,u_email,u_password,u_phone);
    COMMIT;
END;
END user_actions;