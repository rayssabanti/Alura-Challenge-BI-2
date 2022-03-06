
/* Análise Exploratória */

select * 
from Filmes

/* O dinheiro ganho do filme por estrela 1, estrela 2, estrela 3 e estrela 4 */

		-- Criando a lista de atores 
		select star1 
		into #teste
		from Filmes

		insert into #teste
				select star4
				from Filmes

		select * from #teste
		order by 1

		-- A lista de Atores - total 2.709
		Select distinct * from #teste

		 Select distinct * 
		 into #teste2 
		 from #teste

		-- Corrigindo os nulos, pesquisando os valores de faturamento no google 
		Select Series_Title, Gross 
		from Filmes 
		where Gross is   null

		Update Filmes 
		set Gross ='14,543,394'
		where Series_Title = 'Spoorloos'

		-- Criando as visualizações 

		-- Categorizando os atores 
			select A.Star1 as Ator,  f.Series_Title as Titulo, cast(gross as money) as DinheiroGanho,
		Case when F.Star1 = A.Star1 then 'Star 1' 
			 when F.Star2 = A.Star1 then 'Star 2'
			 when F.Star3 = A.Star1 then 'Star 3'
			 when F.Star4 = A.Star1 then 'Star 4' end as [EstrelandoComo]
		--into GanhoPorAtor
		from  Filmes F
		inner join #teste2  A
			ON F.Star1 = A.Star1 or F.Star2 = A.Star1  or F.Star3 = A.Star1 or F.Star4 = A.Star1
		order by 1


		-- confirmando 
		Select Series_Title, cast(gross as money), Star1, Star2,Star3,star4
		from Filmes
		where Star1 = 'Aamir Khan' or  Star2 = 'Aamir Khan'  or Star3 = 'Aamir Khan' or Star4 = 'Aamir Khan'


		-- Existem 4 casos que o Ator principal támbém é o secundário 
		Select Series_Title, cast(gross as money), Star1, Star2,Star3,star4
		from Filmes
		where Star1 = Star2 
		or Star1 = Star2 
		or Star1 = Star3 
		or Star1 = Star4

		-- por isso 3996 na categorização de ator1, 2, 3 ou 4 
		-- Checando os valores do Pb
		Select * from GanhoPorAtor 
		where ator = 'Robert Downey Jr.'
		order by 1 

		select Ator, Titulo, DinheiroGanho, EstrelandoComo from 
		GanhoPorAtor

	/*  Estrelas que mais aparecem nos filmes */

		Select Ator, count(*) as [Aparições em Filmes]
		--into [ContagemFilmesAtores]
		from GanhoPorAtor 
		Group by Ator
		order by 2 DESC


 /*  Atores com filmes com as melhores nota no IMDB */

	select  top 6 Ator, AVG(IMDB)  as MédiaIMDB
	--into AtoresMediaIMDB
	from IMDB_Estrelas
	group by Ator
	order by 2 desc

   select  * from [dbo].[AtoresMediaIMDB]


	 /*  Atores com filmes com as melhores notas no Metascore */
	
	-- Cuidando dos valores nullos 
	select avg(Meta_score) as Meta_Score, series_title as Filmes
	from 
	Filmes
	group by series_title

	-- pegando a média de notas 
	select avg(Meta_score) as Meta_Score
	from 
	Filmes

	-- Colocando a média nos campos null
	update Filmes  
	SET 
	Meta_score = 77
	where 
	Meta_score is null 

	-- Pegando a Meta_score por ator 
	select avg(Meta_score) as Meta_Score, series_title as Filmes
	--into #filmes
	from 
	Filmes
	group by series_title


	select  b.Ator, a.meta_score
	into #AtorMeta
	from #Filmes a
	full join ganhoporator b 
	on a.Filmes = b.Titulo

	-- Pegando a Meta_score por ator 
	select a.*, b.MediaMetaScore
	into [dbo].[ContagemFilmesAtores2]
	from ContagemFilmesAtores a 
	inner join (
	select Ator, avg(meta_score) as MediaMetaScore
	from #AtorMeta
	group by ator) b
	on a.ator = b.Ator

	select b.*, a.TotalVotos
	into GanhoPorAtor2
	from filmes2 a 
	inner join [GanhoPorAtor] b 
	on a.titulo = b.Titulo

	select *
	from [GanhoPorAtor]


	select * from [dbo].[ContagemFilmesAtores]

	/* Trabalhando com os filmes */ 

	select Id_Title AS ID_Titulo, Series_Title  as Titulo, Gross as Lucro, Released_Year as Ano_Lancamento, Certificate as Classificacao_Indicativa, 
	Runtime as Duracao, Genre as Genero, IMDB_Rating as NotaIMDB, Overview AS Overview,
	Meta_score as MetaScore, Director as Diretor, Star1 as Estrela1, Star2 as Estrela2, Star3 as Estrela3, Star4 as Estrela4, Noofvotes as TotalVotos
	from filmes 

	-- Existe dois Filmes com o mesmo Nome 
	select * from filmes
	where Titulo = 'Drishyam'

	update Filmes
	set Titulo = 'Drishyam UA'
	WHERE
	ID_Titulo = 137
	

	-- Separar o Genero Principal 

select titulo, Generos
from filmesGeneros


 select  top 1 with ties Titulo, Generos as GeneroPrincipal, Diretor, Genero
						into FilmesGeneroPrincipal
								 FROM filmesGeneros
									order by ROW_NUMBER() OVER(PARTITION BY Titulo ORDER BY Titulo );


select A.Titulo, A.GeneroPrincipal, A.Diretor, B.Lucro
INTO FilmesGeneroPrincipal
from FilmesGeneroPrincipal A 
inner join Filmes B 
ON A.Titulo = B.Titulo


select GeneroPrincipal, sum(lucro) from FilmesGeneroPrincipal
group by GeneroPrincipal
order by sum(lucro)


select * from [dbo].[FilmesGeneroPrincipal]
select * from [dbo].[FilmesGeneros]

update [FilmesGeneroPrincipal] 
set GeneroPrincipal = 'Drama'
where GeneroPrincipal = ' Drama'

update [dbo].[FilmesGeneros]
set Generos = 'História'
where Generos = 'History'