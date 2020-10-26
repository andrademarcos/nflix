#language:pt

Funcionalidade: Remover filme
Para que eu possa manter o catálogo atualizado
Sendo um gestor de catálogo que encontrou um título cancelado/indesejado ou que não tem uma boa aceitação pelo público
Posso remover este item

Cenário: Excluir filme

Dado que "Dragon Ball Evolution" faz parte do catálogo
Quando eu solicito a exclusão
E eu confirmo a solicitação
Então este item deve ser removido do catálogo

Cenário: Desistir da exclusão

Dado que "10 coisas que eu odeio em você" faz parte do catálogo
Quando eu solicito a exclusão
Mas cancelo a solicitação
Então este item devem permanecer no catálogo