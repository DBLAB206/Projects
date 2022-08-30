DROP TABLE test_general;

CREATE TABLE test_general (
  id NUMBER(6),
  vibration_1_val NUMBER(4),
  vibration_2_val NUMBER(4),
  vibration_3_val NUMBER(4),
  sound_1_val NUMBER(4),
  sound_2_val NUMBER(4),
  sound_3_val NUMBER(4),
  any_1_val NUMBER(4),
  any_2_val NUMBER(4),
  any_3_val NUMBER(4),
  occured_at TIMESTAMP WITH LOCAL TIME ZONE
  -- occured_at VARCHAR2(10) -- TO_CHAR(SYSDATE, "YYYY-MM-DD-HH:mm:ss")
);