# language: pt

Funcionalidade: Listagem de veículos: Acessar listagem 
Como usuário com o aplicativo de veículos instalado
Pedro deseja visualizar a listagem de veículos
Para poder visualizar os veículos de seu interesse

Contexto:
Dado que Pedro acesse o aplicativo de veículos

@android
Cenário: Listagem de veículos
Então ele deverá ver uma listagem com todos os véiculos disponíveis

Cenário: Scroll na tela
Quando ele fizer um scroll na tela
Então ele deverá ver mais veículos disponíveis na listagem

Cenário: Acessar veículo
E ele ver a listagem de veículos
Quando ele acessar um ve;iculo de seu interesse
Então ele deve ser redirecionado para tela de detalhe do veiculo contendo informações sobre o veículo