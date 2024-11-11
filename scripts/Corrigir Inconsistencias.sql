-- Correção de Inconsistências na Tabela `dados_mutuarios`

-- 1. Excluir o registro com idade irreal e salário discrepante
DELETE FROM dados_mutuarios 
WHERE person_age = 144 AND person_income = 6000000;

-- 2. Remover registros com valores em branco na coluna `person_home_ownership`
DELETE FROM dados_mutuarios 
WHERE person_home_ownership = '';

-- Correção de Inconsistências na Tabela `emprestimos`

-- 3. Remover registros com `loan_status` nulo (sem informações de status do empréstimo)
DELETE FROM emprestimos 
WHERE loan_status IS NULL;

-- Correção de Inconsistências na Tabela `historicos_banco`

-- 4. Remover registros com valores em branco na coluna `cb_person_default_on_file`
DELETE FROM historicos_banco 
WHERE cb_person_default_on_file = '';


-- Excluir registros com idades irreais (maiores que 100 anos)
DELETE FROM dados_mutuarios 
WHERE person_age > 100;
