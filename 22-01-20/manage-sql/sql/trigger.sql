CREATE OR REPLACE trigger_insert_after_insert -- OR REPLACE는 임시
AFTER                                         -- 
INSERT ON sec_show                            -- DML:INSERT문 실행 후 트리거 실행
FOR EACH ROW                                  -- 행트리거
WHEN                                          -- 의미 없는 데이터의 경우 필터링
BEGIN                                       
  INSERT INTO sec_show                        -- 
END;