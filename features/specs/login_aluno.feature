#language : pt
@login_aluno
#tag definindo cenario
Funcionalidade: Realizar login

Cenario: Realizar login com usuario aluno 
Dado que estou na pagina de login 
Quando preencher o campo usuario com usuario aluno
E preencher o campo senha com a senha do usuario aluno
E clicar no botão entrar
Entao login do usuario deve ser realizado com sucesso 