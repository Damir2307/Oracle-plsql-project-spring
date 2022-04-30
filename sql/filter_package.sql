create or replace PACKAGE filter_actions AS 
CURSOR playground_select return playground%rowtype;
PROCEDURE filter_by_price_p (
n1 in number,playgrounds out SYS_REFCURSOR);
PROCEDURE filter_by_sport_p (
sname in varchar2,playgrounds out SYS_REFCURSOR);
PROCEDURE searchPlayground(p_search in varchar2,playgrounds out SYS_REFCURSOR);
END filter_actions;

create or replace PACKAGE BODY filter_actions AS  -- body
CURSOR playground_select RETURN playground%rowtype IS
  SELECT * FROM playground ORDER BY id DESC;
Procedure filter_by_price_p (n1 in number,playgrounds out SYS_REFCURSOR)
IS
BEGIN
    OPEN playgrounds FOR
    select playground.id,playground.playground_name,playground.url,playground.playground_address,playground.price,playground.starttime,playground.closetime,playground.description,playground.phone,playground.sport_id,playground.specification_id,sport.sport_name FROM playground left join sport on playground.sport_id=sport.id where playground.price<=n1;
END;
Procedure filter_by_sport_p (sname in varchar2,playgrounds out SYS_REFCURSOR)
IS
BEGIN
    OPEN playgrounds FOR
    SELECT playground.id,playground.playground_name,playground.url,playground.playground_address,playground.price,playground.starttime,playground.closetime,playground.description,playground.phone,playground.sport_id,playground.specification_id,sport.sport_name FROM playground join sport on sport.id=playground.sport_id WHERE sport.sport_name like sname;
END;
PROCEDURE searchPlayground(p_search in varchar2,playgrounds out SYS_REFCURSOR)
IS
BEGIN
    OPEN playgrounds FOR
    SELECT playground.id,playground.playground_name,playground.url,playground.playground_address,playground.price,playground.starttime,playground.closetime,playground.description,playground.phone,playground.sport_id,playground.specification_id,sport.sport_name FROM playground join sport on sport.id=playground.sport_id WHERE playground.playground_name like trim(upper('%'||p_search||'%'));
END;
END filter_actions;