
/* ANÁLISE EXPLORATÓRIA */ 

-- Importados os dados em CSV
	select * from [AluraFood_Dados]

-- Task 1: Filtrar por cidade, restaurantes e se tem reserva
   select 
   nome, Cidade, Tem_reserva_de_mesa
   from 
   [AluraFood_Dados]

 
-- Task 2: Total de restaurantes na Índia
	
	alter table [AluraFood_Dados] alter column [Média_de_custo_para_2_pessoas] money

		-- Como poder existir um mesmo restaurante em diferentes endereços 
	select distinct [Endereço], Cidade, Nome, [Média_de_custo_para_2_pessoas], [Média_de_votos],[Tem_delivery_online],[Tem_reserva_de_mesa],[Latitude],[Longitute],[Moeda] id_país
	--into AluraFood_Restaurantes
	from 
	[AluraFood_Dados]
	    -- Total de 8652 restaurantes

-- Task 3: Preço médio
	select avg([Média_de_custo_para_2_pessoas])
	from  AluraFood_Restaurantes

-- Task 3: Média avaliação
	select avg([Média_de_votos])
	from  AluraFood_Restaurantes

--  Task 5: Porcentagem de restaurantes que tem ou não delivery online
 select distinct [Endereço], Cidade, Nome, [Média_de_custo_para_2_pessoas], [Média_de_votos],[Tem_delivery_online],[Tem_reserva_de_mesa],[Latitude],[Longitute],[Moeda], id_país
	--into AluraFood_Restaurantes
	from 
	[AluraFood_Dados]


