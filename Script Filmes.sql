--1,2
SELECT 
	Nome, Ano, Duracao 
FROM
	Filmes
ORDER BY
	Ano


--3
SELECT 
	Nome, Ano, Duracao
FROM 
	Filmes
WHERE 
	Nome LIKE 'De Volta para o futuro'


--4
SELECT 
	Nome, Ano, Duracao
FROM 
	Filmes
WHERE 
	Ano LiKE '1997'


--5
SELECT 
	Nome, Ano, Duracao 
FROM 
	Filmes
WHERE
	Ano > '2000' 


--6
SELECT 
	Nome, Ano, Duracao 
FROM 
	Filmes
WHERE 
	Duracao > 100 
	AND 
	Duracao < 150
ORDER BY
	Duracao


--7
SELECT 
	Ano, 
	COUNT(*) AS Quantidade
FROM 
	Filmes
GROUP BY 
	Ano
ORDER BY
	Quantidade DESC


--8
SELECT 
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM 
	Atores
WHERE 
	Genero
	LIKE
	'M'

--9
SELECT
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM
	Atores
WHERE
	Genero
	LIKE
	'F'
ORDER BY
	PrimeiroNome

--10
SELECT 
	Filmes.Nome,
	Generos.Genero
FROM 
	Filmes
INNER JOIN
	FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN
	Generos ON FilmesGenero.IdGenero = Generos.Id

--11 
SELECT 
	Filmes.Nome,
	Generos.Genero
FROM 
	Filmes
INNER JOIN FilmesGenero ON filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE 
	Generos.Genero
	LIKE
	'Mistério'

--12
SELECT
	Filmes.Nome,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	ElencoFilme.Papel
FROM
	Filmes
INNER JOIN
	ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN
	Atores ON ElencoFilme.IdAtor = Atores.Id