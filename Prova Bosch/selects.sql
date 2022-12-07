/* Esse arquivo deve ser rodado apos o arquivo 'inserts.sql' */

-- 4.
SELECT f.nome, d.dep_nome, f.salario FROM Funcionarios f
    JOIN Departamentos d
        ON d.dep_id = f.dep_id
    WHERE f.nome LIKE 'd%'
    ORDER BY f.salario DESC

-- 5.
SELECT f.nome, d.dep_nome, d.dep_local FROM Funcionarios f
    JOIN Departamentos d
        ON d.dep_id = f.dep_id

-- 6.
EXEC mudar 'Jonas'
GO
SELECT * FROM Funcionarios

-- 7.
SELECT TOP 1 f.nome, f.edv, f.lider, f.salario, g.grade FROM Funcionarios f
        JOIN Grade_salarial g
            ON f.salario BETWEEN g.sal_min AND g.sal_max
        ORDER BY f.data_de_contratacao

-- 8.
SELECT dep.dep_nome, subselect.quantidade_funcionarios FROM Departamentos dep,
    (SELECT f.dep_id, COUNT(f.nome) AS quantidade_funcionarios FROM Funcionarios f  WHERE f.salario > 4000 GROUP BY f.dep_id) AS subselect
    WHERE dep.dep_id = subselect.dep_id

-- 9.
EXEC alteraLider 'Lucio', 'Marcos'
GO
SELECT nome, edv FROM Funcionarios
    WHERE (lider = 'Marcos' OR lider = 'Captu') AND YEAR(data_de_contratacao) >= 2015
    -- WHERE lider in ('Marcos', 'Captu') AND YEAR(data_de_contratacao) >= 2015

-- 10.
SELECT dep.dep_nome,
    SUM(f.salario) / COUNT(f.salario) AS media_salarial,
    MAX(f.salario) AS maior_salario,
    MIN(f.salario) AS menor_salario
    FROM Funcionarios f
    JOIN Departamentos dep
        ON dep.dep_id = f.dep_id
    GROUP BY dep.dep_nome
