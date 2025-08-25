--aula 04
select * from aluno;
select (primeiro_nome || ' ' || ultimo_nome) as nome_completo from aluno;

select concat('Vinicius', NULL, 'Dias') || ' ';

select (primeiro_nome || ' ' || ultimo_nome) as nome_completo, 
EXTRACT(YEAR FROM AGE (data_nascimento)) AS idade
from aluno;

--FUNÇÕES MATEMÁTICAS
SELECT pi();

--CONVERSÃO DE TIPOS
SELECT TO_CHAR(NOW(), 'DD, MONTH, YYYY');



