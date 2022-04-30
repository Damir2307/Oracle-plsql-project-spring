create or replace TRIGGER playground_delete
    AFTER DELETE ON playground FOR EACH ROW
DECLARE
    v_c NUMBER := 1;
BEGIN
    INSERT INTO playground_log (log_id, operation_date, old_id, old_name, action, actionauthor) 
     VALUES( v_c, SYSDATE, :old.id , :old.playground_name, 'DELETION', USER);
    v_c := v_c + 1;
END;

create or replace TRIGGER playground_insert
    AFTER INSERT ON playground FOR EACH ROW
DECLARE
    v_c NUMBER := 1;
BEGIN
    INSERT INTO playground_log (log_id, operation_date, new_id, new_name, action, actionauthor) 
     VALUES(v_c, SYSDATE, :new.id , :new.playground_name, 'INSERTION', USER);
    v_c := v_c + 1;
END;

create or replace TRIGGER playground_update
    AFTER UPDATE ON playground FOR EACH ROW
DECLARE
    v_c NUMBER := 1;
BEGIN
    INSERT INTO playground_log (log_id, operation_date, old_id, new_id, old_name, new_name, action, actionauthor) 
     VALUES( v_c, SYSDATE, :old.id, :new.id, :old.playground_name, :new.playground_name, 'UPDATING', USER);
    v_c := v_c + 1;
END;