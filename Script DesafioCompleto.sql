
-- Tarefa 1 Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM Filmes

-- Tarefa 2 Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano

-- Tarefa 3 Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT 
	Nome, 
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro' 

-- Tarefa 4 Buscar os filmes lançados em 1997
SELECT 
	*
FROM Filmes
WHERE Ano = 1997

-- Tarefa 5 Buscar os filmes lançados APÓS o ano 2000
SELECT * FROM Filmes WHERE Ano > 2000

-- Tarefa 6 Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT * FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao

-- Tarefa 7 Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, Count(*) AS QuantidadeFilmes 
FROM Filmes 
WHERE Ano IS NOT NULL
GROUP BY ANO
ORDER BY QuantidadeFilmes DESC

-- Tarefa 8 Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT * FROM Atores WHERE Genero = 'M'

-- Tarefa 9 Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

-- Tarefa 10 Buscar o nome do filme e o gênero
SELECT f.Nome AS Nome, g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id;

-- Tarefa 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT f.Nome AS Nome, g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério';

-- Tarefa 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT f.Nome AS NomeFilme, a.PrimeiroNome, a.UltimoNome, ef.Papel  
FROM Filmes f
INNER JOIN ElencoFilme ef ON ef.IdFilme = f.Id
INNER JOIN Atores a ON ef.IdAtor = a.Id;