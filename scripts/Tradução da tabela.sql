ALTER TABLE clientes_consolidado
CHANGE COLUMN person_id id_pessoa VARCHAR(16),
CHANGE COLUMN person_age idade INT,
CHANGE COLUMN person_income renda INT,
CHANGE COLUMN person_home_ownership situacao_residencia VARCHAR(8),
CHANGE COLUMN person_emp_length tempo_emprego DOUBLE,
CHANGE COLUMN loan_id id_emprestimo VARCHAR(16),
CHANGE COLUMN loan_intent motivo_emprestimo VARCHAR(32),
CHANGE COLUMN loan_grade classificacao_emprestimo VARCHAR(1),
CHANGE COLUMN loan_amnt valor_emprestimo INT,
CHANGE COLUMN loan_int_rate taxa_juros DOUBLE,
CHANGE COLUMN loan_status status_emprestimo INT,
CHANGE COLUMN loan_percent_income percentual_renda_emprestimo DOUBLE,
CHANGE COLUMN cb_id id_credito VARCHAR(16),
CHANGE COLUMN cb_person_default_on_file inadimplente_arquivo VARCHAR(1),
CHANGE COLUMN cb_person_cred_hist_length tempo_hist_credito INT;


SELECT 
    id_pessoa,
    idade,
    renda,
    situacao_residencia,
    tempo_emprego,
    id_emprestimo,
    motivo_emprestimo,
    classificacao_emprestimo,
    valor_emprestimo,
    taxa_juros,
    status_emprestimo,
    percentual_renda_emprestimo,
    id_credito,
    inadimplente_arquivo,
    tempo_hist_credito
FROM clientes_consolidado
LIMIT 10;
