-- Preencher valores nulos de loan_int_rate com a média da taxa de juros por loan_grade
UPDATE clientes_consolidado c
JOIN (
    SELECT loan_grade, AVG(loan_int_rate) AS avg_loan_int_rate
    FROM clientes_consolidado
    WHERE loan_int_rate IS NOT NULL
    GROUP BY loan_grade
) AS avg_rates ON c.loan_grade = avg_rates.loan_grade
SET c.loan_int_rate = avg_rates.avg_loan_int_rate
WHERE c.loan_int_rate IS NULL;


SELECT * FROM clientes_consolidado LIMIT 20;
