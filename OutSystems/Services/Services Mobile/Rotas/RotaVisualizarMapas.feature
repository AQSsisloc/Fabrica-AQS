#language: pt
#VisualizarMapas
#ServicesMobile


Funcionalidade: Visualizar trajeto da rota 
  Como um usuário do Services Mobile 
  Eu quero visualizar o trajeto da rota e local da atividade
  Para orientação no deslocamento do percurso


Dado que esteja logado no Service Mobile


@Cenario1
@Manual
@ExibirTrajeto
Esquema do Cenario: Exibir trajeto da rota 
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
Quando clicar no "Mapa"
Entao exibe trajeto da rota 

Exemplos:
| Empresa   | Rota  |
| Matriz BH | 00360 |



@Cenario2
@Manual
@LocalAtividade
Esquema do Cenario: Exibir local da atividade 
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
Quando clicar na "localizacao" da <Atividade1>
Entao exibe local da <Atividade2>

Exemplos:
| Empresa   | Rota  | Atividade1         | Atividade2         |
| Matriz BH | 00360 | 1° TESTE ATIVIDADE | 1° TESTE ATIVIDADE |