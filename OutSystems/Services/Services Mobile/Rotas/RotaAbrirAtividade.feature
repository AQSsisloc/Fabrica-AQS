#language: pt
#RotaAbrirAtividade
#ServicesMobile


Funcionalidade: Gerenciar Ordem de Manutenção pela atividade da rota
  Como um usuário do Services Mobile 
  Eu quero gerenciar ordens de Manutenção da atividade
  Para concluir a atividade da rota


Dado esteja logado no Services Mobile 


@Cenario1
@Automatizar
@RotaAbrirOM
Esquema do Cenario: Abrir uma ordem de manutenção na atividade da rota
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
E possuir ordem de manutenção
Quando clicar "Abrir Atividade"
Entao abre tela de ordem de manutenção 
E apresenta produto da manutenção

Exemplos: 
| Empresa   | Rota  | Atividade    |
| Matriz BH | 00337 | 2°Manutenção |



@Cenario2
@Automatizar
@RotaAbrirDevolucao
Esquema do Cenario: Abrir devolução na atividade da rota
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
E possuir devolução
Quando clicar "Abrir Atividade"
Entao abre tela de Devolução
E apresenta produto da devolução

Exemplos: 
| Empresa   | Rota  | Atividade   |
| Matriz BH | 00322 | 2°Devolução |



@Cenario3
@Automatizar
@RotaAbrirRemessa
Esquema do Cenario: Abrir remessa na atividade da rota
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
E possuir remessa
Quando clicar "Abrir Atividade"
Entao abre tela de Remessa
E apresenta produto da remessa

Exemplos: 
| Empresa   | Rota  | Atividade |
| Matriz BH | 00322 | 3°Remessa |



@Cenario4
@Automatizar
@RotaSemProduto
Esquema do Cenario: Não exibir função de "Abrir atividades" para produtos
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
Quando clicar na <Atividade>
Entao não exibir botão "Abrir Atividade"

Exemplos: 
| Empresa   | Rota  | Atividade        |
| Matriz BH | 00379 | 1°Nova Atividade |
