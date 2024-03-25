#language:pt

Funcionalidade: Uso de Cupons no Checkout

    Como um usuário do site da Starbugs, eu quero poder aplicar cupons de desconto na página de checkout
    Para que eu possa obter reduções no preço de produtos, aumentando a satisfação com a minha experiência de compra

Contexto:
Dado que iniciei a compra do item:
    | name     | Café com Leite |
    | price    | R$ 19,99       |
    | delivery | R$ 10,00       |
    | total    | R$ 29,99       |

Cenário: Aplicar Desconto de 20%

Quando aplico o seguinte cupom: "MEUCAFE"
Então o valor final da compra deve ser atualizado para "R$ 25,99"

@ddt
Esquema do Cenário: Tentativa de aplicar o desconto

Quando aplico o seguinte cupom: "<cupom>"
Então devo ver a notificação: "<saída>"
    E o valor final deve permanecer o mesmo

Exemplos:
| cupom      | saída           |
| PROMO20    | Cupom expirado! |
| PROMOTESTE | Cupom inválido! |

# Cenário: Cupom Expirado

# Quando aplico o seguinte cupom: "PROMO20"
# Então devo ver a notificação: "Cupom expirado!"
#     E o valor final deve permanecer o mesmo

# Cenário: Cupom Inválido

# Quando aplico o seguinte cupom: "PROMOTESTE"
# Então devo ver a notificação: "Cupom inválido!"
#     E o valor final deve permanecer o mesmo
