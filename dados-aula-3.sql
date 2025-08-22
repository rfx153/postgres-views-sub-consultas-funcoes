--dados da aula 03
--parte 02(video 02)

select * from curso;
select * from categoria;

select * from curso where categoria_id IN (1,2);

select id from categoria where nome not like '% %'

select curso.nome from curso where categoria_id in (
select id from categoria where nome like '% de %'
);

--parte 05 

SELECT categoria.nome AS categoria,
        COUNT(curso.id) as numero_cursos
    FROM categoria
    JOIN curso ON curso.categoria_id = categoria.id
GROUP BY categoria;

select categoria, 
		numero_cursos
		from algum_lugar
		where numero_cursos > 3;


select categoria, 
	   numero_cursos
	from (
		SELECT categoria.nome AS categoria,
	    COUNT(curso.id) as numero_cursos
	    FROM categoria
	    JOIN curso ON curso.categoria_id = categoria.id
		GROUP BY categoria;		
	) as categoria_cursos
	where numer_cursos > 3;