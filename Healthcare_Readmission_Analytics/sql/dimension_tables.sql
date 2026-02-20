CREATE TABLE dim_patient (
    patient_id VARCHAR(10) PRIMARY KEY,
    age INT,
    age_group VARCHAR(10),
    gender VARCHAR(10)
);

CREATE TABLE dim_department (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE dim_diagnosis (
    diagnosis_id INT AUTO_INCREMENT PRIMARY KEY,
    diagnosis_name VARCHAR(50)
);

CREATE TABLE dim_admission (
    admission_id INT AUTO_INCREMENT PRIMARY KEY,
    admission_type VARCHAR(20),
    discharge_disposition VARCHAR(20)
);

INSERT INTO dim_patient
SELECT DISTINCT patient_id, age, age_group, gender
FROM stg_hospital_readmission;
select * from dim_patient;

INSERT INTO dim_department (department_name)
SELECT DISTINCT department
FROM stg_hospital_readmission;

INSERT INTO dim_diagnosis (diagnosis_name)
SELECT DISTINCT diagnosis
FROM stg_hospital_readmission;

INSERT INTO dim_admission (admission_type, discharge_disposition)
SELECT DISTINCT admission_type, discharge_disposition
FROM stg_hospital_readmission;

UPDATE dim_patient
SET age_group =
    CASE
        WHEN age BETWEEN 0 AND 30 THEN '0-30'
        WHEN age BETWEEN 31 AND 45 THEN '31-45'
        WHEN age BETWEEN 46 AND 60 THEN '46-60'
        WHEN age BETWEEN 61 AND 75 THEN '61-75'
        ELSE '75+'
    END;

SELECT patient_id, age, age_group
FROM dim_patient
LIMIT 10;

SELECT * FROM dim_department;
SELECT * FROM dim_patient LIMIT 5;
