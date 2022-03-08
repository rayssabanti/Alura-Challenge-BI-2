## :bar_chart: Alura Challenge BI - 2
Esse desafio consiste em desenvolver as habilidades em Business Intelligence e colocar em prática a exploração de bases de dados e a exibição de informações relevantes com o objetivo de auxiliar a tomada de decisão. 
O desafio terá 3 semanas divididos em 3 diferentes projetos:
* :pushpin: **Alura Films** - analisar dados sobre o IMDB (Internet Movie Database) dos filmes e suas informações.
* :pushpin: **Alura Food** - precisa de um dashboard para analisar o mercado de restaurantes na Índia.
* :pushpin: **Alura Skimo** - precisa analisar as métricas de suas vendas.

### :film_strip: Alura Filmes
*Objetivo*: A Alura Films contratou você para fazer uma pesquisa de mercado, com a finalidade de identificar a seleção ideal de elenco e produção. 
Para isso, ela disponibilizou uma base de dados do IMDB com 1000 filmes. 
Use suas habilidades e conhecimentos para explorar, tratar e transformar os dados em informações relevantes que auxiliem na tomada de decisão da empresa.

#### :bulb: Analisando a base de dados
  * :brain:	 Task 1: O dinheiro ganho do filme por estrela 1, estrela 2, estrela 3 e estrela 4 :heavy_check_mark:
  * :brain:	 Task 2: Filmes mais votados :heavy_check_mark:
  * :brain:	 Task 3: Gêneros mais rentáveis :heavy_check_mark:
  * :brain:  Task 4: Estrelas que mais aparecem nos filmes :heavy_check_mark:
  * :brain:  Task 5: Explorar meta score, IMDB e número de votos :heavy_check_mark:
  * :brain:  Task 6: O percentual dos (n) gêneros mais explorados nos filmes :heavy_check_mark:
 
#### :bulb: Extra
  * :brain:	 Task 1: Usar a classificação indicativa :heavy_check_mark:
  * :brain:	 Task 2: Traduzir as linhas das colunas :heavy_check_mark:
  
 #### :bulb: Visualizações
 ![image](https://user-images.githubusercontent.com/61653788/155603612-a5acfd88-4f23-44c5-bfc2-084d15dce399.png)
 ![image](https://user-images.githubusercontent.com/61653788/155604556-a9f9773f-67df-498c-aea8-3c37b013d3f3.png)


### :poultry_leg: Alura Food
*Objetivo*: A Alura Food tem interesse em expandir seu negócio entrando no mercado indiano. Para isso, ela precisa da sua ajuda na criação de métricas e análise dos dados disponibilizados para tomar a melhor decisão.

#### :bulb: Analisando a base de dados

Os dados foram disponibilizados em json, que é um pouco complexo de se extrair em python/sql, comecei trabalhando pelo PowerBI:

*1* - Abri todos os arquivos no Powerbi. 
*2*- Analisei que as informações estavam apenas dentro da coluna Restaurants.
*3*- Extrai de todos os arquivos essa coluna principal e exclui as outras colunas que já vem por padrão pois não usaria. 
*4*- Juntei os aquivos em uma tabela só.
*5*- Expandi outras colunas necessárias para a análise e renomeei as colunas necessárias. 
*6*- Exportei para CSV (vou deixar o arquivo salvo na pasta, caso alguém precise) para poder fazer a análise exploratória pelo SQL. 

* :brain:	Task 1: Filtrar por cidade, restaurantes e se tem reserva:heavy_check_mark:
* :brain:	Task 2: Total de restaurantes na Índia:heavy_check_mark:
* :brain:	Task 3: Preço médio:heavy_check_mark:
* :brain:	Task 4: Média de avaliação:heavy_check_mark:
* :brain:	Task 5: Porcentagem de restaurantes que tem ou não delivery online:heavy_check_mark:
* :brain:	Task 6: Cidades que mais possuem restaurantes:heavy_check_mark:
* :brain:	Task 7: Culinárias que mais são exploradas na Índia:heavy_check_mark:
* :brain:	Task 8: Restaurantes por cidade e suas classificações:heavy_check_mark:

#### :bulb: Extra
  * :brain:	 Task 1: Preço médio através das moedas BRL, USD e EUR.:heavy_check_mark:
  * :brain:	 Task 2: Página de estudo sobre cada restaurante:heavy_check_mark:

#### :bulb: Visualizações
![image](https://user-images.githubusercontent.com/61653788/156929086-3f97c4e2-e21c-48d1-a2e2-847d3e14d2cd.png)
![image](https://user-images.githubusercontent.com/61653788/156931853-1ceddfcf-b351-42c8-975c-726bca5bf76f.png)


### :moneybag: Alura Skimo
*Objetivo*: A Alura Skimo necessita acompanhar suas vendas através de um painel que comporte todas métricas necessárias.

#### :bulb: Analisando a base de dados
* :brain:	 Task 1: Faturamento :heavy_check_mark:
* :brain:	 Task 2: Ranking de produtos vendidos :heavy_check_mark:
* :brain:	 Task 3: Vendedores que mais geram faturamento  :heavy_check_mark:
* :brain:	 Task 4: Custo :heavy_check_mark: 
* :brain:	 Task 5: Quantidade de vendas :heavy_check_mark:
* :brain:	 Task 6: Lucro :heavy_check_mark:
* :brain:	 Task 7: Categorias mais vendidas  :heavy_check_mark:
* :brain:	 Task 8: Ticket médio por venda :heavy_check_mark: 

![image](https://user-images.githubusercontent.com/61653788/157314454-2b8d01bd-ac78-4701-af28-0e2b978c1371.png)
#### :bulb: Extra (to do)
