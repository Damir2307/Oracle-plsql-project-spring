create or replace NONEDITIONABLE PACKAGE playground_actions AS 
CURSOR all_playgrounds_desc return playground%rowtype;
PROCEDURE select_all_playground (
playgrounds out SYS_REFCURSOR);
END playground_actions;

create or replace PACKAGE BODY playground_actions AS  -- body
CURSOR all_playgrounds_desc RETURN playground%rowtype IS
  SELECT * FROM playground ORDER BY id DESC;
Procedure select_all_playground (playgrounds out SYS_REFCURSOR)
IS
BEGIN
    OPEN playgrounds FOR
    select playground.id,playground.playground_name,playground.url,playground.playground_address,playground.price,playground.starttime,playground.closetime,playground.description,playground.phone,playground.sport_id,playground.specification_id,sport.sport_name FROM playground left join sport on playground.sport_id=sport.id;
END;
END playground_actions;