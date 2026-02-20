
SELECT
    s.patient_id,
    d.department_id,
    dg.diagnosis_id,
    a.admission_id,
    s.length_of_stay,
    s.num_medications,
    s.num_procedures,
    CASE WHEN s.readmitted = 'Yes' THEN 1 ELSE 0 END
FROM stg_hospital_readmission s
JOIN dim_department d 
    ON s.department = d.department_name
JOIN dim_diagnosis dg 
    ON s.diagnosis = dg.diagnosis_name
JOIN dim_admission a 
    ON s.admission_type = a.admission_type
   AND s.discharge_disposition = a.discharge_disposition;

SELECT ROUND(AVG(readmitted_flag) * 100, 2) AS readmission_rate_pct
FROM fact_readmission;

SELECT 
    p.age_group,
    ROUND(AVG(f.readmitted_flag) * 100, 2) AS readmission_rate
FROM fact_readmission f
JOIN dim_patient p ON f.patient_id = p.patient_id
GROUP BY p.age_group
ORDER BY readmission_rate DESC;

SELECT 
    p.age_group,
    ROUND(AVG(f.readmitted_flag) * 100, 2) AS readmission_rate
FROM fact_readmission f
JOIN dim_patient p ON f.patient_id = p.patient_id
GROUP BY p.age_group
ORDER BY readmission_rate DESC;

SELECT 
    d.department_name,
    COUNT(*) AS total_patients,
    ROUND(AVG(f.readmitted_flag) * 100, 2) AS readmission_rate
FROM fact_readmission f
JOIN dim_department d ON f.department_id = d.department_id
GROUP BY d.department_name
ORDER BY readmission_rate DESC;