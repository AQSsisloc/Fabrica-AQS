#language: pt
#RotaDetalhes
#ServicesMobile


Funcionalidade: Exibir informações adicionais da atividade
  Como um usuário do Services Mobile 
  Eu quero visualizar informações adicionais da atividade 
  Para usar informações conforme as necessidades da atividade


Dado esteja logado no Services Mobile 


@Cenario1
@Manual
@ContatosEmailRota
Esquema do Cenario: Enviar email para o contato de uma atividade
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
E clicar em "Contatos"
Quando clicar no <Email1>  
Entao deve ser direcionado para o email 
E conter campo destinatário preenchido com <Email2>

Exemplos:
| Empresa   | Rota  | Atividade          | Email1                     | Email2                     |
| Matriz BH | 00360 | 1° Teste Atividade | samuel.silva@sisloc.com.br | samuel.silva@sisloc.com.br |



@Cenario2
@Manual
@ContatosTelefoneRota
Esquema do Cenario: Direcionar para o discador com contato preenchido
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
E clicar em "Contatos"
Quando clicar no <Numero1>  
Entao deve ser direcionado para o discador  
E conter campo numero preenchido com <Numero2>

Exemplos:
| Empresa   | Rota  | Atividade    | Numero1     | Numero2     |
| Matriz BH | 00358 | 1° Devolucao | 31988880909 | 31988880909 |



@Cenario3
@Manual
@DetalhesRota
Esquema do Cenario: Visualizar detalhes da atividade
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade1>
Quando clicar em "Detalhes"
Entao deve exibir detalhes inseridos na criação da <Atividade2>

Exemplos:
| Empresa   | Rota  | Atividade1         | Atividade2         |
| Matriz BH | 00361 | 1° TESTE ATIVIDADE | 1° TESTE ATIVIDADE |



@Cenario4
@Manual
@ProdutosRota
Esquema do Cenario: Visualizar produtos da atividade
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade1>
E tenha produtos vinculados na atividade
Quando clicar em "Produtos"
Entao deve exibir <Produto> da <Atividade2>

Exemplos:
| Empresa   | Rota  | Atividade   | Atividade2  | Produto                    |
| Matriz BH | 00358 | 1°devolução | 1°devolução | 19803016 - Perfurador Solo |



@Cenario5
@Manual
@SemProdutosRota
Esquema do Cenario: Sem produtos da atividade
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
E não tenha produtos vinculados na atividade
Quando clicar em "Produtos"
Entao deve exibir bloco em branco com mensagem "Nenhum resultado para os parâmetros pesquisados"

Exemplos:
| Empresa   | Rota  | Atividade        |
| Matriz BH | 00377 | 1°Nova Atividade |



@Cenario6
@Manual
@ObservaçãoRota
Esquema do Cenario: Visualizar observação na atividade
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade1>
E tenha observação vinculada na <Atividade1>
Quando clicar em "Observação"
Entao deve exibir detalhes inseridos na criação da <Atividade2>

Exemplos:
| Empresa   | Rota  | Atividade1         | Atividade2         |
| Matriz BH | 00361 | 1° TESTE ATIVIDADE | 1° TESTE ATIVIDADE |



@Cenario7
@Manual
@SemObservaçãoRota
Esquema do Cenario: Sem observação na atividade
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
Quando clicar na <Atividade1>
E não ter observação na <Atividade1> 
Entao não deve exibir bloco "Observação" na <Atividade2> 

Exemplos:
| Empresa   | Rota  | Atividade1       | Atividade>       | Atividade2>      |
| Matriz BH | 00379 | 1°Nova Atividade | 1°Nova Auticidde | 1°Nova Auticidde |



@Cenario08
@Manual
@AcaminhoRota
Esquema do Cenario: Iniciar atividade pendente deve disparar mensagem de Motorista a caminho configurada
E esteja com Modelo mensagem WhatsApp motorista está a caminho configurada no Services Web
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
Quando clicar em "Ir Agora"
Entao deve ser disparado mensagem para cliente 
E bloco "Motorista a caminho" nas notificações deve gravar "Disparado"

Exemplos:
| Empresa   | Rota  | Atividade |
| Matriz BH | 00358 | Devolução |



@Cenario9
@Manual
@CheckInRota
Esquema do Cenario: Ao fazer chek in deve disparar mensagem de Motorista chegou configurada
E esteja com Modelo mensagem WhatsApp motorista chegou configurada no Services WEB
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
Quando clicar em "Check In"
Entao deve ser disparado mensagem para cliente 
E bloco "Motorista chegou" nas notificações deve gravar "Disparado"

Exemplos:
| Empresa   | Rota  | Atividade |
| Matriz BH | 00358 | Devolução |



@Cenario10
@Manual
@CheckOutRota
Esquema do Cenario: Ao fazer chek out deve disparar mensagem de Atividade concluída configurada
E esteja com Modelo mensagem WhatsApp atividade concluída configurada no Services WEB
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
Quando clicar em "Check Out"
Entao deve ser disparado mensagem para cliente 
E bloco "Atividade concluída" nas notificações deve gravar "Disparado"

Exemplos:
| Empresa   | Rota  | Atividade |
| Matriz BH | 00358 | Devolução |



@Cenario11
@Manual
@SemNotificacao
Esquema do Cenario: Quando não configurado mensagens WhatsApp não deve exibir seção "Notificações" 
E não esteja com "Notificar os clientes sobre a rota por WhatsApp" configurada no Services WEB
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
Quando clicar na <Atividade1>
Entao não deve exibir seção "Notificações" na <Atividade2> 

Exemplos:
| Empresa   | Rota  | Atividade         | Atividade2        |
| Matriz BH | 00378 | 1°TESTE ATIVIDADE | 1°TESTE ATIVIDADE |
