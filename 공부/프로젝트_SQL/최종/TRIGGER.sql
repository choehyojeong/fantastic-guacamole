-- 1. 각각 추가될때 '데이터 추가되었습니다.'
-- COMPANY 테이블 추가
CREATE OR REPLACE TRIGGER ALARM_INSERT_COMPANY
BEFORE INSERT ON COMPANY     
FOR EACH ROW
DECLARE BEGIN
    DBMS_OUTPUT.PUT_LINE('데이터가 추가되었습니다.');
END; 
/
-- IVENTORY 테이블 추가
CREATE OR REPLACE TRIGGER ALARM_INSERT_INVENTORY
BEFORE INSERT ON INVENTORY    
FOR EACH ROW
DECLARE BEGIN
    DBMS_OUTPUT.PUT_LINE('데이터가 추가되었습니다.');
END; 
/
-- 2. 각각 수정될떄 '데이터 수정되었습니다.'
-- COMPANY 테이블 수정
CREATE OR REPLACE TRIGGER ALARM_UPDATE_COMPANY
BEFORE UPDATE ON COMPANY     
FOR EACH ROW
DECLARE BEGIN
    DBMS_OUTPUT.PUT_LINE('데이터가 수정되었습니다.');
END; 
/
-- IVENTORY 테이블 수정
CREATE OR REPLACE TRIGGER ALARM_UPDATE_INVENTORY
BEFORE UPDATE ON INVENTORY    
FOR EACH ROW
DECLARE BEGIN
    DBMS_OUTPUT.PUT_LINE('데이터가 수정되었습니다.');
END; 
/
-- 3. 각각 삭제될때 '데이터 삭제되었습니다.'
-- COMPANY 테이블 삭제
CREATE OR REPLACE TRIGGER ALARM_DELETE_COMPANY
BEFORE DELETE ON COMPANY     
FOR EACH ROW
DECLARE BEGIN
    DBMS_OUTPUT.PUT_LINE('데이터가 삭제되었습니다.');
END; 
/
-- IVENTORY 테이블 삭제
CREATE OR REPLACE TRIGGER ALARM_DELETE_INVENTORY
BEFORE DELETE ON INVENTORY    
FOR EACH ROW
DECLARE BEGIN
    DBMS_OUTPUT.PUT_LINE('데이터가 삭제되었습니다.');
END; 
/
