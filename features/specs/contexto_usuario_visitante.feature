#language: pt 
@contexto_usuario_visitante

Funcionalidade: Usuario visitante
#definicao do cenario ou passo que deve rodar antes de cada cenario descrito neste arquivo
#uma especie de pré-cenario 
Contexto: Usuario visitante
Dado que estou na pagina de login 
Quando preencher o campo usuario com usuario visitante
E preencher o campo senha com a senha do usuario visitante
E clicar no botão entrar
Entao login do usuario deve ser realizado com sucesso 

@inscricao_evento_visitante
Cenario: Realizar incrição em um evento com usuario Visitante
Dado que escolhi um determinado evento
Quando for redirecionado para a página de incrições abertas
E escolher uma atividade para me cadastrar 
E realizar inscrição nesta atividade
Entao meu codigo de participante no evento deve ser exibido




