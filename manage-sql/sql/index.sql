-- @유송수 1207
-- 목표는 test_general의 정규화입니다.
-- 제약 조건을 통해서 t_general의 열을 삭제하면 fk_t_dangers의 해당 열도 삭제되도록 작성.
-- fk_t_status도 위와 마찬가지로 작성.
-- 외래키 MYSQL 문법 같은데 다시 봐주세요. (확실하진 않음, 제가 알기로 CONSTRAINT를 쓰는 걸로 알고 있기 때문에.)
-- 그리고 외래키를 쓸 때 sec_id만 해주시면 됩니다.
-- dangers라는 필드와 status는 삭제 예정.

-- 정규화를 하지 않은 테이블
-- pk_id, nn_section_id, notice가 기본 필드
CREATE TABLE test_general (
  pk_id NUMBER(8) PRIMARY KEY DEFAULT seq_general.NEXTVAL,
  nn_section_id NUMBER(1) NOT NULL,
  vibration_1_avg NUMBER(4),
  vibration_2_avg NUMBER(4),
  vibration_3_avg NUMBER(4),
  sound_1_avg NUMBER(4),
  sound_2_avg NUMBER(4),
  sound_3_avg NUMBER(4),
  dust_1_avg NUMBER(4),
  dust_2_avg NUMBER(4),
  dust_3_avg NUMBER(4),
  acceleration_1_avg NUMBER(4), -- x축
  acceleration_2_avg NUMBER(4), -- y축
  acceleration_3_avg NUMBER(4), -- z축
  wave_avg NUMBER(4),
  ray_avg NUMBER(4),
  dangers VARCHAR, -- -> fk_t_dangers
  status VARCHAR NOT NULL, -- -> fk_t_status
  notice VARCHAR
);

-- 현재 작성하다만 테이블들.
CREATE TABLE t_general (
  pk_id NUMBER(8) PRIMARY KEY DEFAULT seq_general.NEXTVAL,
  nn_section_id NUMBER(1) NOT NULL,
);

CREATE TABLE fk_t_dangers (
  pk_id NUMBER(8) PRIMARY KEY DEFAULT seq_general.NEXTVAL,
  factor VARCHAR(30),
  FOREIGN KEY('secid','dangers') REFERENCES 'sec_show' ('secid','dangers') -- MYSQL 문법 같은데 다시 한 번 봐주세요.
);

CREATE TABLE fk_t_status (

);

-- +Dust
CREATE TABLE t_tunnel (

);

-- +Dust
CREATE TABLE t_residential_area (

);

-- +Acceleration
CREATE TABLE t_bridge (

);

-- +Camera, Ultrasonic waves, infrared rays
CREATE TABLE t_wildlife_area (

);

CREATE SEQUENCE seq_general
INCREMENT BY 1
START WITH 1
MIN_VALUE 1
MAX_VALUE 10000
NOCYCLE
CACHE;