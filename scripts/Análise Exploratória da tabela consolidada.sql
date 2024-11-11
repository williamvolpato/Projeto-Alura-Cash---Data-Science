-- Distribuição de Inadimplência por loan_grade
SELECT loan_grade, loan_status, COUNT(*) AS quantidade
FROM clientes_consolidado
GROUP BY loan_grade, loan_status
ORDER BY loan_grade;

-- Inadimplência por Faixa de Renda
SELECT 
    CASE 
        WHEN person_income < 25000 THEN 'Low'
        WHEN person_income BETWEEN 25000 AND 75000 THEN 'Medium'
        WHEN person_income > 75000 THEN 'High'
    END AS income_range,
    loan_status, COUNT(*) AS quantidade
FROM clientes_consolidado
GROUP BY income_range, loan_status
ORDER BY income_range;

-- Inadimplência por Proporção Empréstimo/Renda
SELECT 
    CASE 
        WHEN loan_percent_income < 0.2 THEN 'Low'
        WHEN loan_percent_income BETWEEN 0.2 AND 0.4 THEN 'Medium'
        WHEN loan_percent_income > 0.4 THEN 'High'
    END AS percent_income_range,
    loan_status, COUNT(*) AS quantidade
FROM clientes_consolidado
GROUP BY percent_income_range, loan_status
ORDER BY percent_income_range;

-- Inadimplência por Motivo do Empréstimo
SELECT loan_intent, loan_status, COUNT(*) AS quantidade
FROM clientes_consolidado
GROUP BY loan_intent, loan_status
ORDER BY loan_intent;

-- Inadimplência por Tempo de Emprego
SELECT person_emp_length, loan_status, COUNT(*) AS quantidade
FROM clientes_consolidado
GROUP BY person_emp_length, loan_status
ORDER BY person_emp_length;

-- Inadimplência por Tempo de Histórico de Crédito
SELECT cb_person_cred_hist_length, loan_status, COUNT(*) AS quantidade
FROM clientes_consolidado
GROUP BY cb_person_cred_hist_length, loan_status
ORDER BY cb_person_cred_hist_length;





