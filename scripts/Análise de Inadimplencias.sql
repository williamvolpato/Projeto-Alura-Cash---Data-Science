-- Distribuição de Inadimplência por Faixa Etária
SELECT person_age, loan_status, COUNT(*) AS quantidade
FROM dados_mutuarios d
JOIN ids i ON d.person_id = i.person_id
JOIN emprestimos e ON i.loan_id = e.loan_id
GROUP BY person_age, loan_status
ORDER BY person_age;

-- Inadimplência por Situação da Propriedade
SELECT person_home_ownership, loan_status, COUNT(*) AS quantidade
FROM dados_mutuarios d
JOIN ids i ON d.person_id = i.person_id
JOIN emprestimos e ON i.loan_id = e.loan_id
GROUP BY person_home_ownership, loan_status
ORDER BY person_home_ownership;

-- Inadimplência por Motivo do Empréstimo
SELECT loan_intent, loan_status, COUNT(*) AS quantidade
FROM emprestimos
GROUP BY loan_intent, loan_status
ORDER BY loan_intent;

-- Inadimplência por Classificação do Empréstimo
SELECT loan_grade, loan_status, COUNT(*) AS quantidade
FROM emprestimos
GROUP BY loan_grade, loan_status
ORDER BY loan_grade;

-- Inadimplência por Proporção Empréstimo/Renda
SELECT loan_percent_income, loan_status, COUNT(*) AS quantidade
FROM emprestimos
GROUP BY loan_percent_income, loan_status
ORDER BY loan_percent_income DESC;

-- Tempo de Histórico de Crédito e Inadimplência
SELECT cb_person_cred_hist_length, loan_status, COUNT(*) AS quantidade
FROM historicos_banco h
JOIN ids i ON h.cb_id = i.cb_id
JOIN emprestimos e ON i.loan_id = e.loan_id
GROUP BY cb_person_cred_hist_length, loan_status
ORDER BY cb_person_cred_hist_length;



