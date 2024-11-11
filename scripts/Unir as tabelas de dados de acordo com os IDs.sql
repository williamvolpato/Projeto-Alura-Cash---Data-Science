-- Consulta para unir as tabelas e criar uma tabela consolidada com dados de cada cliente
SELECT 
    d.person_id,
    d.person_age,
    d.person_income,
    d.person_home_ownership,
    d.person_emp_length,
    e.loan_id,
    e.loan_intent,
    e.loan_grade,
    e.loan_amnt,
    e.loan_int_rate,
    e.loan_status,
    e.loan_percent_income,
    h.cb_id,
    h.cb_person_default_on_file,
    h.cb_person_cred_hist_length
FROM dados_mutuarios d
JOIN ids i ON d.person_id = i.person_id
JOIN emprestimos e ON i.loan_id = e.loan_id
JOIN historicos_banco h ON i.cb_id = h.cb_id;

-- Criação da tabela consolidada
CREATE TABLE clientes_consolidado AS
SELECT 
    d.person_id,
    d.person_age,
    d.person_income,
    d.person_home_ownership,
    d.person_emp_length,
    e.loan_id,
    e.loan_intent,
    e.loan_grade,
    e.loan_amnt,
    e.loan_int_rate,
    e.loan_status,
    e.loan_percent_income,
    h.cb_id,
    h.cb_person_default_on_file,
    h.cb_person_cred_hist_length
FROM dados_mutuarios d
JOIN ids i ON d.person_id = i.person_id
JOIN emprestimos e ON i.loan_id = e.loan_id
JOIN historicos_banco h ON i.cb_id = h.cb_id;

SELECT * FROM clientes_consolidado LIMIT 10;


