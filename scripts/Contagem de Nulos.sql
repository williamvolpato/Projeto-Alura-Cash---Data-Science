SELECT 
    COUNT(*) - COUNT(person_id) AS person_id_nulos,
    COUNT(*) - COUNT(person_age) AS person_age_nulos,
    COUNT(*) - COUNT(person_income) AS person_income_nulos,
    COUNT(*) - COUNT(person_home_ownership) AS person_home_ownership_nulos,
    COUNT(*) - COUNT(person_emp_length) AS person_emp_length_nulos
FROM dados_mutuarios;


SELECT 
    COUNT(*) - COUNT(loan_id) AS loan_id_nulos,
    COUNT(*) - COUNT(loan_intent) AS loan_intent_nulos,
    COUNT(*) - COUNT(loan_grade) AS loan_grade_nulos,
    COUNT(*) - COUNT(loan_amnt) AS loan_amnt_nulos,
    COUNT(*) - COUNT(loan_int_rate) AS loan_int_rate_nulos,
    COUNT(*) - COUNT(loan_status) AS loan_status_nulos,
    COUNT(*) - COUNT(loan_percent_income) AS loan_percent_income_nulos
FROM emprestimos;

SELECT 
    COUNT(*) - COUNT(cb_id) AS cb_id_nulos,
    COUNT(*) - COUNT(cb_person_default_on_file) AS cb_person_default_on_file_nulos,
    COUNT(*) - COUNT(cb_person_cred_hist_length) AS cb_person_cred_hist_length_nulos
FROM historicos_banco;

SELECT 
    COUNT(*) - COUNT(person_id) AS person_id_nulos,
    COUNT(*) - COUNT(loan_id) AS loan_id_nulos,
    COUNT(*) - COUNT(cb_id) AS cb_id_nulos
FROM ids;


