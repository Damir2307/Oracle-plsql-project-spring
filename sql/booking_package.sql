create or replace NONEDITIONABLE PACKAGE booking_actions AS 
CURSOR all_brons_desc return booking%rowtype;
PROCEDURE select_brons_by_playground (
p_id in number,brons out SYS_REFCURSOR);
END booking_actions;

create or replace PACKAGE BODY booking_actions AS  -- body
CURSOR all_brons_desc RETURN booking%rowtype IS
  SELECT * FROM booking ORDER BY id DESC;
Procedure select_brons_by_playground (p_id in number,brons out SYS_REFCURSOR)
IS
BEGIN
    OPEN brons FOR
    SELECT user_id,playground_id,brontime,bronday,bronmonth FROM booking b join playground p on p.id=b.playground_id where playground_id=p_id;
END;
END booking_actions;

