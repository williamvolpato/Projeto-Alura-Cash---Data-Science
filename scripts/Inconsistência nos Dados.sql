-- Verificação de Inconsistências na Tabela `dados_mutuarios`

-- Verificar idades fora do intervalo realista (abaixo de 18 ou acima de 100 anos)
SELECT * FROM dados_mutuarios WHERE person_age < 18 OR person_age > 100;

-- Verificar salários anuais negativos ou valores excessivamente altos
SELECT * FROM dados_mutuarios WHERE person_income < 0;

-- Verificar categorias inesperadas na coluna de situação da propriedade (`person_home_ownership`)
SELECT DISTINCT person_home_ownership FROM dados_mutuarios;

-- Verificar tempo de emprego (`person_emp_length`) com valores negativos
SELECT * FROM dados_mutuarios WHERE person_emp_length < 0;

-- Verificação de Inconsistências na Tabela `emprestimos`

-- Verificar valores de empréstimo (`loan_amnt`) que sejam zero ou negativos
SELECT * FROM emprestimos WHERE loan_amnt <= 0;

-- Verificar taxas de juros (`loan_int_rate`) que estejam fora do intervalo esperado (0 a 100%)
SELECT * FROM emprestimos WHERE loan_int_rate < 0 OR loan_int_rate > 100;

-- Verificar valores inesperados no status do empréstimo (`loan_status`)
SELECT DISTINCT loan_status FROM emprestimos;

-- Verificar proporção entre renda e valor do empréstimo (`loan_percent_income`) fora do intervalo esperado (0 a 1000%)
SELECT * FROM emprestimos WHERE loan_percent_income < 0 OR loan_percent_income > 1000;

-- Verificação de Inconsistências na Tabela `historicos_banco`

-- Verificar valores inesperados no indicador de inadimplência anterior (`cb_person_default_on_file`)
SELECT DISTINCT cb_person_default_on_file FROM historicos_banco;

-- Verificar histórico de crédito (`cb_person_cred_hist_length`) com valores negativos
SELECT * FROM historicos_banco WHERE cb_person_cred_hist_length < 0;

-- Listar os 10 maiores salários para verificar a presença de outliers
SELECT person_id, person_income
FROM dados_mutuarios
ORDER BY person_income DESC
LIMIT 10;

-- Estatísticas para identificar possíveis outliers
SELECT 
    AVG(person_income) AS media_salario,
    MIN(person_income) AS salario_minimo,
    MAX(person_income) AS salario_maximo
FROM dados_mutuarios;








