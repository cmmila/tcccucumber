#language: pt 

@contexto_usuario_aluno
Funcionalidade: Usuario Aluno
#definicao do cenario ou passo que deve rodar antes de cada cenario descrito neste arquivo
#uma especie de pré-cenario 
Contexto: Usuario aluno
Dado que estou na pagina de login 
Quando preencher o campo usuario com usuario aluno
E preencher o campo senha com a senha do usuario aluno
E clicar no botão entrar
Entao login do usuario deve ser realizado com sucesso

@acesso_sistema_aluno
Cenario: Validar acesso ao Sistema de Eventos com usuario Aluno
Quando clicar no icone do sistema de eventos
Entao devo ser redirecionado para pagina do sistema 

@eventos_ativos
Cenario: Validar exibição de eventos ativos com usuario aluno
Dado que cliquei no icone do Sys Eve
Quando for direcionado para a pagina do sistema de eventos - Sys Eve
Então devo visualizar os eventos ativos 

@download_certificado_aluno
Cenario: Validar Download do certificado de um evento de um usuário Aluno
Dado que acessei o Sistema de Incrições em Eventos
Quando acessar o Menu principal selecionando a opção Meus Certificados
E for redirecionado para pagina dos certificados disponíveis
E clicar em Gerar Certificado
Entao download do certificado escolhido deverá ser realizado 







