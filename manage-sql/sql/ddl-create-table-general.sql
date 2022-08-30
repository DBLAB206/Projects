DROP TABLE general;

CREATE TABLE GENERAL (
  id NUMBER(6),
  section_id VARCHAR2(20),
  factor_type VARCHAR2(20),
  vibration_1_val NUMBER(4),
  vibration_2_val NUMBER(4),
  vibration_3_val NUMBER(4),
  noise_1_val NUMBER(4),
  noise_2_val NUMBER(4),
  noise_3_val NUMBER(4),
  dust_1_val NUMBER(4),
  dust_2_val NUMBER(4),
  dust_3_val NUMBER(4),
  accel_1_val NUMBER(4),
  accel_2_val NUMBER(4),
  accel_3_val NUMBER(4),
  ray_val NUMBER(4),
  wave_val NUMBER(4),
  section_danger VARCHAR2(100),
  section_status VARCHAR2(100),
  section_notice VARCHAR2(100),
  occured_at TIMESTAMP WITH LOCAL TIME ZONE
);
INSERT INTO general (id, section_id, factor_type, vibration_1_val, vibration_2_val, vibration_3_val, noise_1_val, noise_2_val, noise_3_val, dust_1_val, dust_2_val, dust_3_val, occured_at) values (general_seq.NEXTVAL, 'tunnel', 'T1', 100, 105, 90, 80, 120, 110, 60, 70, 80, SYSDATE);
INSERT INTO general (id, section_id, factor_type, vibration_1_val, vibration_2_val, vibration_3_val, noise_1_val, noise_2_val, noise_3_val, accel_1_val, accel_2_val, accel_3_val, occured_at) values (general_seq.NEXTVAL, 'bridge', 'B1', 110, 115, 90, 120, 110, 110, 90, 50, 60, SYSDATE);
INSERT INTO general (id, section_id, factor_type, vibration_1_val, vibration_2_val, vibration_3_val, noise_1_val, noise_2_val, noise_3_val, wave_val, occured_at) values (general_seq.NEXTVAL, 'intersection', 'I1', 110, 115, 90, 120, 110, 110, 100, SYSDATE);
INSERT INTO general (id, section_id, factor_type, vibration_1_val, vibration_2_val, vibration_3_val, noise_1_val, noise_2_val, noise_3_val, dust_1_val, dust_2_val, dust_3_val, occured_at) values (general_seq.NEXTVAL, 'residential_area', 'R1', 110, 115, 90, 120, 110, 110, 90, 50, 60, SYSDATE);

commit;