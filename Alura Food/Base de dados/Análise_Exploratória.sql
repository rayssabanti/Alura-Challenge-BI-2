
/* AN�LISE EXPLORAT�RIA */ 

-- Importados os dados em CSV
	select * from [AluraFood_Dados]

-- Task 1: Filtrar por cidade, restaurantes e se tem reserva
   select 
   nome, Cidade, Tem_reserva_de_mesa
   from 
   [AluraFood_Dados]

 
-- Task 2: Total de restaurantes na �ndia
	
	alter table [AluraFood_Dados] alter column [M�dia_de_custo_para_2_pessoas] money

		-- Como poder existir um mesmo restaurante em diferentes endere�os 
	select distinct [Endere�o], Cidade, Nome, [M�dia_de_custo_para_2_pessoas], [M�dia_de_votos],[Tem_delivery_online],[Tem_reserva_de_mesa],[Latitude],[Longitute],[Moeda] id_pa�s
	--into AluraFood_Restaurantes
	from 
	[AluraFood_Dados]
	    -- Total de 8652 restaurantes

-- Task 3: Pre�o m�dio
	select avg([M�dia_de_custo_para_2_pessoas])
	from  AluraFood_Restaurantes

-- Task 3: M�dia avalia��o
	select avg([M�dia_de_votos])
	from  AluraFood_Restaurantes

--  Task 5: Porcentagem de restaurantes que tem ou n�o delivery online
 select distinct [Endere�o], Cidade, Nome, [M�dia_de_custo_para_2_pessoas], [M�dia_de_votos],[Tem_delivery_online],[Tem_reserva_de_mesa],[Latitude],[Longitute],[Moeda], id_pa�s
	--into AluraFood_Restaurantes
	from 
	[AluraFood_Dados]


