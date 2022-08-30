-- XE

-- 센서에서 감지되는 최소값, 최대값, 평균값
-- 입력은 애플리케이션에서 코드로 작성
-- 현재 뷰로 작성하는 것이 필요
-- sec0s1 ~ sec7v3
-- 일단 구현x
-- 밑의 all 센서부터 작성
-- CREATE TABLE secNsensor (min NUMBER(4), max NUMBER(4), avg NUMBER(4));

-- 데이터 기록을 보관할 테이블
-- 현재 뷰로 작성하는 것이 필요
-- sec0all ~ sec7all
-- 더 효율적인 방법이 있다면 README에 작성하고 업데이트할 것.

CREATE TABLE secNall (
  s1min NUMBER(4),
  s1max NUMBER(4),
  s1avg NUMBER(4),

  s2min NUMBER(4),
  s2max NUMBER(4),
  s2avg NUMBER(4),

  s3min NUMBER(4),
  s3max NUMBER(4),
  s3avg NUMBER(4),

  v1min NUMBER(4),
  v1max NUMBER(4),
  v1avg NUMBER(4),

  v2min NUMBER(4),
  v2max NUMBER(4),
  v2avg NUMBER(4),

  v3min NUMBER(4),
  v3max NUMBER(4),
  v3avg NUMBER(4)
);(4)

CREATE TABLE sec0all AS SELECT * FROM secNall WHERE 1=2; -- 이걸 뷰로 작성?
-- ...
CREATE TABLE sec7all AS SELECT * FROM secNall WHERE 1=2;