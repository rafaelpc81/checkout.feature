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
            Quando preencher os <dados obrigatorios> como nome de usuário, sobrenome, email  
            E <marcados com asteriscos>
            Então deve mostrar uma <mensagem> de sucesso

            Exemplos:
            | nome de usuário   | sobrenome       | e-mail                    | mensagem
            | "rafael81"        | "cardoso"       | "rafael81@ebac.com.       |"Olá Rafael Cardoso"
            | "maria43"         | "silva"         | "maria43@ebac.com.br"     |"Olá Maria Silva"
            | "andre18"         | "oliveira"      | "andre18@ebac.com.br"     |"Olá Andre Oliveira"
