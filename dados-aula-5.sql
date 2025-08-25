-- conceito de visão de sql;
create view vw_cursos_por_categoria as
		SELECT categoria.nome AS categoria,
	    COUNT(curso.id) as numero_cursos
	    FROM categoria
	    JOIN curso ON curso.categoria_id = categoria.id
		GROUP BY categoria ;

SELECT * FROM vw_cursos_por_Categoria;

CREATE VIEW vw_cursos_programacao AS SELECT nome FROM curso WHERE categoria_id = 2;

select * from vw_cursos_programacao;
select * from vw_cursos_programacao where nome = 'PHP'