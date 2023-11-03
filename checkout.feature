            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a tela de cadastro da Ebac Shop

            Cenário: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
            Quando eu digitar no campo de e-mail "rafael81@@ebac.com.br" 
            Então deve exibir uma mensagem de erro "formato de email inválido"

            Cenário: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta. 
            Quando eu deixar de preencher algum campo 
            Então deve exibir uma mensagem de erro "cadastrar todos os campos"

            Esquema do Cenário: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            Quando eu preencher todos os <dados obrigatorios> 
            E <marcados com asteriscos>
            Então deve mostrar uma <mensagem> de sucesso

            Exemplos:
            | dados obrigatorios     | dados obrigatorios2| marcados com asteriscos| marcados com asteriscos2|mensagem
            | "rafael81@ebac.com.br" | "cardoso"          | "email"                |"sobrenome"              |"Olá Rafael Cardoso"
            | "maria43@ebac.com.br"  | "silva"            | "email"                |"sobrenome"              |"Olá Maria Silva"
            | "andre18@ebac.com.br"  | "oliveira"         | "email"                |"sobrenome"              |"Olá Andre Oliveira"
