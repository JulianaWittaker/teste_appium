# language: pt

Funcionalidade: Listagem de veículos: Busca
Como usuário com o aplicativo de veículos instalado
Rafael deseja realizar uma busca
Para poder visualizar os veículos de seu interesse

Contexto:
Dado que "Rafael" acesse o aplicativo de veículos


Cenário: Busca marcas
E ele digita no campo a marca de sua preferência
Quando aciona a opção buscar
Então ele deve ver os veículos pertinentes a busca feita

Cenário: Busca por modelo
E ele digita no campo o modelo de sua preferência
Quando aciona a opção buscar
Então ele deve ver os veículos pertinentes a busca feita

Cenário: Busca versão
E ele digita no campo o modelo de sua preferência
Quando aciona a opção buscar
Então ele deve ver os veículos pertinentes a busca feita

Cenário: Busca por Marca + modelo
E ele digita no campo a marca e modelo de sua preferência
Quando aciona a opção buscar
Então ele deve ver os veículos pertinentes a busca feita

Cenário: Busca por Marca + versão
E ele digita no campo a marca e versão de sua preferência
Quando aciona a opção buscar
Então ele deve ver os veículos pertinentes a busca feita

Cenário: Busca por modelo + versão
E ele digita no campo o modelo e versão de sua preferência
Quando aciona a opção buscar
Então ele deve ver os veículos pertinentes a busca feita