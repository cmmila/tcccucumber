#language:pt
@contexto_usuario_admin
Funcionalidade: Usuario Administrador (ADMIN)
#definicao do cenario ou passo que deve rodar antes de cada cenario descrito neste arquivo
#uma especie de pré-cenario 
Contexto: Usuario Admin
Dado que estou na pagina de login
Quando preencher o campo usuario com usuario Admin
E preencher o campo senha com a senha do usuario Admin
E clicar no botão entrar
Entao login do usuario deve ser realizado com sucesso 

@validar_inscricao_admin
Cenario: Validar as incrições do usuario 
Dado que acessei o Sistema de Incrições em Eventos 
E selecionei um evento 
Quando acessar o menu principal 
E clicar em Minhas Incrições 
Entao devo visualizar as incrições que realizei no evento


