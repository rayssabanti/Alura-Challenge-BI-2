/* Análise Exploratória */ 

/* Bases */

-- Categorias de produtos

	select *
	from [dbo].[AluraSkimo_Categorias]

-- Clientes cadastrados
	select *
	from
	[dbo].[AluraSkimo_Clientes]
	
	
-- Quantidade de Itens vendidos
	select *
	from [dbo].[AluraSkimo_ItensPedido]

-- pedidos feitos
	select *
	from [dbo].[AluraSkimo_Pedido]

-- Produtos vendidos 
	select *
	from [dbo].[AluraSkimo_Produtos]


/* Faturamento */

select a.id_produto, a.quantidade_vendida, b.PRE_O, (a.quantidade_vendida * b.PRE_O) as faturamento
	--into #temp
	from [dbo].[AluraSkimo_ItensPedido] a
	inner join [dbo].[AluraSkimo_Produtos] b
	on a.id_produto = b.ID_Produto

-- Faturamento
	select sum(faturamento)
	from #temp
	
/* Custo */
	select *
	from #temp

	select a.*, b.CUSTO_DO_PRODUTO, (a.quantidade_vendida) as custo
	--into #temp3
	from #temp a
	inner join [dbo].[AluraSkimo_Produtos] b
	on a.id_produto = b.ID_Produto

		select sum(CUSTO_DO_PRODUTO)
	from #temp3
		
/* Total Vendas */
	select sum(quantidade_vendida)
	from #temp3

/* Ranking de produtos vendidos */
	select a.id_produto, sum(a.quantidade_vendida) as TotalVendido
	from [dbo].[AluraSkimo_ItensPedido] a
	inner join [AluraSkimo_Produtos] b
	on a.id_produto  = b.ID_Produto
	group by a.id_produto
	order by 2

	select a.*, b.Descritor
	from #temp5 a
	inner join [AluraSkimo_Produtos] b
	on a.id_produto  = b.ID_Produto
	order by 2

	
/* Categorias mais vendidas */
	

	select a.ID_Produto, b.CATEGORIA
	from [AluraSkimo_Produtos] a
	inner join [dbo].[AluraSkimo_Categorias] b
	on a.CATEGORIA = b.id_categoria


	select a.*, b.quantidade_vendida
	into #categoria2
	from #categorias a
	inner join [dbo].[AluraSkimo_ItensPedido] b
	on a.id_produto = b.id_produto
	

	select sum(quantidade_vendida)
	from #categoria2
	group by categoria

	select * from [AluraSkimo_Produtos]
	select 
	* from [dbo].[AluraSkimo_Categorias]


	/* Vendedores que mais geram faturamento  */
	select *
	from [dbo].[AluraSkimo_ItensPedido]