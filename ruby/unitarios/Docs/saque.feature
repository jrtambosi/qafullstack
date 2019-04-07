
Estoria:Saque caixa eletronico

Sendo um cliente que  e correntista
posso sacar o dinheiro
Para que eu consiga comprar em lugares que nao aceitam debito ou credito

Cenario: Saque em conta correte
    Dado que eutenho R$ 1000 em minha conta correte
    Quando faço um saque de R$200
    Entao  meu saldo final deve ser R$800

Cenario: Deu Ruim nao tenho saldo
    Dado que eu tenho R$ 0 em minha conta corrente
    Quando faço um saque de R$ 100
    Entao vejo a mensagem 'saldo insuficiente para saque'
    E meu sado final deve ser R$ 0

Cenario: Tenho saldo mas não o suficiente
    Dado que eu tenho R$ 500 em minha conta corrente
    Quando faço o saque de R$501
    Entao vejo a mensagem 'Saldo insuficiente para saque'
    E meu saldo final deve ser R$ 500

Cenario: Limite por saque

    Dado que eu tenho R$ 1000 em minha conta corrente
    Quando faço o saque de R$ 701
    Entao Vejo mensagem 'Limite maximo por saque e de R$ 700'
    E meu saldo finl deve ser R$ 1000

