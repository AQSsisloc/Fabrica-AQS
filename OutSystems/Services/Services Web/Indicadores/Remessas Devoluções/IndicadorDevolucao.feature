#language: pt
#IndicadorDevolucao 
#ServicesWeb


Funcionalidade: Visualizar devoluções realizadas pelo Services 
  Como um usuário do Services Web
  Eu quero visuaslizar indicadores referente as devoluções
  Para analisar informações do processo de devolução


Dado Esteja logado no Services Web 


@Cenario1
@Automatizar
@IndicadorDevolucao
Esquema do Cenario: Visualizar indicador Devolução aba hoje 
E selecionar <Empresa>
E clicar em "Indicadores"
E clicar em "Remessas e Devoluções"
Quando clicar "Hoje"
Entao apresenta indicador

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario2
@Automatizar
@IndicadorDevolucao
Esquema do Cenario: Visualizar indicador Devolução aba Semana Atual 
E selecionar <Empresa>
E clicar em "Indicadores"
E clicar em "Remessas e Devoluções"
Quando clicar "Semana Atual"
Entao apresenta indicador 

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario3
@Automatizar
@IndicadorDevolucao
Esquema do Cenario: Visualizar indicador Devoluções aba Semana Anterior
E selecionar <Empresa>
E clicar em "Indicadores"
E clicar em "Remessas e Devoluções"
Quando clicar "Semana Anterior"
Entao apresenta indicador 

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario4
@Automatizar
@IndicadorDevolucao
Esquema do Cenario: Visualizar indicador Devoluções aba Mês Atual
E selecionar <Empresa>
E clicar em "Indicadores"
E clicar em "Remessas e Devoluções"
Quando clicar "Mês Atual"
Entao apresenta indicador

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario5
@Automatizar
@IndicadorDevolucao
Esquema do Cenario: Visualizar indicador Devoluções aba Mês Anterior
E selecionar <Empresa>
E clicar em "Indicadores"
E clicar em "Remessas e Devoluções"
Quando clicar "Mês Anterior"
Entao apresenta indicador

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario6
@Automatizar
@IndicadorDevolucao
Esquema do Cenario: Visualizar indicador Devoluções aba Ano Atual
E selecionar <Empresa>
E clicar em "Indicadores"
E clicar em "Remessas e Devoluções"
Quando clicar "Ano Atual"
Entao apresenta indicador

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario7
@Automatizar
@IndicadorDevolucao
Esquema do Cenario: Visualizar indicador Devoluções aba Ano Anterior
E selecionar <Empresa>
E clicar em "Indicadores"
E clicar em "Remessas e Devoluções"
Quando clicar "Ano Anterior"
Entao apresenta indicador

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario8
@Automatizar
@IndicadorDevolucao
Esquema do Cenario: Visualizar indicador Devoluções aba Período
E selecionar <Empresa>
E clicar em "Services"  
E clicar em "Remessas e Devoluções"
Quando clicar "Período"
E selecionar data <Data>
Entao apresenta indicador 

Exemplos:
| Empresa | Data       | 
| MATRIZ  | 09/10/2023 |



@Cenario9
@Automatizar
@IndicadorDevolucao
Esquema do Cenario: Filtrar indicadores Devolução
E selecionar <Empresa>
E clicar em "Indicadores"
E clicar em "Remessas e Devoluções"
Quando clicar "Filtro Avançado"
E preencher os dados
E clicar em "Filtrar"
Entao apresenta indicador 

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario10
@Automatizar
@IndicadorDevolucao
Esquema do Cenario: Detalhes indicadores Devoluções
E selecionar <Empresa>
E clicar em "Indicadores"
E clicar em "Remessas e Devoluções"
Quando clicar "Detalhes"
Entao apresenta detalhes das devoluções 

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario11
@Automatizar
@IndicadorDevolucao
Esquema do Cenario: Exportar indicadores Devoluções para excel 
E selecionar <Empresa>
E clicar em "Indicadores"
E clicar em "Remessas e Devoluções"
E clicar "Detalhes"
Quando clicar em "Exportar"
E clicar "Exportar Aquivos"
Entao arquivo é gerado 

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario12
@Automatizar
@IndicadorDevolucao
Esquema do Cenario: Visualizar produto Devolução
E selecionar <Empresa>
E clicar em "Indicadores"
E clicar em "Remessas e Devoluções"
E clicar "Detalhes"
Quando clicar em "Equipamento"
Entao apresenta produto

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario13
@Automatizar
@IndicadorDevolucao
Esquema do Cenario: Devoluções concluídas com ocorrências 
E selecionar <Empresa>
E clicar em "Indicadores"
E clicar em "Remessas e Devoluções"
Quando clicar em "Devolução(s) Com Ocorrência"
Entao destaca dados de ocorrência 

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario14
@Automatizar
@IndicadorDevolucao
Esquema do Cenario: Devoluções concluídas sem ocorrências
E selecionar <Empresa>
E clicar em "Indicadores"
E clicar em "Remessas e Devoluções"
Quando clicar em "Devolução(s) Sem Ocorrência"
Entao destaca dados de ocorrência 

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario15
@Automatizar
@IndicadorDevolucao
Esquema do Cenario: Devoluções concluídas expandir grafico 
E selecionar <Empresa>
E clicar em "Indicadores"
E clicar em "Remessas e Devoluções"
Quando clicar "Expandir" em "Remessas Concluídas" 
Entao expande gráfico 

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario16
@Automatizar
@IndicadorDevolucao
Esquema do Cenario: Motivo de Ocorrência de Devoluções Concluídas
E selecionar <Empresa>
E clicar em "Indicadores"
E clicar em "Remessas e Devoluções"
Quando clicar <Motivo> em "Devolucao Concluídas" 
Entao destaca motivo no gráfico

Exemplos:
| Empresa | Motivo         |
| MATRIZ  | Sem Ocorrência |



@Cenario17
@Automatizar
@IndicadorDevolucao
Esquema do Cenario: Expandir Motivo de Ocorrência de Devoluções Concluídas
E selecionar <Empresa>
E clicar em "Indicadores"
E clicar em "Remessas e Devoluções"
Quando clicar "Expandir" em "Motivo de Ocorrências de Devoluções Concluídas" 
Entao Expande gráfico

Exemplos:
| Empresa | 
| MATRIZ  | 
