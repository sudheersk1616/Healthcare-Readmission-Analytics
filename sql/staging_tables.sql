USE healthcare_dw;

CREATE TABLE stg_hospital_readmission (
    patient_id VARCHAR(10),
    age INT,
    age_group VARCHAR(10),
    gender VARCHAR(10),
    department VARCHAR(50),
    diagnosis VARCHAR(50),
    length_of_stay INT,
    num_medications INT,
    num_procedures INT,
    admission_type VARCHAR(20),
    discharge_disposition VARCHAR(20),
    readmitted VARCHAR(5)
);







