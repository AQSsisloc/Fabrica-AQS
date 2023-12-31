#language: pt
#ChecklistDevolucao
#ServicesMobile


Funcionalidade: Cadastrar um checklist de devolução para um patrimônio
  Como um usuário do Services Mobile 
  Eu quero executar um checklist de uma devolução
  Para concluir a conferência esporádica do equipamento


Dado esteja logado no Services Mobile


@Cenario1
@Automatizar
@ChecklistDevolucao
Esquema do Cenario: Executar um checklist de devolução para o patrimônio
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Devolução"
E inserir <Buscar>
E clicar "Avançar"
E clicar em "Executar"
E clicar em "Confirmar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Buscar | MensagemDeSucesso   |
| MATRIZ  | 332    | Processo concluído! |



@Cenario2
@Manual
@ChecklistDevolucao
Esquema do Cenario: Executar um checklist de devolução para o patrimônio com campo obrigatório em branco
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Devolução"
E inserir <Buscar>
E clicar "Avançar"
E clicar em "Executar"
E clicar em "Confirmar"
Entao apresenta a <MensagemDeRetorno>

Exemplos:
| Empresa | Patrimonio | MensagemDeSucesso                |
| MATRIZ  | GA550.03   | Campo "Horímetro" é obrigatório! |



@Cenario3
@Manual
@ChecklistDevolucao
Esquema do Cenario: Executar um checklist de devolução para o patrimônio no modo offline
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Devolução"
E inserir <Buscar>
E clicar "Avançar"
E clicar em "Executar"
E clicar em "Confirmar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Patrimonio | MensagemDeSucesso   |
| MATRIZ  | 3193       | Processo concluído! |



@Cenario4
@Manual
@ChecklistDevolucao
Esquema do Cenario: Executar um checklist de devolução e vincular checklist já criado
E que esteja logado com usuário funcionário
E selecionar <Empresa>
Quando selecionar <Modo>
E selecionar "CheckList"
E selecionar "Devolução"
E inserir <Buscar>
E clicar "Avançar"
E clicar em "Raio"
E clicar em "Vincular Checklist"
E selecionar <Checklist>
E clicar em "Vincular Checklists"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Modo    | Buscar | Checklist | MensagemDeSucesso                  |
| MATRIZ  | Offline | 3193   | PAT 01891 | Checklists vinculados com sucesso! |



@Cenario5
@Manual
@ChecklistDevolucao
Esquema do Cenario: Executar um checklist de devolução e desvincular checklist
E que esteja logado com usuário funcionário
E selecionar <Empresa>
Quando selecionar <Modo>
E selecionar "CheckList"
E selecionar "Devolução"
E inserir <Buscar>
E clicar "Avançar"
E clicar em "Raio"
E clicar em "Checklists Vinculados"
E selecionar <Checklist>
E clicar em "Desvincular Checklists"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Modo    | Buscar | Checklist | MensagemDeSucesso                     |
| MATRIZ  | Offline | 3193   | PAT 01891 | Checklists desvinculados com sucesso! |



@Cenario6
@Automatizar
@ChecklistDevolucao
Esquema do Cenario: Executar um checklist de devolução e me tornar responsável
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Devolução"
E inserir <Buscar>
E clicar "Avançar"
E clicar em "Raio"
E clicar em "Me tornar responsável"
E clicar em "Confirmar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Buscar | MensagemDeSucesso   |
| MATRIZ  | 3193   | Processo concluído! |



@Cenario7
@Manual
@ChecklistDevolucao
Esquema do Cenario: Executar um checklist de devolução e enviar um email de alerta de não conformidade
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Devolução"
E inserir <Buscar>
E clicar "Avançar"
E preencher <NivelOleo>
E clicar em "Executar"
Entao grava os dados
E envia e-mail para os emails cadastrados

Exemplos:
| Empresa | Buscar | NivelOleo | MensagemDeSucesso   |
| MATRIZ  | 202    | Baixo     | Processo concluído! |



@Cenario8
@Automatizar
@ChecklistDevolucao
Esquema do Cenario: Excluir um checklist de devolução de um patrimônio
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Devolução"
E inserir <Buscar>
E clicar "Avançar"
E clicar em "Raio"
E clicar em "Excluir"
E clicar em "Excluir"
Entao exclui os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Buscar | MensagemDeSucesso   |
| MATRIZ  | 3193   | Processo concluído! |



@Cenario9
@Automatizar
@ChecklistDevolucao
Esquema do Cenario: Excluir um checklist de devolução para um patrimônio sem responsável
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Devolução"
E inserir <Buscar>
E clicar "Avançar"
E clicar em "Raio"
E clicar em "Excluir"
E clicar em "Excluir"
Entao apresenta a <MensagemDeRetorno>
E não exclui os dados

Exemplos:
| Empresa | Buscar | MensagemDeRetorno                                                                         |
| MATRIZ  | 8062   | Apenas o usuário definido como responsável por esse registro pode realizar esta operação! |



@Cenario10
@Manual
@ChecklistDevolucao
Esquema do Cenario: Visualizar fila de sicronização de um checklist de devolução
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Devolução"
E inserir <Buscar>
E clicar "Avançar"
E clicar em "Raio"
E clicar em "Ver Fila de Sicronização"
Entao apresenta os itens para sicronização

Exemplos:
| Empresa | Buscar |
| MATRIZ  | 3193   |



@Cenario11
@Manual
@ChecklistDevolucao
Esquema do Cenario: Pesquisar checklists de devolução atuais
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Devolução"
E selecionar aba "Atuais"
E clicar em "Lupa"
Entao apresenta os checklists atuais

Exemplos:
| Empresa |
| MATRIZ  |



@Cenario12
@Manual
@ChecklistDevolucao
Esquema do Cenario: Pesquisar checklists de devolução atrasados
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Devolução"
E selecionar aba "Atrasados"
E clicar em "Lupa"
Entao apresenta os checklists atrasados

Exemplos:
| Empresa |
| MATRIZ  |



@Cenario13
@Manual
@ChecklistDevolucao
Esquema do Cenario: Pesquisar checklists de devolução futuros
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Devolução"
E selecionar aba "Futuros"
E clicar em "Lupa"
Entao apresenta os checklists futuros

Exemplos:
| Empresa |
| MATRIZ  |



@Cenario14
@Automatizar
@ChecklistDevolucao
Esquema do Cenario: Pesquisar um checklist de devolução já cadastrado
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Devolução"
E inserir <Buscar>
E clicar em "Lupa"
Entao apresenta a checklist pesquisado

Exemplos:
| Empresa | Buscar |
| MATRIZ  | 3193   |



@Cenario15
@Automatizar
@ChecklistDevolucao
Esquema do Cenario: Filtrar um checklist de devolução por status
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Devolução"
E clicar em "Filtro"
E selecionar o <Status>
E inserir <Patrimonio>
E inserir <Formulario>
E inserir <DataExecucao>
E inserir <DataConclusao>
E clicar em "Filtrar"
Entao apresenta a checklist filtrado

Exemplos:
| Empresa | Status     | Patrimonio | Formulario | DataExecucao | DataConclusao |
| MATRIZ  | A Executar |            |            |              |               |
| MATRIZ  | A conferir |            |            | 14/06/2023   |               |
| MATRIZ  | Concluido  | 184        |            |              | 09/11/2022    |



@Cenario16
@Automatizar
@ChecklistDevolucao
Esquema do Cenario: Estornar execução de um checklist de devolução
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Devolução"
E inserir <Buscar>
E clicar "Avançar"
E clicar em "Estornar Execução"
E clicar em "Confirmar"
Entao estorna a execução
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Buscar | MensagemDeSucesso   |
| MATRIZ  | 3193   | Processo concluído! |



@Cenario17
@Automatizar
@ChecklistDevolucao
Esquema do Cenario: Concluir um checklist de devolução
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Devolução"
E inserir <Buscar>
E clicar "Avançar"
E clicar em "Concluir"
E clicar em "Confirmar"
Entao estorna a execução
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Buscar | MensagemDeSucesso   |
| MATRIZ  | 3193   | Processo concluído! |



@Cenario18
@Manual
@ChecklistDevolucao
Esquema do Cenario: Consultar um checklist de devolução
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Devolução"
E clicar em <Opcao>
E clicar em "Lupa"
Entao apresenta os dados consultados

Exemplos:
| Empresa    | Opção     |
| MATRIZ     | Atrasados |
| BHLOCADORA | Atuais    |
| IPATINGA   | Futuros   |



@Cenario19
@Manual
@ChecklistDevolucao
Esquema do Cenario: Filtrar um checklist de devolução
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Devolução"
E clicar em "Filtro"
E selecionar <Status>
E selecionar <Opcoes>
E inserir <Patrimonio>
E inserir <Formulario>
E inserir <DataDeExecucao>
E inserir <DataDeConclusao>
E clicar em "Filtrar"
Entao apresenta os dados filtrados

Exemplos:
| Empresa    | Status     | Opcoes | Patrimonio | Formulario            | DataDeExecucao | DataDeConclusao |
| MATRIZ     | A Executar | Sim    | GA550.03   |                       |                |                 |
| BHLOCADORA | A Conferir |        |            | Checklist OPERACIONAL | 26/06/2023     |                 |
| IPATINGA   | Concluído  | Não    |            |                       |                | 26/06/2023      |


