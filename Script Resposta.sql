--1
select Nome, Ano from filmes;



--2
select Nome, Ano from filmes
	order by Ano;

--3
select Nome, Ano, Duracao from filmes
	where Nome = 'De volta para o futuro';


--4
select * from filmes
	where Ano = 1997;

--5
select * from filmes
	where Ano > 2000;

--6
select * from filmes
	where Duracao > 100 AND Duracao < 150 
	order by Duracao

--7
select count(*) as quantidade, Ano from filmes
	group by Ano
	order by quantidade Desc;

--8
select PrimeiroNome, UltimoNome from atores
	where Genero = 'M';

--9
select PrimeiroNome, UltimoNome from atores
	where Genero = 'F'
	order by PrimeiroNome;

--10
select Nome, g.Genero from filmes f
	JOIN FilmesGenero fg ON f.Id = fg.IdFilme
	JOIN Generos g ON fg.IdGenero = g.Id;

--11
select Nome, g.Genero from filmes f
	JOIN FilmesGenero fg ON f.Id = fg.IdFilme
	JOIN Generos g ON fg.IdGenero = g.Id
	where Genero = 'Mistério';

--12
select Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel from filmes f
	JOIN ElencoFilme ef ON f.Id = ef.IdFilme
	JOIN Atores a ON a.Id = ef.IdAtor
