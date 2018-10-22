#language: pt
@contexto_usuario_professor
Funcionalidade: Usuario Professor
#definicao do cenario ou passo que deve rodar antes de cada cenario descrito neste arquivo
#uma especie de pré-cenario 
Contexto: Usuario Professor
Dado que estou na pagina de login 
Quando preencher o campo usuario com usuario Professor
E preencher o campo senha com a senha do usuario Professor
E clicar no botão entrar
Entao login do usuario deve ser realizado com sucesso

@cadastro_evento_professor
Cenario: Validar cadastro de um novo evento
Dado  que selecionei o cadastro de um novo Evento
Quando preencher o campo Nome do Evento
E preencher o campo Data Início do evento
E preencher o campo Data Fim do evento
E fazer upload da imagem do evento 
E peencher a Data de Início das Incrições 
E preencher a Data Fim das Incrições 
E selecionar um Responsável pela Assinatura do comprovante de participação
E preencher a  Data da Disponibilização do comprovante de participação
E preencher a Descrição da Assinatura do comprovante de participação
Quando clicar em Gravar
Entao o Evento deverá ser cadastrado com sucesso 
