# language: pt


Funcionalidade: Listagem de veículos
Como usuário com o aplicativo de veículos instalado
Pedro deseja visualizar a listagem de veículos
Para poder visualizar os veículos de seu interesse

Contexto:
Dado que "Pedro" acessou o aplicativo de veículos

Cenário: Listagem de veículos
Então ele deverá ver uma listagem com todos os veículos disponiveis


Cenário: Scroll na tela
Quando ele fizer um scroll na tela
Então ele deverá ver mais ve'i'culos disponíveis na listagem

@exclusivo-android
Cenário: Acessar veículo
Quando ele acessar um ve;iculo de seu interesse
Então ele deve ser redirecionado para tela de detalhe do veiculo contendo informações sobre o veículo