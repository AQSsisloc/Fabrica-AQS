#language: pt
#Liberar compra
#Delphi


Funcionalidade: Liberar o item da solicitação de compras no qual será liberado para pedido de compra.
  Como liberar itens da solicitação de compras para o pedido de compras
  Eu quero liberar item da solicitação de compras sem a necessidade do mapa de cotação
  Para liberar o item para o pedido de compras sem a necessidade do mapa de cotação


Dado acessar o sistema Sisloc com usuário


@Cenario1
@Automatizar
@LiberarCompras
Cenario: Liberar solcitação de compra
E clicar em <LiberarCompras>
E selecionar "Itens"
Quando clicar em <Ok>
E liberar itens para o pedido de compras