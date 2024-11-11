-- Distribuição de Idades
SELECT person_age, COUNT(*) AS quantidade
FROM dados_mutuarios
GROUP BY person_age
ORDER BY person_age;

-- Distribuição dos Salários
SELECT person_income, COUNT(*) AS quantidade
FROM dados_mutuarios
GROUP BY person_income
ORDER BY person_income;

-- Situação da Propriedade
SELECT person_home_ownership, COUNT(*) AS quantidade
FROM dados_mutuarios
GROUP BY person_home_ownership
ORDER BY quantidade DESC;

-- Tempo de Emprego
SELECT person_emp_length, COUNT(*) AS quantidade
FROM dados_mutuarios
GROUP BY person_emp_length
ORDER BY person_emp_length;

-- Motivo dos Empréstimos
SELECT loan_intent, COUNT(*) AS quantidade
FROM emprestimos
GROUP BY loan_intent
ORDER BY quantidade DESC;

-- Classificação dos Empréstimos
SELECT loan_grade, COUNT(*) AS quantidade
FROM emprestimos
GROUP BY loan_grade
ORDER BY loan_grade;

-- Status dos Empréstimos
SELECT loan_status, COUNT(*) AS quantidade
FROM emprestimos
GROUP BY loan_status;

-- Tempo de Histórico de Crédito
SELECT cb_person_cred_hist_length, COUNT(*) AS quantidade
FROM historicos_banco
GROUP BY cb_person_cred_hist_length
ORDER BY cb_person_cred_hist_length;







