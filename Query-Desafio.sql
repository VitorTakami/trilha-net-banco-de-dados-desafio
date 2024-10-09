-- 1
SELECT Nome, Ano from Filmes;

-- 2
SELECT Nome, Ano, Duracao from Filmes order by Ano;

-- 3
SELECT Nome, Ano, Duracao from Filmes where Nome = 'De volta para o futuro'

-- 4
Select Nome, Ano, Duracao from Filmes where Ano = '1997'

-- 5
Select Nome, Ano, Duracao from Filmes where Ano > '2000'

--6
Select Nome, Ano, Duracao from Filmes where Ano > '2000'

-- 7
Select Nome, Ano, Duracao from Filmes where Duracao > 100 and Duracao < 150

-- 8
SELECT Ano, COUNT(ano) as quantidade from Filmes group by ano

-- 9
SELECT Id, PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'M'

-- 10
SELECT Id, PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'F'

-- 11
SELECT 
	F.Nome,
	G.Genero 
from 
	Filmes F 
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.Id

SELECT 
	F.Nome,
	G.Genero 
from 
	Filmes F 
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.Id
Where G.Genero = 'Mistério'

-- 12
Select
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	EF.Papel
FROM
	Filmes F
INNER JOIN ElencoFilme EF ON F.Id = EF.IdFilme
INNER JOIN Atores A on A.Id = EF.IdAtor 





