CREATE TABLE fact_readmission (
    readmission_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id VARCHAR(10),
    department_id INT,
    diagnosis_id INT,
    admission_id INT,
    length_of_stay INT,
    num_medications INT,
    num_procedures INT,
    readmitted_flag INT,

    FOREIGN KEY (patient_id) REFERENCES dim_patient(patient_id),
    FOREIGN KEY (department_id) REFERENCES dim_department(department_id),
    FOREIGN KEY (diagnosis_id) REFERENCES dim_diagnosis(diagnosis_id),
    FOREIGN KEY (admission_id) REFERENCES dim_admission(admission_id)
);

INSERT INTO fact_readmission (
    patient_id,
    department_id,
    diagnosis_id,
    admission_id,
    length_of_stay,
    num_medications,
    num_procedures,
    readmitted_flag
)